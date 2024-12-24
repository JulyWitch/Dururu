class PaginationState<T> {
  final List<T> items;
  final bool isLoading;
  final bool hasMore;
  final int offset;

  const PaginationState({
    this.items = const [],
    this.isLoading = false,
    this.hasMore = true,
    this.offset = 0,
  });

  PaginationState<T> copyWith({
    List<T>? items,
    bool? isLoading,
    bool? hasMore,
    int? offset,
  }) {
    return PaginationState(
      items: items ?? this.items,
      isLoading: isLoading ?? this.isLoading,
      hasMore: hasMore ?? this.hasMore,
      offset: offset ?? this.offset,
    );
  }
}
