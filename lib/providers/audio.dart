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

@Riverpod(keepAlive: true)
class Audio extends _$Audio {
  late final AudioPlayer _player;
  ConcatenatingAudioSource? playlist;

  @override
  AudioState build() {
    _player = AudioPlayer();
    _initializePlayer();
    ref.onDispose(() => _player.dispose());
    return const AudioState();
  }

  void _initializePlayer() {
    // Listen to player state changes
    _player.playerStateStream.listen((playerState) {
      state = state.copyWith(
        isPlaying: playerState.playing,
        isLoading: playerState.processingState == ProcessingState.loading ||
            playerState.processingState == ProcessingState.buffering,
      );
    });

    // Listen to position changes
    _player.positionStream.listen((position) {
      state = state.copyWith(position: position);
    });

    // Listen to duration changes
    _player.durationStream.listen((duration) {
      if (duration != null) {
        state = state.copyWith(duration: duration);
      }
    });

    // Listen to sequence state changes
    _player.sequenceStateStream.listen((sequenceState) {
      if (sequenceState?.currentSource?.tag != null) {
        state = state.copyWith(
          currentSong: sequenceState?.currentSource?.tag as Child,
        );
      }
    });
  }

  List<Child> getQueue() => state.queue;
  int? get currentIndex => _player.currentIndex;

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
    await _player.seek(null, index: index);
  }

  Future<void> playQueue(List<Child> songs, {int initialIndex = 0}) async {
    if (listEquals(songs, state.queue)) {
      await playAt(initialIndex);
      return;
    }

    try {
      final audioSources = songs
          .map(
            (song) => AudioSource.uri(
              Uri.parse(
                ref.read(
                  streamProvider(
                    StreamRequest(id: song.id),
                  ),
                ),
              ),
              tag: song,
            ),
          )
          .toList();
      state = state.copyWith(isLoading: true, queue: songs);

      playlist = ConcatenatingAudioSource(
        children: audioSources,
        useLazyPreparation: true,
      );
      await _player.setAudioSource(
        playlist!,
        initialIndex: initialIndex,
      );

      await _player.play();
    } catch (e) {
      // Handle errors appropriately
      debugPrint('Error playing queue: $e');
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  // Playback controls
  Future<void> play() async {
    await _player.play();
  }

  Future<void> pause() async {
    await _player.pause();
  }

  Future<void> onTapPlayPause() async {
    if (state.isPlaying) {
      await pause();
    } else {
      await play();
    }
  }

  Future<void> onTapNext() async {
    if (_player.hasNext) {
      await _player.seekToNext();
    }
  }

  Future<void> onTapPrevious() async {
    if (_player.hasPrevious) {
      await _player.seekToPrevious();
    }
  }

  // Position control
  Future<void> seek(Duration position) async {
    await _player.seek(position);
  }

  // Volume control
  Future<void> setVolume(double volume) async {
    await _player.setVolume(volume);
    state = state.copyWith(volume: volume);
  }

  // Shuffle control
  Future<void> toggleShuffle() async {
    final newShuffleMode = !state.isShuffle;
    await _player.setShuffleModeEnabled(newShuffleMode);
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

    await _player.setLoopMode(nextMode);
    state = state.copyWith(loopMode: nextMode);
  }
}

// Convenience providers for commonly accessed values
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
