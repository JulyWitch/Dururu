import 'package:dururu/models/subsonic.dart';
import 'package:dururu/presentation/widgets/artist_circle.dart';
import 'package:dururu/presentation/widgets/loading_indicator.dart';
import 'package:dururu/providers/audio.dart';
import 'package:dururu/providers/subsonic_apis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AlbumPage extends ConsumerWidget {
  final String albumId;

  const AlbumPage({
    super.key,
    required this.albumId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final album = ref.watch(getAlbumProvider(GetAlbumRequest(id: albumId)));

    return Scaffold(
      body: album.when(
        data: (data) {
          return CustomScrollView(
            slivers: [
              // Album Cover and Info
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
                              id: data.album?.coverArt ??
                                  data.album?.song?[0].coverArt,
                            ),
                          ),
                        ),
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const Center(
                          child: LoadingIndicator(),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.album),
                      ),
                      // Gradient Overlay
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
                      // Album Info
                      Positioned(
                        left: 16,
                        right: 16,
                        bottom: 16,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    data.album?.song?[0].album ?? '',
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
                                      if (data.album?.song?[0].genre != null)
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8,
                                            vertical: 4,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.black
                                                .withValues(alpha: 0.5),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Text(
                                            data.album!.song![0].genre!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(
                                                  color: Colors.white
                                                      .withValues(alpha: 0.7),
                                                ),
                                          ),
                                        ),
                                      const SizedBox(width: 8),
                                      if (data.album?.song?[0].year != null)
                                        Text(
                                          data.album!.song![0].year!.toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(
                                                color: Colors.white
                                                    .withValues(alpha: 0.7),
                                              ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            if (data.album?.artist != 'Various Artists')
                              Consumer(
                                builder: (context, ref, child) {
                                  final artist = ref.watch(
                                    getArtistProvider(
                                      GetArtistRequest(
                                        id: data.album?.artistId,
                                      ),
                                    ),
                                  );

                                  return ArtistCircle(
                                    name: data.album?.artist ?? '',
                                    imageUrl:
                                        artist.value?.artist?.artistImageUrl ??
                                            '',
                                    onTap: () {},
                                  );
                                },
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (false)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Artists",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          height: 100,
                          child: Consumer(builder: (context, ref, child) {
                            final artists = ref.watch(getArtistProvider(
                                GetArtistRequest(id: data.album?.artistId)));
                            if (artists.isLoading) {
                              return const LoadingIndicator();
                            }
                            final flatMap = artists.value?.artists?.index?.fold(
                              <ArtistId3>[],
                              (acc, curr) => [
                                ...acc,
                                if (curr.artist != null) ...curr.artist!
                              ],
                            );
                            print('flatMap $flatMap');
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: flatMap?.length ?? 0,
                              itemBuilder: (context, index) {
                                final artist = flatMap![index];

                                return Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: ArtistCircle(
                                    name: artist.name,
                                    imageUrl: artist.artistImageUrl,
                                    onTap: () {},
                                  ),
                                );
                              },
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),

              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final song = data.album?.song?[index];
                    if (song == null) return null;

                    return ListTile(
                      leading: Text(
                        '${index + 1}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      title: Text(song.title),
                      subtitle: Text(
                        '${song.artist ?? ''} • ${Duration(seconds: song.duration ?? 0).toString().split('.').first}',
                      ),
                      trailing: IconButton(
                        icon: const Icon(CupertinoIcons.ellipsis),
                        onPressed: () {},
                      ),
                      onTap: () {
                        ref
                            .read(audioProvider.notifier)
                            .playQueue(data.album!.song!, initialIndex: index);
                      },
                    );
                  },
                  childCount: data.album?.song?.length ?? 0,
                ),
              ),
            ],
          );
        },
        error: (error, stack) =>
            const Center(child: Text('Error loading album')),
        loading: () => const Center(
          child: LoadingIndicator(),
        ),
      ),
    );
  }
}
