part of sales;

class TabItemScreen extends ConsumerStatefulWidget {
  const TabItemScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TabItemScreenState();
}

class _TabItemScreenState extends ConsumerState<TabItemScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Row(
            children: [
              const ItemSearchQueryWidget(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  top: kSmall,
                  right: kMedium,
                ),
                child: GestureDetector(
                  onTap: () {
                    context.push(
                      '/sales/create-order/search-product',
                    );
                  },
                  child: const Icon(
                    Icons.search_outlined,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: ProductGrid(),
        ),
      ],
    );
  }
}
