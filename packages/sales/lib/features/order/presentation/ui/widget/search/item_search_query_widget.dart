part of sales;

class ItemSearchQueryWidget extends ConsumerWidget {
  const ItemSearchQueryWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(
      productControllerProvider.select((value) => value.lastSearchQuery),
    );

    if (query.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
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
                side: BorderSide(
                  width: 0.5,
                  color: context.themeColor.highlightColor,
                ),
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
                          .read(productControllerProvider.notifier)
                          .clearSearchProduct();
                      // get the customers
                      ref
                          .read(productControllerProvider.notifier)
                          .watchProducts();
                    },
                    child: const Icon(Icons.clear_outlined, size: kMedium),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
