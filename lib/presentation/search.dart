import 'package:dururu/presentation/widgets/loading_indicator.dart';
import 'package:dururu/presentation/widgets/song_trailing.dart';
import 'package:dururu/providers/audio.dart';
import 'package:dururu/providers/subsonic_apis.dart';
import 'package:dururu/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key, required this.controller});

  final TextEditingController controller;

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

enum SearchViewState { all, artists, albums, songs }

class _SearchPageState extends ConsumerState<SearchPage> {
  SearchViewState _viewState = SearchViewState.all;

  @override
  void initState() {
    widget.controller.addListener(onChangeQuery);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(onChangeQuery);
    super.dispose();
  }

  void onChangeQuery() {
    setState(() => _viewState = SearchViewState.all);
  }

  @override
  Widget build(BuildContext context) {
    final result = ref.watch(
      search2Provider(
        Search2Request(query: widget.controller.text),
      ),
    );

    return result.when(
      data: (data) {
        final artists = data.searchResult2?.artist ?? [];
        final albums = data.searchResult2?.album ?? [];
        final songs = data.searchResult2?.song ?? [];

        if (_viewState == SearchViewState.artists) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Text(
                        'Artists',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () =>
                            setState(() => _viewState = SearchViewState.all),
                        child: const Text('Show less'),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final artist = artists[index];
                    return ArtistListTile(
                      id: artist.id,
                      name: artist.name,
                    );
                  },
                  childCount: artists.length,
                ),
              ),
            ],
          );
        }

        if (_viewState == SearchViewState.albums) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Text(
                        'Albums',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () =>
                            setState(() => _viewState = SearchViewState.all),
                        child: const Text('Show less'),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final album = albums[index];
                    return AlbumListTile(
                      id: album.id,
                      title: album.title,
                      artist: album.artist,
                      coverArt: album.coverArt,
                    );
                  },
                  childCount: albums.length,
                ),
              ),
            ],
          );
        }

        if (_viewState == SearchViewState.songs) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Text(
                        'Songs',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () =>
                            setState(() => _viewState = SearchViewState.all),
                        child: const Text('Show less'),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final song = songs[index];
                    return ListTile(
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
                            .playQueue(songs, initialIndex: index);
                      },
                    );
                  },
                  childCount: songs.length,
                ),
              ),
            ],
          );
        }

        // Default all view
        return CustomScrollView(
          slivers: [
            if (artists.isNotEmpty) ...[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Text(
                        'Artists',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const Spacer(),
                      if (artists.length > 5)
                        TextButton(
                          onPressed: () => setState(
                              () => _viewState = SearchViewState.artists),
                          child: const Text('Show all'),
                        ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index >= artists.length || index >= 5) return null;
                    final artist = artists[index];
                    return ArtistListTile(
                      id: artist.id,
                      name: artist.name,
                    );
                  },
                ),
              ),
            ],
            if (albums.isNotEmpty) ...[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Text(
                        'Albums',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const Spacer(),
                      if (albums.length > 5)
                        TextButton(
                          onPressed: () => setState(
                              () => _viewState = SearchViewState.albums),
                          child: const Text('Show all'),
                        ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index >= albums.length || index >= 5) return null;
                    final album = albums[index];
                    return AlbumListTile(
                      id: album.id,
                      title: album.title,
                      artist: album.artist,
                      coverArt: album.coverArt,
                    );
                  },
                ),
              ),
            ],
            if (songs.isNotEmpty) ...[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Text(
                        'Songs',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const Spacer(),
                      if (songs.length > 5)
                        TextButton(
                          onPressed: () => setState(
                              () => _viewState = SearchViewState.songs),
                          child: const Text('Show all'),
                        ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index >= songs.length || index >= 5) return null;
                    final song = songs[index];
                    return ListTile(
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
                            .playQueue(songs, initialIndex: index);
                      },
                    );
                  },
                ),
              ),
            ],
            const SliverToBoxAdapter(child: SizedBox(height: 120)),
          ],
        );
      },
      error: (error, stack) => const Center(child: Text('Error searching')),
      loading: () => const Center(child: LoadingIndicator()),
    );
  }
}

class ArtistListTile extends StatelessWidget {
  const ArtistListTile({
    super.key,
    required this.name,
    required this.id,
    this.imageUrl,
  });

  final String name;
  final String id;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: CachedNetworkImage(
          imageUrl: imageUrl ?? '',
          width: 48,
          height: 48,
          fit: BoxFit.cover,
          fadeInDuration: Duration.zero,
          fadeOutDuration: Duration.zero,
          errorWidget: (context, url, error) => const Icon(Icons.person),
        ),
      ),
      title: Text(name),
      onTap: () => GoRouter.of(context).push(
        '/artists/$id',
        extra: name,
      ),
    );
  }
}

class AlbumListTile extends ConsumerWidget {
  const AlbumListTile({
    super.key,
    required this.title,
    required this.id,
    required this.coverArt,
    this.artist,
  });

  final String title;
  final String id;
  final String? coverArt;
  final String? artist;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: CachedNetworkImage(
          imageUrl: ref.watch(
            getCoverArtProvider(GetCoverArtRequest(id: coverArt)),
          ),
          width: 48,
          height: 48,
          fit: BoxFit.cover,
          errorWidget: (context, url, error) => const Icon(Icons.album),
        ),
      ),
      title: Text(title),
      subtitle: artist != null ? Text(artist!) : null,
      onTap: () => GoRouter.of(context).push('/albums/$id'),
    );
  }
}
