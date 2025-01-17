import 'package:dururu/models/pagination.dart';
import 'package:dururu/models/subsonic.dart';
import 'package:dururu/presentation/widgets/album_grid.dart';
import 'package:dururu/presentation/widgets/genre_grid.dart';
import 'package:dururu/presentation/widgets/loading_indicator.dart';
import 'package:dururu/presentation/widgets/song_trailing.dart';
import 'package:dururu/providers/audio.dart';
import 'package:dururu/providers/subsonic_apis.dart';
import 'package:dururu/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';

class GenrePage extends ConsumerStatefulWidget {
  final String genre;

  const GenrePage({super.key, required this.genre});

  @override
  ConsumerState<GenrePage> createState() => GenrePageState();
}

class GenrePageState extends ConsumerState<GenrePage> {
  static const pageSize = 20;
  final scrollController = ScrollController();
  bool showSongs = true;
  late PaginationState<Child> songState;
  late PaginationState<AlbumId3> albumState;

  @override
  void initState() {
    super.initState();
    songState = const PaginationState();
    albumState = const PaginationState();
    loadMore();
    scrollController.addListener(onScroll);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 200) {
      loadMore();
    }
  }

  Future<void> loadMore() async {
    final currentState = showSongs ? songState : albumState;
    if (currentState.isLoading || !currentState.hasMore) return;

    setState(() {
      if (showSongs) {
        songState = songState.copyWith(isLoading: true);
      } else {
        albumState = albumState.copyWith(isLoading: true);
      }
    });

    try {
      if (showSongs) {
        final response = await ref.read(getSongsByGenreProvider(
          GetSongsByGenreRequest(
            genre: widget.genre,
            count: pageSize,
            offset: songState.offset,
          ),
        ).future);

        final newSongs = response.songsByGenre?.song ?? [];
        songState = songState.copyWith(
          items: [...songState.items, ...newSongs],
          hasMore: newSongs.length >= pageSize,
          offset: songState.offset + newSongs.length,
          isLoading: false,
        );
      } else {
        final response = await ref.read(getAlbumList2Provider(
          GetAlbumList2Request(
            type: 'byGenre',
            genre: widget.genre,
            size: pageSize,
            offset: albumState.offset,
          ),
        ).future);

        final newAlbums = response.albumList2?.album ?? [];
        albumState = albumState.copyWith(
          items: [...albumState.items, ...newAlbums],
          hasMore: newAlbums.length >= pageSize,
          offset: albumState.offset + newAlbums.length,
          isLoading: false,
        );
      }
      setState(() {});
    } catch (e) {
      setState(() {
        if (showSongs) {
          songState = songState.copyWith(isLoading: false);
        } else {
          albumState = albumState.copyWith(isLoading: false);
        }
      });
    }
  }

  void toggleView() {
    setState(() {
      showSongs = !showSongs;
      if ((showSongs && songState.items.isEmpty) ||
          (!showSongs && albumState.items.isEmpty)) {
        loadMore();
      }
    });
  }

  Widget buildSongList() {
    return SliverList.builder(
      itemCount: songState.items.length + (songState.hasMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index >= songState.items.length) {
          return songState.isLoading
              ? const Center(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: LoadingIndicator(),
                  ),
                )
              : null;
        }

        final song = songState.items[index];

        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: CachedNetworkImage(
              imageUrl: ref.watch(
                getCoverArtProvider(GetCoverArtRequest(id: song.coverArt)),
              ),
              cacheKey:
                  GetCoverArtRequest(id: song.coverArt).hashCode.toString(),
              width: 48,
              height: 48,
              fit: BoxFit.cover,
              fadeInDuration: Duration.zero,
              fadeOutDuration: Duration.zero,
              errorWidget: (context, url, error) => const Icon(Icons.album),
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
            ref
                .read(audioProvider.notifier)
                .playQueue(songState.items, initialIndex: index);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Theme.of(context).colorScheme.primary,
                          Theme.of(context).colorScheme.secondary,
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.3),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 16,
                    child: Column(
                      spacing: 8,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          spacing: 8,
                          children: [
                            Expanded(
                              child: Text(
                                widget.genre,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            GenreIcon(
                              genre: widget.genre,
                              color: Theme.of(context).colorScheme.onSurface,
                              scale: 1.5,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Songs',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: showSongs
                                        ? Colors.white
                                        : Colors.white60,
                                  ),
                            ),
                            Switch.adaptive(
                              value: !showSongs,
                              onChanged: (_) => toggleView(),
                            ),
                            Text(
                              'Albums',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: !showSongs
                                        ? Colors.white
                                        : Colors.white60,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (showSongs)
            buildSongList()
          else
            AlbumGrid(
              albums: albumState.items,
              showLoading: albumState.isLoading,
            ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 120),
          ),
        ],
      ),
    );
  }
}
