import 'package:cached_network_image/cached_network_image.dart';
import 'package:dururu/providers/audio.dart';
import 'package:dururu/providers/subsonic_apis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FullSizePlayer extends ConsumerStatefulWidget {
  const FullSizePlayer({super.key, required this.onExit});

  final VoidCallback onExit;

  @override
  ConsumerState<FullSizePlayer> createState() => _PlayerState();
}

class _PlayerState extends ConsumerState<FullSizePlayer> {
  bool isShowingLyrics = false;

  @override
  Widget build(BuildContext context) {
    final currentSong = ref.watch(currentSongProvider);
    final queue = ref.watch(queueProvider);

    final coverAndTitle = Column(
      children: [
        Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.5),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: ref.watch(
                  getCoverArtProvider(
                    GetCoverArtRequest(id: currentSong?.coverArt),
                  ),
                ),
                cacheKey: GetCoverArtRequest(id: currentSong?.coverArt)
                    .hashCode
                    .toString(),
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 180,
          child: Column(
            children: [
              // Song Info
              Text(
                currentSong?.title ?? "Unknown Title",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Text(
                currentSong?.artist ?? "Unknown Artist",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white70,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                currentSong?.album ?? "Unknown Album",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white60,
                    ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );

    return ColoredBox(
      color: Theme.of(context).colorScheme.surface,
      child: Stack(
        children: [
          // Background blur
          Positioned.fill(
            child: CachedNetworkImage(
              imageUrl: ref.watch(
                getCoverArtProvider(
                  GetCoverArtRequest(id: currentSong?.coverArt),
                ),
              ),
              cacheKey: GetCoverArtRequest(id: currentSong?.coverArt)
                  .hashCode
                  .toString(),
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withValues(alpha: 0.7),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(height: 64),
                SizedBox(
                  height: 404,
                  child: Stack(
                    children: [
                      AnimatedOpacity(
                        opacity: isShowingLyrics ? 1 : 0,
                        duration: const Duration(milliseconds: 200),
                        child: const LyricsText(),
                      ),
                      AnimatedOpacity(
                        opacity: isShowingLyrics ? 0 : 1,
                        duration: const Duration(milliseconds: 200),
                        child: coverAndTitle,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 64),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 20,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.skip_previous,
                          ),
                          onPressed: currentSong == null ||
                                  queue.indexOf(currentSong) == 0
                              ? null
                              : () {
                                  ref
                                      .read(audioProvider.notifier)
                                      .onTapPrevious();
                                },
                        ),
                        CircleAvatar(
                          radius: 32,
                          backgroundColor: Theme.of(context).primaryColor,
                          child: IconButton(
                            icon: Icon(
                              ref.watch(isPlayingProvider)
                                  ? Icons.pause
                                  : Icons.play_arrow,
                              color: Colors.white,
                              size: 32,
                            ),
                            onPressed: () {
                              ref.read(audioProvider.notifier).onTapPlayPause();
                            },
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.skip_next),
                          onPressed: currentSong == null ||
                                  queue.indexOf(currentSong) == queue.length - 1
                              ? null
                              : () {
                                  ref.read(audioProvider.notifier).onTapNext();
                                },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    PositionSlider(),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            if (GoRouter.of(context).state?.path != '/queue') {
                              GoRouter.of(context).push('/queue');
                            }
                            widget.onExit();
                          },
                          child: const Text(
                            "Queue",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 16),
                        TextButton(
                          onPressed: () {
                            isShowingLyrics = !isShowingLyrics;
                            setState(() {});
                          },
                          child: Text(
                            isShowingLyrics ? "Cover" : "Lyrics",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 64),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PositionSlider extends ConsumerStatefulWidget {
  const PositionSlider({
    super.key,
  });

  @override
  ConsumerState<PositionSlider> createState() => _PositionSliderState();
}

class _PositionSliderState extends ConsumerState<PositionSlider> {
  double? value;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value ??
          ref.watch(positionProvider).inMicroseconds.toDouble().clamp(
                0,
                ref.watch(durationProvider).inMicroseconds.toDouble(),
              ),
      min: 0,
      max: ref.watch(durationProvider).inMicroseconds.toDouble(),
      onChanged: (v) {
        value = v;
        setState(() {});
      },
      onChangeEnd: (v) {
        value = null;
        ref
            .read(audioProvider.notifier)
            .seek(Duration(microseconds: v.toInt()));
        setState(() {});
      },
      activeColor: Colors.white,
      inactiveColor: Colors.white24,
    );
  }
}

class LyricsText extends ConsumerWidget {
  const LyricsText({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentSong = ref.watch(currentSongProvider);
    final lyricsAsync = ref.watch(
      getLyricsProvider(
        GetLyricsRequest(
          title: currentSong?.title,
          artist: currentSong?.artist,
        ),
      ),
    );

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: lyricsAsync.when(
              data: (response) {
                final lyrics = response.lyrics?.value;
                if (lyrics == null || lyrics.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 32),
                        Icon(
                          Icons.lyrics_outlined,
                          size: 48,
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withValues(alpha: 0.5),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'No lyrics available',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.5),
                                  ),
                        ),
                      ],
                    ),
                  );
                }

                return SelectableText(
                  lyrics,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        height: 1.8,
                        letterSpacing: 0.4,
                      ),
                );
              },
              error: (error, stackTrace) => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 32),
                    Icon(
                      Icons.error_outline,
                      size: 48,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Failed to load lyrics',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.error,
                          ),
                    ),
                  ],
                ),
              ),
              loading: () => const Center(
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
