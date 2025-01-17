import 'dart:async';

import 'package:audio_service/audio_service.dart' as audio_service;
import 'package:dururu/providers/subsonic_apis.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:dururu/models/subsonic.dart';

part 'audio.freezed.dart';
part 'audio.g.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState({
    Child? currentSong,
    @Default(false) bool isPlaying,
    @Default(false) bool isLoading,
    @Default([]) List<Child> queue,
    @Default(Duration.zero) Duration position,
    @Default(Duration.zero) Duration duration,
    @Default(1.0) double volume,
    @Default(false) bool isShuffle,
    @Default(LoopMode.off) LoopMode loopMode,
  }) = _AudioState;
}

@Riverpod()
class Audio extends _$Audio {
  AudioPlayer? _player;
  AudioPlayer get player => _player!;
  ConcatenatingAudioSource? playlist;
  List<StreamSubscription> subs = [];

  @override
  AudioState build() {
    _player = AudioPlayer();
    _initializePlayer();
    ref.onDispose(() {
      player.dispose();
      Future.wait(subs.map((s) => s.cancel()));
    });
    return const AudioState();
  }

  void _initializePlayer() {
    subs.add(player.playerStateStream.listen((playerState) {
      state = state.copyWith(
        isPlaying: playerState.playing,
        isLoading: playerState.processingState == ProcessingState.loading ||
            playerState.processingState == ProcessingState.buffering,
      );
      if (playerState.processingState == ProcessingState.completed) {
        player.pause();
      }
    }));

    subs.add(player.positionStream.listen((position) {
      state = state.copyWith(position: position);
    }));

    subs.add(player.durationStream.listen((duration) {
      if (duration != null) {
        state = state.copyWith(duration: duration);
      }
    }));

    subs.add(player.sequenceStateStream.listen((sequenceState) {
      if (sequenceState?.currentSource?.tag == null) return;
      final mediaItem =
          sequenceState?.currentSource?.tag as audio_service.MediaItem;
      final index = state.queue.indexWhere((s) => s.id == mediaItem.id);
      if (index == -1) return;
      state = state.copyWith(
        currentSong: state.queue[index],
      );
    }));
  }

  List<Child> getQueue() => state.queue;
  int? get currentIndex => player.currentIndex;

  Future<void> reorderQueue(int currentIndex, int newIndex) async {
    final backupQueue = state.queue.toList();
    final newQueue = state.queue.toList();
    newQueue.insert(
      newIndex,
      newQueue.removeAt(currentIndex),
    );
    state = state.copyWith(queue: newQueue);

    await playlist!.move(currentIndex, newIndex).catchError((_) {
      state = state.copyWith(queue: backupQueue);
    });
  }

  Future<void> playAt(int index) async {
    if (player.currentIndex != index) {
      final stopwatch = Stopwatch();
      stopwatch.start();
      await player.seek(null, index: index);
      stopwatch.stop();
      print('elapsed time is: ${stopwatch.elapsedMilliseconds} ms');
    }

    if (state.isPlaying) return;
    await player.play();
  }

  Future<void> playQueue(List<Child> songs, {int initialIndex = 0}) async {
    if (listEquals(songs, state.queue)) {
      await playAt(initialIndex);
      return;
    }

    try {
      final audioSources = songs
          .map((song) => AudioSource.uri(
                Uri.parse(
                  ref.read(
                    streamProvider(
                      StreamRequest(id: song.id),
                    ),
                  ),
                ),
                tag: audio_service.MediaItem(
                  id: song.id,
                  title: song.title,
                  album: song.album,
                  genre: song.genre,
                  artist: song.artist,
                  artUri: Uri.parse(
                    ref.read(
                      getCoverArtProvider(
                        GetCoverArtRequest(id: song.coverArt),
                      ),
                    ),
                  ),
                  duration: song.duration == null
                      ? null
                      : Duration(seconds: song.duration!),
                ),
              ))
          .toList();
      state = state.copyWith(isLoading: true, queue: songs);

      playlist = ConcatenatingAudioSource(
        children: audioSources,
        useLazyPreparation: true,
      );
      await player.setAudioSource(
        playlist!,
        initialIndex: initialIndex,
      );

      await player.play();
    } catch (e) {
      // Handle errors appropriately
      debugPrint('Error playing queue: $e');
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  // Playback controls
  Future<void> play() async {
    if (player.processingState == ProcessingState.completed) {
      await player.seek(Duration.zero);
    }
    await player.play();
  }

  Future<void> pause() async {
    await player.pause();
  }

  Future<void> onTapPlayPause() async {
    if (state.isPlaying) {
      await pause();
    } else {
      await play();
    }
  }

  Future<void> onTapNext() async {
    if (player.hasNext) {
      await player.seekToNext();
    }
  }

  Future<void> onTapPrevious() async {
    if (player.hasPrevious) {
      await player.seekToPrevious();
    }
  }

  // Position control
  Future<void> seek(Duration position) async {
    await player.seek(position);
  }

  // Volume control
  Future<void> setVolume(double volume) async {
    await player.setVolume(volume);
    state = state.copyWith(volume: volume);
  }

  // Shuffle control
  Future<void> toggleShuffle() async {
    final newShuffleMode = !state.isShuffle;
    await player.setShuffleModeEnabled(newShuffleMode);
    state = state.copyWith(isShuffle: newShuffleMode);
  }

  // Repeat mode
  Future<void> toggleLoopMode() async {
    final currentMode = state.loopMode;
    LoopMode nextMode;

    switch (currentMode) {
      case LoopMode.off:
        nextMode = LoopMode.all;
        break;
      case LoopMode.all:
        nextMode = LoopMode.one;
        break;
      case LoopMode.one:
        nextMode = LoopMode.off;
        break;
    }

    await player.setLoopMode(nextMode);
    state = state.copyWith(loopMode: nextMode);
  }
}

@riverpod
bool isPlaying(Ref ref) {
  return ref.watch(audioProvider.select((state) => state.isPlaying));
}

@riverpod
bool isLoading(Ref ref) {
  return ref.watch(audioProvider.select((state) => state.isLoading));
}

@riverpod
Child? currentSong(Ref ref) {
  return ref.watch(audioProvider.select((state) => state.currentSong));
}

@riverpod
List<Child> queue(Ref ref) {
  return ref.watch(audioProvider.select((state) => state.queue));
}

@riverpod
Duration position(Ref ref) {
  return ref.watch(audioProvider.select((state) => state.position));
}

@riverpod
Duration duration(Ref ref) {
  return ref.watch(audioProvider.select((state) => state.duration));
}
