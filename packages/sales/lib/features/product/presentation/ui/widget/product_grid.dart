part of sales;

class ProductGrid extends ConsumerStatefulWidget {
  const ProductGrid({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductGridState();
}

class _ProductGridState extends ConsumerState<ProductGrid> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(productControllerProvider.notifier).watchProducts();
      ref.read(productControllerProvider.notifier).watchPrices();
      ref.read(productControllerProvider.notifier).watchSearchProductHistory();
    });
  }

  @override
  Widget build(BuildContext context) {
    final products = ref
        .watch(productControllerProvider.select((select) => select.products));
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AlignedGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final data = products[index];
          return Card(
            elevation: kXSmall,
            shadowColor: context.themeColor.shadowColor,
            child: Padding(
              padding: const EdgeInsets.all(kMedium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    data.productName,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    data.itemId,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    data.itemGroup,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
