import 'package:dururu/providers/subsonic_apis.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlbumSquare extends ConsumerStatefulWidget {
  final String? coverArt;
  final String name;
  final String? artistName;
  final int? year;
  final String? genre;
  final double size;
  final VoidCallback onTap;

  const AlbumSquare({
    super.key,
    required this.coverArt,
    required this.name,
    required this.artistName,
    required this.year,
    required this.genre,
    required this.onTap,
    this.size = 180,
  });

  @override
  ConsumerState<AlbumSquare> createState() => _AlbumSquareState();
}

class _AlbumSquareState extends ConsumerState<AlbumSquare>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final cover =
        ref.watch(getCoverArtProvider(GetCoverArtRequest(id: widget.coverArt)));

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.8),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Album Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: cover,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey[300],
                  child: const Icon(
                    Icons.album,
                    color: Colors.grey,
                    size: 40,
                  ),
                ),
              ),
            ),

            // Gradient overlay
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
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

            // Content overlay
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Genre and Year row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (widget.genre != null)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            widget.genre!,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: Colors.white.withValues(alpha: 0.6),
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      if (widget.year != null)
                        Text(
                          widget.year!.toString(),
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Colors.white.withValues(alpha: 0.1),
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                    ],
                  ),

                  const Spacer(),

                  // Album name
                  Text(
                    widget.name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  // Artist name
                  if (widget.artistName != null)
                    Text(
                      widget.artistName!,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: Colors.white.withValues(alpha: 0.6),
                            fontWeight: FontWeight.w500,
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
