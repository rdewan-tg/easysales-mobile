part of sales;

class SearchSuggestion extends ConsumerWidget {
  final TextEditingController searchController;

  const SearchSuggestion({super.key, required this.searchController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchHistory = ref.watch(
      salesCustomerProvider.select(
        (value) => value.searchHistory,
      ),
    );

    if (searchHistory.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kMedium,
        vertical: kSmall,
      ),
      child: Wrap(
        runSpacing: kSmall,
        spacing: kSmall,
        children: searchHistory
            .map(
              (e) => Consumer(
                builder: (context, ref, child) {
                  final query = ref.watch(
                    salesCustomerProvider.select(
                      (value) => value.searchQuery,
                    ),
                  );

                  return ChoiceChip(
                    label: Text(e),
                    selected: e == query,
                    labelPadding: const EdgeInsets.all(kXXSmall),
                    labelStyle: context.textTheme.labelSmall?.copyWith(
                      color: e == query
                          ? Theme.of(context).scaffoldBackgroundColor
                          : null,
                    ),
                    checkmarkColor: e == query
                        ? Theme.of(context).scaffoldBackgroundColor
                        : null,
                    visualDensity: const VisualDensity(
                      horizontal: 0.0,
                      vertical: -4,
                    ),
                    selectedColor: Theme.of(context).primaryColorLight,
                    onSelected: (value) {
                      // set the selected chip text as controller text
                      searchController.text = e.toString();
                      // update the search query state
                      ref
                          .read(salesCustomerProvider.notifier)
                          .setSearchQuery(e);
                      // put the cursor to the end on the text
                      searchController.selection = TextSelection.collapsed(
                        offset: searchController.text.length,
                      );
                    },
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
