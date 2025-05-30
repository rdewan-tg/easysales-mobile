part of sales;

class ItemClearSearchHistory extends ConsumerWidget {
  const ItemClearSearchHistory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchHistory = ref.watch(
      productControllerProvider.select(
        (value) => value.searchHistory,
      ),
    );

    if (searchHistory.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSmall),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(),
          GestureDetector(
            onTap: () async {
              _clearSearchHistory(ref, context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: kSmall,
                vertical: kXSmall,
              ),
              decoration: ShapeDecoration(
                color: Theme.of(context).canvasColor,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 0.5,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(kSmall),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(kXSmall),
                child: Row(
                  children: [
                    Text(
                      context.localizations('sales.clearSearchHistory'),
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      width: kSmall,
                    ),
                    const Icon(
                      Icons.clear_outlined,
                      size: kMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _clearSearchHistory(WidgetRef ref, BuildContext context) async {
    // clear the product search
    await ref.read(productControllerProvider.notifier).clearSearchProduct();
    // clear the search history
    await ref
        .read(productControllerProvider.notifier)
        .clearSearchProductHistory();
    // get the customer from db
    await ref.read(productControllerProvider.notifier).watchProducts();
    // pop the current search screen
    if (!context.mounted) return;
    context.pop();
  }
}
