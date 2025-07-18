part of sales;

class TabItemScreen extends ConsumerStatefulWidget {
  const TabItemScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TabItemScreenState();
}

class _TabItemScreenState extends ConsumerState<TabItemScreen> {
  @override
  Widget build(BuildContext context) {
    _listener();

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Row(
            children: [
              const ItemSearchQueryWidget(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: kSmall, right: kMedium),
                child: GestureDetector(
                  onTap: () {
                    context.push(
                      '/order-history/sales/create-order/search-product',
                    );
                  },
                  child: const Icon(Icons.search_outlined),
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: ProductGrid(
            priceGroup: ref
                .read(salesHeaderControllerProvider.notifier)
                .getPriceGroup(),
            salesId: ref
                .read(salesHeaderControllerProvider.notifier)
                .getSalesId(),
          ),
        ),
      ],
    );
  }

  void _listener() {
    // listen for error
    ref.listen(salesLineControllerProvider.select((value) => value.errorMsg), (
      _,
      next,
    ) {
      if (next != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            padding: const EdgeInsets.all(kSMedium),
            duration: const Duration(seconds: 5),
            backgroundColor: context.themeColor.colorScheme.error,
            content: Text(
              next,
              style: context.textTheme.titleSmall?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        );
      }
    });

    ref.listen(
      salesLineControllerProvider.select((value) => value.isItemAdded),
      (_, next) {
        if (next) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              padding: const EdgeInsets.all(kSMedium),
              duration: const Duration(seconds: 3),
              content: Text("Item added successfully".hardcoded),
            ),
          );
        }
      },
    );

    // listen for loading
    ref.listen(salesLineControllerProvider.select((value) => value.isLoading), (
      _,
      next,
    ) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });
  }
}
