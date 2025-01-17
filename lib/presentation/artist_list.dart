import 'package:dururu/models/pagination.dart';
import 'package:dururu/models/subsonic.dart';
import 'package:dururu/presentation/widgets/artist_grid.dart';
import 'package:dururu/providers/subsonic_apis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArtistListPage extends ConsumerStatefulWidget {
  const ArtistListPage({
    super.key,
  });

  @override
  ConsumerState<ArtistListPage> createState() => _ArtistListPageState();
}

class _ArtistListPageState extends ConsumerState<ArtistListPage> {
  static const pageSize = 20;
  final scrollController = ScrollController();
  late PaginationState<ArtistId3> artistState;

  @override
  void initState() {
    super.initState();
    artistState = const PaginationState();
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
    if (artistState.isLoading || !artistState.hasMore) return;

    setState(() {
      artistState = artistState.copyWith(isLoading: true);
    });

    try {
      final response = await ref.read(
        getArtistsProvider(
          const GetArtistsRequest(),
        ).future,
      );

      final newArtists =
          response.artists?.index?.fold(<ArtistId3>[], (acc, curr) {
                if (curr.artist != null) acc.addAll(curr.artist!);
                return acc;
              }) ??
              [];

      setState(() {
        artistState = artistState.copyWith(
          items: [...artistState.items, ...newArtists],
          hasMore: newArtists.length >= pageSize,
          offset: artistState.offset + newArtists.length,
          isLoading: false,
        );
      });
    } catch (e) {
      setState(() {
        artistState = artistState.copyWith(isLoading: false);
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
                      'Artists',
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
          ArtistGrid(
            artists: artistState.items,
            showLoading: artistState.isLoading,
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 120),
          ),
        ],
      ),
    );
  }
}
