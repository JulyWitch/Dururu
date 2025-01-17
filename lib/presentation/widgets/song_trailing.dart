import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dururu/providers/audio.dart';

class SongTrailing extends ConsumerWidget {
  final String id;

  const SongTrailing({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCurrent = ref.watch(currentSongProvider.select((v) => v?.id == id));
    final isPlaying =
        ref.watch(isPlayingProvider.select((v) => isCurrent && v));

    if (isCurrent) {
      return SizedBox(
        height: 24,
        width: 30,
        child: AnimatedSquareBars(isPlaying: isPlaying),
      );
    }

    return const SizedBox.shrink();
  }
}

class AnimatedSquareBars extends StatefulWidget {
  final bool isPlaying;

  const AnimatedSquareBars({
    super.key,
    required this.isPlaying,
  });

  @override
  State<AnimatedSquareBars> createState() => _AnimatedSquareBarsState();
}

class _AnimatedSquareBarsState extends State<AnimatedSquareBars>
    with TickerProviderStateMixin {
  final List<AnimationController> _controllers = [];
  final List<Animation<double>> _animations = [];
  final Random _random = Random();

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < 3; i++) {
      final controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200 + _random.nextInt(300)),
      );

      final animation = Tween<double>(begin: 1, end: 4).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeInOut),
      );

      _controllers.add(controller);
      _animations.add(animation);
    }

    if (widget.isPlaying) {
      _startAllAnimations();
    }
  }

  @override
  void didUpdateWidget(AnimatedSquareBars oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isPlaying != oldWidget.isPlaying) {
      if (widget.isPlaying) {
        _startAllAnimations();
      } else {
        _stopAllAnimations();
      }
    }
  }

  void _startAllAnimations() {
    for (var i = 0; i < _controllers.length; i++) {
      _startAnimation(i);
    }
  }

  void _stopAllAnimations() {
    for (var controller in _controllers) {
      controller.stop();
    }
  }

  void _startAnimation(int index) {
    if (!widget.isPlaying) return;

    _controllers[index].forward().then((_) {
      if (!widget.isPlaying) return;
      _controllers[index].reverse().then((_) {
        if (!widget.isPlaying) return;
        Future.delayed(Duration(milliseconds: _random.nextInt(500)), () {
          if (mounted && widget.isPlaying) {
            _startAnimation(index);
          }
        });
      });
    });
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(3, (barIndex) {
        return AnimatedBuilder(
          animation: _animations[barIndex],
          builder: (context, child) {
            final height = _animations[barIndex].value;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(4, (squareIndex) {
                  final shouldShow = squareIndex < height.floor();
                  return Container(
                    margin: const EdgeInsets.all(1),
                    width: 4,
                    height: 4,
                    decoration: BoxDecoration(
                      color: shouldShow
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context)
                              .colorScheme
                              .primary
                              .withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(1),
                    ),
                  );
                }).reversed.toList(),
              ),
            );
          },
        );
      }),
    );
  }
}
