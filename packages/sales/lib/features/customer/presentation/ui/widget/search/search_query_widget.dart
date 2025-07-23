part of sales;

class SearchQueryWidget extends ConsumerWidget {
  const SearchQueryWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(
      salesCustomerProvider.select((value) => value.lastSearchQuery),
    );

    if (query.isEmpty) {
      return const SliverToBoxAdapter(child: SizedBox.shrink());
    }

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kSmall,
          vertical: kMedium,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: kSmall,
                vertical: kXSmall,
              ),
              decoration: ShapeDecoration(
                color: Theme.of(context).canvasColor,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.5, color: Colors.black),
                  borderRadius: BorderRadius.circular(kSmall),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(kXSmall),
                child: Row(
                  children: [
                    Text(
                      query,
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: kSmall),
                    GestureDetector(
                      onTap: () async {
                        // clear the search
                        await ref
                            .read(salesCustomerProvider.notifier)
                            .clearSearch();
                        // get the customers
                        ref
                            .read(salesCustomerProvider.notifier)
                            .watchSalesCustomers();
                      },
                      child: const Icon(Icons.clear_outlined, size: kMedium),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
