import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dururu/presentation/full_size_player.dart';
import 'package:dururu/presentation/widgets/loading_indicator.dart';
import 'package:dururu/presentation/widgets/wave.dart';
import 'package:dururu/providers/audio.dart';
import 'package:dururu/providers/subsonic_apis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PlayerBarShellLayout extends ConsumerStatefulWidget {
  final Widget child;

  const PlayerBarShellLayout({
    super.key,
    required this.child,
  });

  @override
  ConsumerState<PlayerBarShellLayout> createState() =>
      _PlayerBarShellLayoutState();
}

class _PlayerBarShellLayoutState extends ConsumerState<PlayerBarShellLayout>
    with SingleTickerProviderStateMixin {
  final DraggableScrollableController _dragController =
      DraggableScrollableController();
  late AnimationController _animationController;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    // Listen to drag controller changes
    _dragController.addListener(_onDragUpdate);
  }

  void _onDragUpdate() {
    final double dragValue = _dragController.size;
    _animationController.value =
        (dragValue - getPlayerBarSize()) / (1 - getPlayerBarSize());

    // Update expanded state for layout changes
    if (dragValue > 0.5 && !isExpanded) {
      setState(() => isExpanded = true);
    } else if (dragValue <= 0.5 && isExpanded) {
      setState(() => isExpanded = false);
    }
  }

  double getPlayerBarSize() => ((96 + 12) / MediaQuery.sizeOf(context).height);

  @override
  void dispose() {
    _dragController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackButtonListener(
      onBackButtonPressed: () async {
        if (isExpanded) {
          _dragController.animateTo(
            getPlayerBarSize(),
            duration: Durations.medium1,
            curve: Curves.easeIn,
          );
          return true;
        }
        return false;
      },
      child: Scaffold(
        body: Stack(
          children: [
            widget.child,
            NotificationListener<DraggableScrollableNotification>(
              onNotification: (notification) {
                return true;
              },
              child: DraggableScrollableSheet(
                controller: _dragController,
                initialChildSize: getPlayerBarSize(),
                minChildSize: getPlayerBarSize(),
                maxChildSize: 1.0,
                snap: true,
                builder: (context, scrollController) {
                  return SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        // Animated player content
                        AnimatedBuilder(
                          animation: _animationController,
                          builder: (context, child) {
                            return Stack(
                              children: [
                                Opacity(
                                  opacity: _animationController.value,
                                  child: _buildFullScreenPlayer(),
                                ),

                                // Mini player
                                Opacity(
                                  opacity: 1 -
                                      (_animationController.value * 4)
                                          .clamp(0, 1),
                                  child: SizedBox(
                                    height: 96 +
                                        _animationController.value
                                                .clamp(0, 0.4) *
                                            100,
                                    child:
                                        isExpanded ? null : _buildMiniPlayer(),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMiniPlayer() {
    return GestureDetector(
      onTap: () {
        _dragController.animateTo(
          1,
          duration: Durations.medium1,
          curve: Curves.easeIn,
        );
      },
      child: const WavePlayerBar(),
    );
  }

  Widget _buildFullScreenPlayer() {
    return FullSizePlayer(
      onExit: () {
        _dragController.animateTo(
          getPlayerBarSize(),
          duration: Durations.medium1,
          curve: Curves.easeIn,
        );
      },
    );
  }
}

class WavePlayerBar extends ConsumerStatefulWidget {
  const WavePlayerBar({super.key});

  @override
  ConsumerState<WavePlayerBar> createState() => _BottomPlayerState();
}

class _BottomPlayerState extends ConsumerState<WavePlayerBar> {
  get dd => 0.1;
  final carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final audio = ref.watch(audioProvider);

    ref.listen(currentSongProvider, (prev, next) async {
      final index = ref.read(audioProvider.notifier).currentIndex ?? -1;
      if (index > -1) {
        await carouselController.onReady;
        carouselController.animateToPage(
          index,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeIn,
        );
      }
    });

    if (audio.currentSong == null) {
      return const SizedBox();
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 8,
          top: 8,
          left: 65,
          right: 25,
          child: backgroundWaves(context, audio.isPlaying),
        ),
        Positioned(
          left: 25,
          right: 45,
          top: 0,
          bottom: 0,
          child: Row(
            children: [
              CircularPercentIndicator(
                radius: 45,
                lineWidth: 3.0,
                percent: (audio.position.inMicroseconds /
                        audio.duration.inMicroseconds)
                    .clamp(0, 1),
                fillColor: Colors.transparent,
                backgroundWidth: 8,
                backgroundColor: Theme.of(context).colorScheme.surfaceDim,
                center: Builder(
                  builder: (_) {
                    if (audio.currentSong == null) {
                      return const LoadingIndicator();
                    }
                    return CircleAvatar(
                      radius: 40,
                      backgroundImage: CachedNetworkImageProvider(
                        ref.watch(
                          getCoverArtProvider(
                            GetCoverArtRequest(id: audio.currentSong!.coverArt),
                          ),
                        ),
                        cacheKey: GetCoverArtRequest(
                          id: audio.currentSong!.coverArt,
                        ).hashCode.toString(),
                      ),
                    );
                  },
                ),
                progressColor: Colors.red,
              ),
              Expanded(
                child: CarouselSlider.builder(
                  itemCount: audio.queue.length,
                  options: CarouselOptions(
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                      initialPage: audio.queue.indexOf(audio.currentSong!),
                      enableInfiniteScroll: false,
                      onPageChanged: (i, reason) {
                        if (reason == CarouselPageChangedReason.manual) {
                          ref.read(audioProvider.notifier).playAt(i);
                        }
                      }),
                  carouselController: carouselController,
                  itemBuilder: (_, i, ri) {
                    final song = audio.queue[i];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 8,
                      children: [
                        Text(
                          song.title,
                          style: Theme.of(context).textTheme.labelMedium,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "${song.album == null ? '' : '${song.album} '}${song.genre == null ? '' : '• ${song.genre} '}",
                          style: Theme.of(context).textTheme.labelSmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () async {
                  await ref.read(audioProvider.notifier).onTapPlayPause();
                },
                child: Padding(
                  padding: const EdgeInsets.all(7.5),
                  child: audio.isPlaying
                      ? const Icon(CupertinoIcons.pause, size: 30)
                      : const Icon(CupertinoIcons.play_arrow, size: 30),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget backgroundWaves(BuildContext context, bool isPlaying) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[300]!, const Color.fromRGBO(20, 10, 70, 1)],
        ),
        border: Border.all(
          color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.2),
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: RotatedBox(
        quarterTurns: 1,
        child: WaveWidget(
          isPlaying: isPlaying,
          config: CustomConfig(
            gradients: [
              [Colors.blue, const Color(0xEE0B044B)],
              [Colors.blue.shade800, const Color(0x77211591)],
              [Colors.blue.shade200, const Color(0x667943DD)],
              [Colors.blue.shade100, const Color(0x553691DB)]
            ],
            durations: [35000, 19440, 10800, 6000],
            heightPercentages: [dd, dd + 0.03, dd + 0.5, dd + 0.1],
            gradientBegin: Alignment.bottomLeft,
            gradientEnd: Alignment.topRight,
          ),
          waveAmplitude: 0,
          size: const Size(
            double.infinity,
            double.infinity,
          ),
        ),
      ),
    );
  }
}

class PlayerBar extends ConsumerWidget {
  const PlayerBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentSong = ref.watch(currentSongProvider);
    final isLoading = ref.watch(isLoadingProvider);

    if (currentSong == null && !isLoading) {
      return const SizedBox.shrink();
    }

    return Container(
      height: 72 + MediaQuery.of(context).padding.bottom,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(90),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Column(
        children: [
          const _ProgressBar(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).padding.bottom,
              ),
              child: const Row(
                children: [
                  _AlbumArt(),
                  SizedBox(width: 12),
                  _SongInfo(),
                  _PlaybackControls(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProgressBar extends ConsumerWidget {
  const _ProgressBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final position = ref.watch(positionProvider);
    final duration = ref.watch(durationProvider);
    final isLoading = ref.watch(isLoadingProvider);

    return LinearProgressIndicator(
      value: isLoading
          ? null
          : duration.inSeconds > 0
              ? position.inSeconds / duration.inSeconds
              : 0,
      minHeight: 2,
      backgroundColor: Colors.grey.withValues(alpha: 0.9),
    );
  }
}

class _AlbumArt extends ConsumerWidget {
  const _AlbumArt();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentSong = ref.watch(currentSongProvider);

    if (currentSong?.coverArt == null) return const SizedBox.shrink();

    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.9),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CachedNetworkImage(
          imageUrl: ref.watch(getCoverArtProvider(
            GetCoverArtRequest(
              id: currentSong?.coverArt,
            ),
          )),
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(
            color: Colors.grey[300],
            child: const Center(
              child: SizedBox(
                width: 24,
                height: 24,
                child: LoadingIndicator(),
              ),
            ),
          ),
          errorWidget: (context, url, error) => Container(
            color: Colors.grey[300],
            child: const Icon(
              Icons.album,
              color: Colors.grey,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}

class _SongInfo extends ConsumerWidget {
  const _SongInfo();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentSong = ref.watch(currentSongProvider);
    final isLoading = ref.watch(isLoadingProvider);

    if (isLoading) {
      return const Expanded(
        child: Center(
          child: LoadingIndicator(),
        ),
      );
    }

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            currentSong?.title ?? '',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            currentSong?.artist ?? '',
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.color
                      ?.withValues(alpha: 0.3),
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class _PlaybackControls extends ConsumerWidget {
  const _PlaybackControls();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPlaying = ref.watch(isPlayingProvider);
    final queue = ref.watch(queueProvider);
    final currentSong = ref.watch(currentSongProvider);

    final audioNotifier = ref.read(audioProvider.notifier);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Previous button
        IconButton(
          icon: const Icon(CupertinoIcons.backward_fill),
          onPressed: queue.isEmpty || queue.first == currentSong
              ? null
              : audioNotifier.onTapPrevious,
          color: Theme.of(context).iconTheme.color,
        ),

        // Play/Pause button
        Container(
          width: 44,
          height: 44,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).primaryColor.withValues(alpha: 0.7),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: IconButton(
            icon: Icon(
              isPlaying ? CupertinoIcons.pause_fill : CupertinoIcons.play_fill,
              color: Colors.white,
            ),
            onPressed: audioNotifier.onTapPlayPause,
          ),
        ),

        // Next button
        IconButton(
          icon: const Icon(CupertinoIcons.forward_fill),
          onPressed: queue.isEmpty || queue.last == currentSong
              ? null
              : audioNotifier.onTapNext,
          color: Theme.of(context).iconTheme.color,
        ),
      ],
    );
  }
}
