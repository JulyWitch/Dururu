import 'package:dururu/models/subsonic.dart';
import 'package:dururu/presentation/widgets/loading_indicator.dart';
import 'package:dururu/providers/subsonic_apis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';

class ArtistGrid extends ConsumerWidget {
  final List<ArtistId3> artists;
  final bool showLoading;

  const ArtistGrid({
    super.key,
    required this.artists,
    this.showLoading = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if (index >= artists.length) {
              return const Center(
                child: LoadingIndicator(),
              );
            }

            final artist = artists[index];
            return GestureDetector(
              onTap: () => GoRouter.of(context).push('/artists/${artist.id}', extra: artist.name),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: ref.watch(
                          getCoverArtProvider(
                            GetCoverArtRequest(id: artist.coverArt),
                          ),
                        ),
                        cacheKey: GetCoverArtRequest(id: artist.coverArt)
                            .hashCode
                            .toString(),
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.person),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    artist.name,
                    style: Theme.of(context).textTheme.titleSmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "${artist.albumCount} Albums",
                    style: Theme.of(context).textTheme.bodySmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            );
          },
          childCount: artists.length + (showLoading ? 1 : 0),
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
