import 'package:dururu/presentation/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ArtistCircle extends StatelessWidget {
  final String name;
  final String? imageUrl;
  final VoidCallback onTap;

  const ArtistCircle({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.9),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipOval(
              child: CachedNetworkImage(
                imageUrl: imageUrl ?? '',
                fit: BoxFit.cover,
                width: 80,
                height: 80,
                placeholder: (context, url) => Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: LoadingIndicator(),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey[300],
                  child: const Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 40,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withValues(alpha: 0.4),
                      Colors.black.withValues(alpha: 0.4),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  name,
                  style: Theme.of(context).textTheme.labelSmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
