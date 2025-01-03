import 'package:dururu/presentation/widgets/album_grid.dart';
import 'package:dururu/presentation/widgets/artist_grid.dart';
import 'package:dururu/presentation/widgets/loading_indicator.dart';
import 'package:dururu/providers/audio.dart';
import 'package:dururu/providers/subsonic_apis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';

class StarredPage extends ConsumerStatefulWidget {
  const StarredPage({super.key});

  @override
  ConsumerState<StarredPage> createState() => _StarredPageState();
}

class _StarredPageState extends ConsumerState<StarredPage> {
  ResourceType selectedResource = ResourceType.songs;

  @override
  Widget build(BuildContext context) {
    final starred = ref.watch(getStarred2Provider(const GetStarred2Request()));

    return Scaffold(
      body: CustomScrollView(
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
                  const Positioned(
                    left: 16,
                    right: 16,
                    bottom: 48,
                    child: Text(
                      'Starred',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 16,
                    child: SegmentedButton<ResourceType>(
                      segments: const [
                        ButtonSegment(
                          value: ResourceType.songs,
                          label: Text('Songs'),
                        ),
                        ButtonSegment(
                          value: ResourceType.albums,
                          label: Text('Albums'),
                        ),
                        ButtonSegment(
                          value: ResourceType.artists,
                          label: Text('Artists'),
                        ),
                      ],
                      selected: {selectedResource},
                      onSelectionChanged: (Set<ResourceType> selection) {
                        setState(() {
                          selectedResource = selection.first;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          starred.when(data: (data) {
            switch (selectedResource) {
              case ResourceType.albums:
                return AlbumGrid(
                  albums: data.starred2?.album ?? [],
                  showLoading: false,
                );

              case ResourceType.artists:
                return ArtistGrid(
                  artists: data.starred2?.artist ?? [],
                  showLoading: false,
                );

              case ResourceType.songs:
                final songs = data.starred2?.song ?? [];
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final song = songs[index];
                      return ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: CachedNetworkImage(
                            imageUrl: ref.watch(
                              getCoverArtProvider(
                                  GetCoverArtRequest(id: song.coverArt)),
                            ),
                            cacheKey: GetCoverArtRequest(id: song.coverArt)
                                .hashCode
                                .toString(),
                            width: 48,
                            height: 48,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const Center(
                              child: LoadingIndicator(),
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
                              .playQueue(songs, initialIndex: index);
                        },
                      );
                    },
                    childCount: songs.length,
                  ),
                );
            }
          }, error: (error, trace) {
            return const SliverFillRemaining(
              child: Center(child: Text("An error occured")),
            );
          }, loading: () {
            return const SliverFillRemaining(
              child: Center(child: LoadingIndicator()),
            );
          }),
        ],
      ),
    );
  }
}

enum ResourceType {
  songs,
  albums,
  artists,
}
