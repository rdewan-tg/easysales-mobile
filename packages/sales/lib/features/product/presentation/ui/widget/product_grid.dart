part of sales;

class ProductGrid extends ConsumerStatefulWidget {
  final String priceGroup;
  final String salesId;
  const ProductGrid({
    super.key,
    required this.priceGroup,
    required this.salesId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductGridState();
}

class _ProductGridState extends ConsumerState<ProductGrid> {
  late PersistentBottomSheetController _bottomSheetController;
  late AnimationStyle _animationStyle;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    Future.microtask(() {
      ref.read(productControllerProvider.notifier).getSettings();
      ref.read(productControllerProvider.notifier).watchProducts();
      ref.read(productControllerProvider.notifier).watchPrices();
      ref.read(productControllerProvider.notifier).watchSearchProductHistory();
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _animationStyle = const AnimationStyle(
        duration: Duration(seconds: 1),
        reverseDuration: Duration(seconds: 1),
      );
    });
  }

  void _setScrollController() {
    final provider = ref.read(appScrollControllerProvider.notifier);
    provider.setScrollController(_scrollController);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final products = ref.watch(
      productControllerProvider.select((select) => select.products),
    );
    return VisibilityDetector(
      key: const Key('productGrid'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.5) {
          _setScrollController();
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(kSmall),
        child: AlignedGridView.count(
          controller: _scrollController,
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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kMedium),
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                    width: 0.5,
                  ),
                ),
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
      ),
    );
  }

  void _openProductDetailBottomSheet(String itemId) {
    // get the product uom
    ref
        .read(productControllerProvider.notifier)
        .getProductUom(itemId, widget.priceGroup);
    // get the product pack size
    ref
        .read(productControllerProvider.notifier)
        .getProductPackSize(itemId, widget.priceGroup);
    // show bottom sheet
    _bottomSheetController = showBottomSheet(
      context: context,
      sheetAnimationStyle: _animationStyle,
      builder: (context) {
        return SelectProductDetail(
          onClose: _closeBottomSheet,
          salesId: widget.salesId,
          itemId: itemId,
          priceGroup: widget.priceGroup,
        );
      },
    );
  }

  void _closeBottomSheet() => _bottomSheetController.close();
}
