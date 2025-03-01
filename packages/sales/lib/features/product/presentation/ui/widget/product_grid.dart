part of sales;

class ProductGrid extends ConsumerStatefulWidget {
  final String priceGroup;
  const ProductGrid({super.key, required this.priceGroup});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductGridState();
}

class _ProductGridState extends ConsumerState<ProductGrid> {
  late PersistentBottomSheetController _bottomSheetController;
  late AnimationStyle _animationStyle;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _animationStyle = AnimationStyle(
        duration: const Duration(seconds: 1),
        reverseDuration: const Duration(seconds: 1),
      );
      ref.read(productControllerProvider.notifier).getSettings();
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
          return GestureDetector(
            onTap: () => _openProductDetailBottomSheet(data.itemId),
            child: Card(
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
            ),
          );
        },
      ),
    );
  }

  void _openProductDetailBottomSheet(String itemId) {
    // get the product uom
    ref.read(productControllerProvider.notifier).getProductUom(
          itemId,
          widget.priceGroup,
        );
    // get the product pack size
    ref.read(productControllerProvider.notifier).getProductPackSize(
          itemId,
          widget.priceGroup,
        );
    // show bottom sheet
    _bottomSheetController = showBottomSheet(
      context: context,
      sheetAnimationStyle: _animationStyle,
      builder: (context) {
        return SelectProductDetail(
          onClose: _closeBottonSheet,
          itemId: itemId,
          priceGroup: widget.priceGroup,
        );
      },
    );
  }

  void _closeBottonSheet() => _bottomSheetController.close();
}
