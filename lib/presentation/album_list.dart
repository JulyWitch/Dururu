import 'package:dururu/models/pagination.dart';
import 'package:dururu/models/subsonic.dart';
import 'package:dururu/presentation/widgets/album_grid.dart';
import 'package:dururu/providers/subsonic_apis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlbumListPage extends ConsumerStatefulWidget {
  final String type;
  final String title;

  const AlbumListPage({
    super.key,
    required this.type,
    required this.title,
  });

  @override
  ConsumerState<AlbumListPage> createState() => _AlbumListPageState();
}

class _AlbumListPageState extends ConsumerState<AlbumListPage> {
  static const pageSize = 20;
  final scrollController = ScrollController();
  late PaginationState<AlbumId3> albumState;

  @override
  void initState() {
    super.initState();
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
    if (albumState.isLoading || !albumState.hasMore) return;

    setState(() {
      albumState = albumState.copyWith(isLoading: true);
    });

    try {
      final response = await ref.read(getAlbumList2Provider(
        GetAlbumList2Request(
          type: widget.type,
          size: pageSize,
          offset: albumState.offset,
        ),
      ).future);

      final newAlbums = response.albumList2?.album ?? [];
      setState(() {
        albumState = albumState.copyWith(
          items: [...albumState.items, ...newAlbums],
          hasMore: newAlbums.length >= pageSize,
          offset: albumState.offset + newAlbums.length,
          isLoading: false,
        );
      });
    } catch (e) {
      setState(() {
        albumState = albumState.copyWith(isLoading: false);
      });
    }
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
                          Colors.black.withValues(alpha: 0.7),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 48,
                    child: Text(
                      widget.title,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AlbumGrid(
            albums: albumState.items,
            showLoading: albumState.isLoading,
          ),
        ],
      ),
    );
  }
}
