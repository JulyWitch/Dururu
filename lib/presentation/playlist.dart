import 'package:dururu/presentation/widgets/loading_indicator.dart';
import 'package:dururu/presentation/widgets/song_trailing.dart';
import 'package:dururu/providers/audio.dart';
import 'package:dururu/providers/subsonic_apis.dart';
import 'package:dururu/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PlaylistPage extends ConsumerWidget {
  final String playlistId;

  const PlaylistPage({
    super.key,
    required this.playlistId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlist = ref.watch(
      getPlaylistProvider(
        GetPlaylistRequest(
          id: playlistId,
        ),
      ),
    );

    return Scaffold(
      body: playlist.when(
        data: (data) {
          final pl = data.playlist!;

          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 300,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      CachedNetworkImage(
                        imageUrl: ref.watch(
                          getCoverArtProvider(
                            GetCoverArtRequest(
                              id: pl.coverArt ?? pl.entry?[0].coverArt,
                            ),
                          ),
                        ),
                        cacheKey: GetCoverArtRequest(
                          id: pl.coverArt ?? pl.entry?[0].coverArt,
                        ).hashCode.toString(),
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.playlist_play),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withValues(alpha: 0.7),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        right: 16,
                        bottom: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              pl.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  pl.songCount.toString(),
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
                                Container(
                                  height: 12,
                                  width: 1,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  color: Colors.white.withValues(alpha: 0.7),
                                ),
                                Text(
                                  formatSongDuration(pl.duration),
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
                                  CupertinoIcons.timer,
                                  size: 14,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurface
                                      .withValues(alpha: 0.8),
                                ),
                                const Spacer(),
                                Text(pl.created.toString()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final song = pl.entry?[index];
                    if (song == null) return null;

                    return ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: CachedNetworkImage(
                          imageUrl: ref.watch(
                            getCoverArtProvider(
                              GetCoverArtRequest(id: song.coverArt),
                            ),
                          ),
                          cacheKey: GetCoverArtRequest(id: song.coverArt)
                              .hashCode
                              .toString(),
                          width: 48,
                          height: 48,
                          fit: BoxFit.cover,
                          fadeInDuration: Duration.zero,
                          fadeOutDuration: Duration.zero,
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.album),
                        ),
                      ),
                      title: Text(
                        song.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        '${song.artist ?? ''} • ${formatSongDuration(song.duration ?? 0)}',
                      ),
                      trailing: SongTrailing(id: song.id),
                      onTap: () {
                        ref.read(audioProvider.notifier).playQueue(
                            data.playlist!.entry!,
                            initialIndex: index);
                      },
                    );
                  },
                  childCount: pl.entry?.length ?? 0,
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 120,
                ),
              ),
            ],
          );
        },
        error: (error, stack) =>
            const Center(child: Text('Error loading playlist')),
        loading: () => const Center(
          child: LoadingIndicator(),
        ),
      ),
    );
  }
}
