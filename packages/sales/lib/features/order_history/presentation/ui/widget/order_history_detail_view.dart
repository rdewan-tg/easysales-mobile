part of sales;

class OrderHistoryDetailView extends ConsumerStatefulWidget {
  const OrderHistoryDetailView({super.key});

  @override
  ConsumerState<OrderHistoryDetailView> createState() =>
      _OrderHistoryDetailViewState();
}

class _OrderHistoryDetailViewState extends ConsumerState<OrderHistoryDetailView>
    with ConfirmDialogMixin {
  late PersistentBottomSheetController _bottomSheetController;
  late AnimationStyle _animationStyle;

  @override
  void initState() {
    super.initState();
    _animationStyle = AnimationStyle(
      duration: const Duration(seconds: 1),
      reverseDuration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    final salesLines = ref.watch(
      orderHistoryControllerProvider.select((value) => value.salesLines),
    );

    if (salesLines.isEmpty) return const EmptyDataWidget();

    return ListView.separated(
      itemBuilder: (context, index) {
        final data = salesLines[index];
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(kSmall),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(data.itemId),
                    const Spacer(),
                    Consumer(
                      builder: (context, ref, child) {
                        return GestureDetector(
                          onTap: data.syncStatus == 1 || data.syncStatus == 2
                              ? null
                              : () {
                                  _openEditOrderBottomSheet(
                                    data.salesId,
                                    data.itemId,
                                    data.lineId,
                                  );
                                },
                          child: Icon(
                            Icons.edit_outlined,
                            color: data.syncStatus == 1 || data.syncStatus == 2
                                ? context.themeColor.disabledColor
                                : context.themeColor.colorScheme.secondary,
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: kMedium),
                    Consumer(
                      builder: (context, ref, child) {
                        return GestureDetector(
                          onTap: data.syncStatus == 1 || data.syncStatus == 2
                              ? null
                              : () {
                                  _deleteLine(data.salesId, data.lineId);
                                },
                          child: Icon(
                            Icons.delete_outline_outlined,
                            color: data.syncStatus == 1 || data.syncStatus == 2
                                ? context.themeColor.disabledColor
                                : context.themeColor.colorScheme.error,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Text(data.productName),
                Text(data.packSize),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(data.lineId.toString()),
                    Text(data.salesUnit),
                    Text(data.quantity.toStringAsFixed(0)),
                    Text(data.salesPrice.toStringAsFixed(2)),
                    Text(data.lineAmount.toStringAsFixed(2)),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: salesLines.length,
    );
  }

  void _openEditOrderBottomSheet(String salesId, String itemId, int lineId) {
    // get the price group
    final priceGroup = ref
        .read(orderHistoryControllerProvider.notifier)
        .getPriceGroup(salesId);
    // get the product uom
    ref.read(productControllerProvider.notifier).getProductUom(
          itemId,
          priceGroup,
        );
    // get the product pack size
    ref.read(productControllerProvider.notifier).getProductPackSize(
          itemId,
          priceGroup,
        );
    // show bottom sheet
    _bottomSheetController = showBottomSheet(
      context: context,
      sheetAnimationStyle: _animationStyle,
      builder: (context) {
        return EditOrderHistoryLineItem(
          onClose: _closeBottonSheet,
          salesId: salesId,
          itemId: itemId,
          priceGroup: priceGroup,
          lineId: lineId,
        );
      },
    );
  }

  void _closeBottonSheet() => _bottomSheetController.close();

  void _deleteLine(String salesId, int lineId) {
    showConfirmDialog(
      context: context,
      title: "Delete Line".hardcoded,
      msg: "Are you sure you want to delete this line?".hardcoded,
      btnYesText: context.localizations('profile.btnYes'),
      btnNoText: context.localizations('profile.btnNo'),
      icon: Icon(
        Icons.warning_outlined,
        color: context.themeColor.colorScheme.error,
      ),
      onYesTap: () {
        // delete customer account
        ref
            .read(salesLineControllerProvider.notifier)
            .deleteLine(salesId, lineId);
        // close dialog
        context.pop();
      },
      onNoTap: () {
        // close dialog
        context.pop();
      },
    );
  }
}
