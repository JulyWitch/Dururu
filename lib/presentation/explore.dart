import 'package:cached_network_image/cached_network_image.dart';
import 'package:dururu/models/subsonic.dart';
import 'package:dururu/providers/audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dururu/providers/subsonic_apis.dart';

class ExplorePage extends ConsumerStatefulWidget {
  const ExplorePage({super.key});

  @override
  ConsumerState<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends ConsumerState<ExplorePage> {
  final Set<String> selectedGenres = {};
  final ScrollController scrollController = ScrollController();
  List<Child> allSongs = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_onScroll);
    loadMoreSongs();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 500) {
      loadMoreSongs();
    }
  }

  Future<void> loadMoreSongs() async {
    if (isLoading) return;

    setState(() {
      isLoading = true;
    });

    try {
      final response = await ref.read(
        getRandomSongsProvider(
          GetRandomSongsRequest(
            genre: selectedGenres.isEmpty ? null : selectedGenres.first,
            size: 100,
          ),
        ).future,
      );

      if (response.randomSongs?.song != null) {
        setState(() {
          allSongs.addAll(response.randomSongs!.song!);
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> showFilterBottomSheet() async {
    final result = await showModalBottomSheet<Set<String>>(
      context: context,
      backgroundColor: Theme.of(context).cardColor,
      useRootNavigator: true,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (context) => FilterBottomSheet(
        initialSelectedGenres: selectedGenres,
      ),
    );

    if (result != null) {
      selectedGenres.clear();
      selectedGenres.addAll(result);
      allSongs = [];
      setState(() {});
      loadMoreSongs();
    }
  }

  void removeAllGenres() {
    setState(() {
      selectedGenres.clear();
      allSongs = [];
    });
    loadMoreSongs();
  }

  void removeGenre(String genre) {
    setState(() {
      selectedGenres.remove(genre);
      allSongs = [];
    });
    loadMoreSongs();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverAppBar(
            pinned: true,
            actions: [
              if (selectedGenres.isEmpty)
                SizedBox(
                  width: MediaQuery.of(context).size.width - 48,
                  child: MoodSelector(
                    availableGenres: ref
                            .watch(getGenresProvider)
                            .whenData((data) =>
                                data.genres?.genre
                                    ?.map((g) => g.value)
                                    .toList() ??
                                [])
                            .value ??
                        [],
                    onGenresSelected: (genres) {
                      setState(() {
                        selectedGenres.clear();
                        selectedGenres.addAll(genres);
                        allSongs.clear();
                      });
                      loadMoreSongs();
                    },
                  ),
                ),
              if (selectedGenres.isNotEmpty) ...[
                SizedBox(
                  width: MediaQuery.of(context).size.width - 48 * 2,
                  height: 40,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    itemCount: selectedGenres.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 4),
                    itemBuilder: (context, index) {
                      final genre = selectedGenres.elementAt(index);
                      return Chip(
                        label: Text(
                          genre,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        deleteIcon: const Icon(Icons.close, size: 16),
                        onDeleted: () => removeGenre(genre),
                        backgroundColor: theme.primaryColor,
                        visualDensity: VisualDensity.compact,
                      );
                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.clear_all),
                  onPressed: removeAllGenres,
                ),
              ],
              IconButton(
                icon: const Icon(Icons.filter_list),
                onPressed: showFilterBottomSheet,
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(2),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 1,
                maxCrossAxisExtent: 140,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index >= allSongs.length) {
                    return null;
                  }
                  final song = allSongs[index];
                  return GestureDetector(
                    onTap: () {
                      ref.read(audioProvider.notifier).playQueue(
                            allSongs,
                            initialIndex: index,
                          );
                    },
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Hero(
                          tag: 'song-${song.id}',
                          child: CachedNetworkImage(
                            imageUrl: ref.watch(
                              getCoverArtProvider(
                                GetCoverArtRequest(id: song.coverArt),
                              ),
                            ),
                            cacheKey: GetCoverArtRequest(id: song.coverArt)
                                .hashCode
                                .toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withValues(alpha: 0.7),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8,
                          right: 8,
                          bottom: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                song.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: allSongs.length + (isLoading ? 1 : 0),
              ),
            ),
          ),
          if (isLoading)
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
          const SliverToBoxAdapter(child: SizedBox(height: 140)),
        ],
      ),
    );
  }
}

class FilterBottomSheet extends StatefulWidget {
  final Set<String> initialSelectedGenres;

  const FilterBottomSheet({
    super.key,
    required this.initialSelectedGenres,
  });

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  late Set<String> selectedGenres;

  @override
  void initState() {
    super.initState();
    selectedGenres = Set<String>.from(widget.initialSelectedGenres);
  }

  void _handleGenreSelection(String genre, bool selected) {
    setState(() {
      if (selected) {
        selectedGenres.add(genre);
      } else {
        selectedGenres.remove(genre);
      }
    });
  }

  void clearAll() {
    selectedGenres.clear();
    setState(() {});
  }

  void applyFilters() {
    Navigator.pop(context, selectedGenres);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Filters',
                style: theme.textTheme.titleLarge,
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Consumer(
            builder: (context, ref, child) {
              final genres = ref.watch(getGenresProvider);

              return genres.when(
                data: (data) => Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: (data.genres?.genre ?? [])
                      .map((genre) => FilterChip(
                            label: Text(genre.value),
                            selected: selectedGenres.contains(genre.value),
                            onSelected: (selected) =>
                                _handleGenreSelection(genre.value, selected),
                            selectedColor: theme.primaryColor,
                            checkmarkColor: Colors.white,
                            labelStyle: TextStyle(
                              color: selectedGenres.contains(genre.value)
                                  ? Colors.white
                                  : null,
                            ),
                          ))
                      .toList(),
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (_, __) => const Text('Failed to load genres'),
              );
            },
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (selectedGenres.isNotEmpty)
                TextButton(
                  onPressed: clearAll,
                  child: const Text('Clear All'),
                ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: applyFilters,
                child: const Text('Apply'),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class MoodData {
  final String name;
  final List<String> genreKeywords;
  final IconData icon;

  const MoodData({
    required this.name,
    required this.genreKeywords,
    required this.icon,
  });
}

final moodsList = [
  const MoodData(
    name: 'Relaxing',
    icon: Icons.spa,
    genreKeywords: [
      'ambient',
      'classical',
      'jazz',
      'acoustic',
      'meditation',
      'instrumental',
      'chill',
      'lounge',
      'new age',
      'lofi',
      'smooth',
      'calm',
      'serene',
    ],
  ),
  const MoodData(
    name: 'Party',
    icon: Icons.celebration,
    genreKeywords: [
      'dance',
      'electronic',
      'pop',
      'disco',
      'house',
      'edm',
      'club',
      'hip-hop',
      'reggaeton',
      'latin',
      'upbeat',
      'festival',
      'techno',
      'trap',
    ],
  ),
  const MoodData(
    name: 'Focus',
    icon: Icons.psychology,
    genreKeywords: [
      'minimal',
      'classical',
      'instrumental',
      'piano',
      'study',
      'ambient',
      'background',
      'concentration',
      'chill',
      'lofi',
      'soft',
      'calm',
    ],
  ),
  const MoodData(
    name: 'Energetic',
    icon: Icons.bolt,
    genreKeywords: [
      'rock',
      'metal',
      'punk',
      'dance',
      'electronic',
      'workout',
      'power',
      'upbeat',
      'pop rock',
      'hard rock',
      'techno',
      'fast',
      'intense',
    ],
  ),
  const MoodData(
    name: 'Romantic',
    icon: Icons.favorite,
    genreKeywords: [
      'love',
      'jazz',
      'soul',
      'rnb',
      'ballad',
      'acoustic',
      'romantic',
      'slow',
      'smooth',
      'intimate',
      'soft rock',
      'serenade',
    ],
  ),
  const MoodData(
    name: 'Adventurous',
    icon: Icons.explore,
    genreKeywords: [
      'epic',
      'orchestral',
      'cinematic',
      'soundtrack',
      'folk',
      'world',
      'rock',
      'exploration',
      'upbeat',
      'power',
      'heroic',
    ],
  ),
  const MoodData(
    name: 'Melancholic',
    icon: Icons.mood_bad,
    genreKeywords: [
      'sad',
      'slow',
      'acoustic',
      'piano',
      'ballad',
      'ambient',
      'folk',
      'indie',
      'blues',
      'emotional',
      'reflective',
      'nostalgic',
    ],
  ),
  const MoodData(
    name: 'Uplifting',
    icon: Icons.sunny,
    genreKeywords: [
      'pop',
      'soul',
      'gospel',
      'happy',
      'dance',
      'upbeat',
      'electronic',
      'motivational',
      'optimistic',
      'bright',
      'cheerful',
    ],
  ),
];

class MoodSelector extends ConsumerWidget {
  final List<String> availableGenres;
  final Function(Set<String>) onGenresSelected;

  const MoodSelector({
    super.key,
    required this.availableGenres,
    required this.onGenresSelected,
  });

  Set<String> _findMatchingGenres(MoodData mood) {
    final matchingGenres = availableGenres
        .where((genre) => mood.genreKeywords.any(
            (keyword) => genre.toLowerCase().contains(keyword.toLowerCase())))
        .toSet();
    return matchingGenres;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    // Filter out moods that don't have any matching genres
    final validMoods = moodsList
        .where((mood) => _findMatchingGenres(mood).isNotEmpty)
        .toList();

    if (validMoods.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: validMoods.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final mood = validMoods[index];
          return ActionChip(
            avatar: Icon(
              mood.icon,
              size: 18,
              color: theme.primaryColor,
            ),
            label: Text(
              mood.name,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.primaryColor,
              ),
            ),
            backgroundColor: theme.cardColor,
            side: BorderSide(color: theme.primaryColor),
            onPressed: () {
              final matchingGenres = _findMatchingGenres(mood);
              onGenresSelected(matchingGenres);
            },
          );
        },
      ),
    );
  }
}
