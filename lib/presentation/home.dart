import 'package:cached_network_image/cached_network_image.dart';
import 'package:dururu/models/subsonic.dart';
import 'package:dururu/presentation/widgets/album_square.dart';
import 'package:dururu/presentation/widgets/artist_circle.dart';
import 'package:dururu/presentation/widgets/genre_badge.dart';
import 'package:dururu/presentation/widgets/loading_indicator.dart';
import 'package:dururu/presentation/widgets/playlist_badge.dart';
import 'package:dururu/providers/subsonic_apis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final artists = ref.watch(getArtistsProvider(const GetArtistsRequest()));
    final albums = ref.watch(
      getAlbumListProvider(const GetAlbumListRequest(type: "recent")),
    );
    final genres = ref.watch(getGenresProvider);
    final playlists = ref.watch(
      getPlaylistsProvider(
        const GetPlaylistsRequest(),
      ),
    );

    return Scaffold(
      body: ListView(
        children: [
          const StatsCards(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Playlists",
                    style: Theme.of(context).textTheme.titleMedium),
                IconButton(
                  icon: const Icon(CupertinoIcons.forward),
                  onPressed: () {
                    GoRouter.of(context).push('/playlists');
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: playlists.when(
              data: (data) {
                final flatData = data.playlists?.playlist ?? [];

                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  itemCount: flatData.length,
                  itemBuilder: (context, i) {
                    final pl = flatData[i];

                    return Padding(
                      padding: const EdgeInsetsDirectional.only(end: 16),
                      child: PlaylistBadge(
                        pl: pl,
                      ),
                    );
                  },
                );
              },
              error: (error, stack) => const Text("Error"),
              loading: () => const Center(
                child: LoadingIndicator(),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Artists", style: Theme.of(context).textTheme.titleMedium),
                IconButton(
                  icon: const Icon(CupertinoIcons.forward),
                  onPressed: () {
                    GoRouter.of(context).push('/artists');
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: artists.when(
              data: (data) {
                final flatData =
                    data.artists?.index?.fold(<ArtistId3>[], (acc, curr) {
                          if (curr.artist != null) acc.addAll(curr.artist!);
                          return acc;
                        }) ??
                        [];

                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  itemCount: flatData.length,
                  itemBuilder: (context, i) {
                    final artist = flatData[i];

                    return Padding(
                      padding: const EdgeInsetsDirectional.only(end: 16),
                      child: ArtistCircle(
                        name: artist.name,
                        imageUrl: artist.artistImageUrl ?? '',
                        cacheKey: artist.id,
                        onTap: () {
                          GoRouter.of(context).push(
                            '/artists/${artist.id}',
                            extra: artist.name,
                          );
                        },
                      ),
                    );
                  },
                );
              },
              error: (error, stack) => const Text("Error"),
              loading: () => const Center(
                child: LoadingIndicator(),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Albums", style: Theme.of(context).textTheme.titleMedium),
                IconButton(
                  icon: const Icon(CupertinoIcons.forward),
                  onPressed: () {
                    GoRouter.of(context).push(
                      '/albums?type=alphabeticalByName&title=Albums',
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 250,
            child: albums.when(
              data: (data) {
                final flatData = data.albumList?.album ?? [];
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: flatData.length,
                  itemBuilder: (context, i) {
                    final val = flatData[i];
                    return Padding(
                      padding: const EdgeInsetsDirectional.only(end: 16),
                      child: AlbumSquare(
                        id: val.id,
                        name: val.title,
                        year: val.year,
                        artistName: val.artist,
                        coverArt: val.coverArt,
                        genre: val.genre,
                        onTap: () {
                          GoRouter.of(context).push('/albums/${val.id}');
                        },
                      ),
                    );
                  },
                );
              },
              error: (error, stack) => const Text("Error"),
              loading: () => const Center(
                child: LoadingIndicator(),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Genres", style: Theme.of(context).textTheme.titleMedium),
                IconButton(
                  icon: const Icon(CupertinoIcons.forward),
                  onPressed: () {
                    GoRouter.of(context).push('/genres');
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
            child: genres.when(
              data: (data) {
                final flatData = data.genres?.genre ?? [];
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: flatData.length,
                  itemBuilder: (context, i) {
                    final val = flatData[i];
                    return Padding(
                      padding: const EdgeInsetsDirectional.only(end: 16),
                      child: GenreBadge(
                        name: val.value,
                        songCount: val.songCount,
                        albumCount: val.albumCount,
                        onTap: () {
                          GoRouter.of(context).push('/genres/${val.value}');
                        },
                      ),
                    );
                  },
                );
              },
              error: (error, stack) => const Text("Error"),
              loading: () => const Center(
                child: LoadingIndicator(),
              ),
            ),
          ),
          const SizedBox(height: 120),
        ],
      ),
    );
  }
}

class StatsCards extends ConsumerWidget {
  const StatsCards({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final starred = ref.watch(getStarredProvider(const GetStarredRequest()));
    final frequentAlbums = ref.watch(
      getAlbumList2Provider(const GetAlbumList2Request(type: "frequent")),
    );
    final recentAlbums = ref.watch(
      getAlbumList2Provider(const GetAlbumList2Request(type: "recent")),
    );

    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          _buildCard(
            context,
            title: 'Starred',
            onTap: () {
              GoRouter.of(context).push('/starred');
            },
            width: 250,
            content: starred.when(
              data: (data) {
                final songs = data.starred?.song ?? [];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${songs.length} songs',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    const Spacer(),
                    if (songs.isNotEmpty)
                      Text(
                        'Latest: ${songs.first.title}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.white70,
                            ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                );
              },
              error: (_, __) => const Text('Error'),
              loading: () => const Center(
                child: LoadingIndicator(),
              ),
            ),
            background: _buildArtworkGrid(
              ref,
              starred.value?.starred?.song
                      ?.take(4)
                      .map((song) => song.coverArt ?? '')
                      .toList() ??
                  [],
            ),
          ),
          const SizedBox(width: 16),
          _buildCard(
            context,
            onTap: () {
              GoRouter.of(context).push('/albums?type=frequent&title=Frequent');
            },
            title: 'Frequent Albums',
            width: 250,
            content: frequentAlbums.when(
              data: (data) {
                final albums = data.albumList2?.album ?? [];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    if (albums.isNotEmpty)
                      Text(
                        'Most played: ${albums.first.name}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.white70,
                            ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                );
              },
              error: (_, __) => const Text('Error'),
              loading: () => const Center(
                child: LoadingIndicator(),
              ),
            ),
            background: _buildArtworkGrid(
              ref,
              frequentAlbums.value?.albumList2?.album
                      ?.take(4)
                      .map((album) => album.coverArt ?? '')
                      .toList() ??
                  [],
            ),
          ),
          const SizedBox(width: 16),
          _buildCard(
            context,
            onTap: () {
              GoRouter.of(context).push('/albums?type=recent&title=Recent');
            },
            title: 'Recent Albums',
            width: 250,
            content: recentAlbums.when(
              data: (data) {
                final albums = data.albumList2?.album ?? [];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    if (albums.isNotEmpty)
                      Text(
                        'Latest: ${albums.first.name}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.white70,
                            ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                );
              },
              error: (_, __) => const Text('Error'),
              loading: () => const Center(
                child: LoadingIndicator(),
              ),
            ),
            background: _buildArtworkGrid(
              ref,
              recentAlbums.value?.albumList2?.album
                      ?.take(4)
                      .map((album) => album.coverArt ?? '')
                      .toList() ??
                  [],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard<T>(
    BuildContext context, {
    required String title,
    required Widget content,
    required double width,
    required Widget background,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.9),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Background artwork grid with overlay
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  children: [
                    background,
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Theme.of(context).cardColor.withValues(alpha: 0.9),
                            Theme.of(context).cardColor.withValues(alpha: 0.3),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(height: 12),
                  Expanded(child: content),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildArtworkGrid(WidgetRef ref, List<String> artworkUrls) {
    final reversed = artworkUrls.reversed.toList();
    return LayoutBuilder(
      builder: (context, constraints) {
        final baseSize = constraints.maxWidth * 0.65; // Base size for artwork

        return Stack(
          alignment: Alignment.center,
          children: [
            for (var i = 0; i < artworkUrls.length; i++)
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(
                      i * 8.0 -
                          (artworkUrls.length * 4), // Slight horizontal offset
                      i * 4.0 -
                          (artworkUrls.length * 4), // Slight vertical offset
                    )
                    ..rotateZ((i * 0.1) - 0.15) // Rotate each card slightly
                    ..scale(1.0 - (i * 0.1)), // Scale down each subsequent card
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.8),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: ref.watch(
                          getCoverArtProvider(
                              GetCoverArtRequest(id: reversed[i])),
                        ),
                        cacheKey: GetCoverArtRequest(id: reversed[i])
                            .hashCode
                            .toString(),
                        width: baseSize,
                        height: baseSize,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
