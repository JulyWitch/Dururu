import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenreBadge extends StatelessWidget {
  final String name;
  final int? songCount;
  final int? albumCount;
  final VoidCallback onTap;

  const GenreBadge({
    super.key,
    required this.name,
    required this.songCount,
    required this.albumCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: AlignmentDirectional.centerStart,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).colorScheme.surfaceTint.withValues(alpha: 0.3),
              Theme.of(context).colorScheme.surfaceTint.withValues(alpha: 0.05),
            ],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name.length > 20 ? '${name.substring(0, 20)}...' : name,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              if (albumCount != null && songCount != null) ...[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          albumCount.toString(),
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.8),
                                  ),
                        ),
                        const SizedBox(width: 4),
                        Icon(
                          CupertinoIcons.music_albums,
                          size: 14,
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withValues(alpha: 0.8),
                        ),
                      ],
                    ),
                    Container(
                      height: 12,
                      width: 1,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.white.withValues(alpha: 0.7),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          songCount.toString(),
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.8),
                                  ),
                        ),
                        const SizedBox(width: 4),
                        Icon(
                          CupertinoIcons.double_music_note,
                          size: 14,
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withValues(alpha: 0.8),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
