import 'package:dururu/models/pagination.dart';
import 'package:dururu/models/subsonic.dart';
import 'package:dururu/presentation/widgets/album_grid.dart';
import 'package:dururu/providers/audio.dart';
import 'package:dururu/providers/subsonic_apis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ArtistPage extends ConsumerStatefulWidget {
  final String id;
  final String name;

  const ArtistPage({
    super.key,
    required this.id,
    required this.name,
  });

  @override
  ConsumerState<ArtistPage> createState() => _ArtistPageState();
}

class _ArtistPageState extends ConsumerState<ArtistPage> {
  bool showAlbums = true;
  List<Child> topSongs = [];
  late PaginationState<AlbumId3> albumState;
  late PaginationState<Child> songState;
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    albumState = const PaginationState();
    songState = const PaginationState();
    loadInitialData();
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

  Future<void> loadInitialData() async {
    try {
      final topSongsResponse = await ref.read(getTopSongsProvider(
        GetTopSongsRequest(artist: widget.name, count: 5),
      ).future);
      setState(() {
        topSongs = topSongsResponse.topSongs?.song ?? [];
      });
      loadMore();
    } catch (e) {
      loadMore();
    }
  }

  Future<void> loadMore() async {
    final currentState = showAlbums ? albumState : songState;
    if (currentState.isLoading || !currentState.hasMore) return;

    setState(() {
      if (showAlbums) {
        albumState = albumState.copyWith(isLoading: true);
      } else {
        songState = songState.copyWith(isLoading: true);
      }
    });

    try {
      if (showAlbums) {
        final response = await ref.read(getArtistProvider(
          GetArtistRequest(id: widget.id),
        ).future);

        final newAlbums = response.artist?.album ?? [];
        albumState = albumState.copyWith(
          items: [...albumState.items, ...newAlbums],
          hasMore: false,
          isLoading: false,
        );
      } else {}
      setState(() {});
    } catch (e) {
      setState(() {
        if (showAlbums) {
          albumState = albumState.copyWith(isLoading: false);
        } else {
          songState = songState.copyWith(isLoading: false);
        }
      });
    }
  }

  void toggleView() {
    setState(() {
      showAlbums = !showAlbums;
      if ((showAlbums && albumState.items.isEmpty) ||
          (!showAlbums && songState.items.isEmpty)) {
        loadMore();
      }
    });
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
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 48,
                    child: Text(
                      widget.name,
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                  Positioned(
                    right: 16,
                    bottom: 16,
                    child: Row(
                      children: [
                        Text(
                          'Albums',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(
                                color:
                                    showAlbums ? Colors.white : Colors.white60,
                              ),
                        ),
                        Switch.adaptive(
                          value: !showAlbums,
                          onChanged: (_) => toggleView(),
                        ),
                        Text(
                          'Songs',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(
                                color:
                                    !showAlbums ? Colors.white : Colors.white60,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (topSongs.isNotEmpty) ...[
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Top Songs',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final song = topSongs[index];
                  return ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: CachedNetworkImage(
                        imageUrl: ref.watch(
                          getCoverArtProvider(
                              GetCoverArtRequest(id: song.coverArt)),
                        ),
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.album),
                      ),
                    ),
                    title: Text(song.title),
                    subtitle: Text(
                      Duration(seconds: song.duration ?? 0)
                          .toString()
                          .split('.')
                          .first,
                    ),
                    trailing: IconButton(
                      icon: const Icon(CupertinoIcons.ellipsis),
                      onPressed: () {},
                    ),
                    onTap: () {
                      ref
                          .read(audioProvider.notifier)
                          .playQueue(topSongs, initialIndex: index);
                    },
                  );
                },
                childCount: topSongs.length,
              ),
            ),
          ],
          if (showAlbums)
            AlbumGrid(
              albums: albumState.items,
              showLoading: albumState.hasMore && albumState.isLoading,
            )
          else
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index >= songState.items.length) {
                    return songState.isLoading
                        ? const Center(
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: CircularProgressIndicator.adaptive(),
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
                          getCoverArtProvider(
                              GetCoverArtRequest(id: song.coverArt)),
                        ),
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.album),
                      ),
                    ),
                    title: Text(song.title),
                    subtitle: Text(
                      Duration(seconds: song.duration ?? 0)
                          .toString()
                          .split('.')
                          .first,
                    ),
                    trailing: IconButton(
                      icon: const Icon(CupertinoIcons.ellipsis),
                      onPressed: () {},
                    ),
                    onTap: () {
                      ref
                          .read(audioProvider.notifier)
                          .playQueue(songState.items, initialIndex: index);
                    },
                  );
                },
                childCount:
                    songState.items.length + (songState.hasMore ? 1 : 0),
              ),
            ),
        ],
      ),
    );
  }
}
