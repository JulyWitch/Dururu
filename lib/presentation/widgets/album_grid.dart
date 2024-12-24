import 'package:dururu/models/subsonic.dart';
import 'package:dururu/presentation/widgets/loading_indicator.dart';
import 'package:dururu/providers/subsonic_apis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';

class AlbumGrid extends ConsumerWidget {
  final List<AlbumId3> albums;
  final bool showLoading;

  const AlbumGrid({
    super.key,
    required this.albums,
    this.showLoading = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if (index >= albums.length) {
              return const Center(
                child: LoadingIndicator(),
              );
            }

            final album = albums[index];
            return GestureDetector(
              onTap: () => GoRouter.of(context).push('/albums/${album.id}'),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: ref.watch(
                          getCoverArtProvider(
                            GetCoverArtRequest(id: album.coverArt),
                          ),
                        ),
                        cacheKey: GetCoverArtRequest(id: album.coverArt)
                            .hashCode
                            .toString(),
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.album),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    album.name,
                    style: Theme.of(context).textTheme.titleSmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    album.year?.toString() ?? '',
                    style: Theme.of(context).textTheme.bodySmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            );
          },
          childCount: albums.length + (showLoading ? 1 : 0),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
      ),
    );
  }
}
