import 'package:dururu/models/subsonic.dart';
import 'package:dururu/presentation/widgets/loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class GenreGrid extends ConsumerWidget {
  final List<Genre> genres;
  final bool showLoading;

  const GenreGrid({
    super.key,
    required this.genres,
    this.showLoading = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if (index >= genres.length) {
              return const Center(
                child: LoadingIndicator(),
              );
            }

            final genre = genres[index];
            return GestureDetector(
              onTap: () => GoRouter.of(context).push('/genres/${genre.value}'),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Theme.of(context)
                                .colorScheme
                                .surfaceTint
                                .withValues(alpha: 0.3),
                            Theme.of(context)
                                .colorScheme
                                .surfaceTint
                                .withValues(alpha: 0.05),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 12,
                    right: 16,
                    bottom: 8,
                    top: 12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 8,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Text(
                                genre.value,
                                style: Theme.of(context).textTheme.titleSmall,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            GenreIcon(
                              genre: genre.value,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              genre.albumCount.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.8),
                                  ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              CupertinoIcons.music_albums,
                              size: 14,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withValues(alpha: 0.8),
                            ),
                            Container(
                              height: 12,
                              width: 1,
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              color: Colors.white.withValues(alpha: 0.7),
                            ),
                            Text(
                              genre.songCount.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.8),
                                  ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              CupertinoIcons.double_music_note,
                              size: 14,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withValues(alpha: 0.8),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          childCount: genres.length + (showLoading ? 1 : 0),
        ),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 16 / 9,
          maxCrossAxisExtent: 180,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
      ),
    );
  }
}

class GenreIcon extends StatelessWidget {
  const GenreIcon({
    super.key,
    required this.genre,
    required this.color,
    this.scale = 1,
  });

  final String genre;
  final Color color;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final colorFilter = ColorFilter.mode(
          color,
          BlendMode.srcIn,
        );
        final name = genre.toLowerCase();

        if (name.contains('rock')) {
          return SvgPicture.asset(
            'assets/rock.svg',
            height: 24 * scale,
            width: 24 * scale,
            colorFilter: colorFilter,
          );
        }

        if (name.contains('pop')) {
          return SvgPicture.asset(
            'assets/pop.svg',
            height: 18 * scale,
            width: 18 * scale,
            colorFilter: colorFilter,
          );
        }

        if (name.contains('jazz')) {
          return SvgPicture.asset(
            'assets/jazz.svg',
            height: 20 * scale,
            width: 20 * scale,
            colorFilter: colorFilter,
          );
        }

        if (name.contains('classic')) {
          return SvgPicture.asset(
            'assets/classical.svg',
            height: 20 * scale,
            width: 20 * scale,
            colorFilter: colorFilter,
          );
        }
        if (name.contains('hip-hop') ||
            name.contains('hiphop') ||
            name.contains('hip hop') ||
            name.contains('hip  hop')) {
          return SvgPicture.asset(
            'assets/hiphop.svg',
            height: 20 * scale,
            width: 20 * scale,
            colorFilter: colorFilter,
          );
        }
        if (name.contains('electronic')) {
          return SvgPicture.asset(
            'assets/electronic.svg',
            height: 20 * scale,
            width: 20 * scale,
            colorFilter: colorFilter,
          );
        }
        if (name.contains('country')) {
          return SvgPicture.asset(
            'assets/country.svg',
            height: 20 * scale,
            width: 20 * scale,
            colorFilter: colorFilter,
          );
        }
        if (name.contains('reggae')) {
          return SvgPicture.asset(
            'assets/reggae.svg',
            height: 20 * scale,
            width: 20 * scale,
            colorFilter: colorFilter,
          );
        }
        if (name.contains('blues')) {
          return SvgPicture.asset(
            'assets/blues.svg',
            height: 20 * scale,
            width: 20 * scale,
            colorFilter: colorFilter,
          );
        }
        if (name.contains('metal')) {
          return SvgPicture.asset(
            'assets/metal.svg',
            height: 24 * scale,
            width: 24 * scale,
            colorFilter: colorFilter,
          );
        }

        if (name.contains('latin')) {
          return SvgPicture.asset(
            'assets/latin.svg',
            height: 20 * scale,
            width: 20 * scale,
            colorFilter: colorFilter,
          );
        }

        if (name.contains('r&b') ||
            name.contains('rnb') ||
            name.contains('r & b') ||
            name.contains('r and b') ||
            name.contains('soul')) {
          return SvgPicture.asset(
            'assets/r&b.svg',
            height: 20 * scale,
            width: 20 * scale,
            colorFilter: colorFilter,
          );
        }

        if (name.contains('industrial')) {
          return SvgPicture.asset(
            'assets/industrial.svg',
            height: 20 * scale,
            width: 20 * scale,
            colorFilter: colorFilter,
          );
        }
        if (name.contains('indie')) {
          return SvgPicture.asset(
            'assets/indie.svg',
            height: 20 * scale,
            width: 20 * scale,
            colorFilter: colorFilter,
          );
        }

        if (name.contains('alternative')) {
          return SvgPicture.asset(
            'assets/alternative.svg',
            height: 20 * scale,
            width: 20 * scale,
            colorFilter: colorFilter,
          );
        }

        if (name.contains('ndh')) {
          return SvgPicture.asset(
            'assets/rock.svg',
            height: 20 * scale,
            width: 20 * scale,
            colorFilter: colorFilter,
          );
        }
        return SvgPicture.asset(
          'assets/default-genre.svg',
          height: 20 * scale,
          width: 20 * scale,
          colorFilter: colorFilter,
        );
      },
    );
  }
}
