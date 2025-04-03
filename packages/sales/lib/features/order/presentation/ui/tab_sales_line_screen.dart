part of sales;

class TabSalesLineScreen extends ConsumerStatefulWidget {
  const TabSalesLineScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TabSalesLineScreenState();
}

class _TabSalesLineScreenState extends ConsumerState<TabSalesLineScreen>
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
    _listener();
    final salesLine = ref
        .watch(salesLineControllerProvider.select((value) => value.salesLines));

    if (salesLine.isEmpty) return const EmptyDataWidget();

    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          final data = salesLine[index];
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
                          final isOrderSynced = ref.watch(
                            salesLineControllerProvider
                                .select((value) => value.isOrderSynced),
                          );
                          return GestureDetector(
                            onTap: isOrderSynced
                                ? null
                                : () {
                                    _openEditOrderBottomSheet(
                                      data.itemId,
                                      data.lineId,
                                    );
                                  },
                            child: Icon(
                              Icons.edit_outlined,
                              color: isOrderSynced
                                  ? context.themeColor.disabledColor
                                  : context.themeColor.colorScheme.secondary,
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: kMedium),
                      Consumer(
                        builder: (context, ref, child) {
                          final isOrderSynced = ref.watch(
                            salesLineControllerProvider
                                .select((value) => value.isOrderSynced),
                          );
                          return GestureDetector(
                            onTap: isOrderSynced
                                ? null
                                : () {
                                    _deleteLine(data.salesId, data.lineId);
                                  },
                            child: Icon(
                              Icons.delete_outline_outlined,
                              color: isOrderSynced
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
        itemCount: salesLine.length,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(kMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  'Total Amount:'.hardcoded,
                  style: context.textTheme.titleMedium,
                ),
                const SizedBox(width: kSmall),
                Text(
                  ref
                      .read(salesLineControllerProvider.notifier)
                      .calCulculateTotalAmount()
                      .toStringAsFixed(2),
                  style: context.textTheme.titleMedium,
                ),
                const Spacer(),
                Consumer(
                  builder: (context, ref, child) {
                    final isOrderSynced = ref.watch(
                      syncOrderControllerProvider
                          .select((value) => value.isOrderSynced),
                    );
                    return IconButton.filledTonal(
                      onPressed: salesLine.isEmpty || isOrderSynced
                          ? null
                          : _syncOrder,
                      icon: const Icon(
                        Icons.upload_outlined,
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _syncOrder() {
    showConfirmDialog(
      context: context,
      title: "Upload Order".hardcoded,
      msg: "Are you sure you want to upload this order?".hardcoded,
      btnYesText: context.localizations('profile.btnYes'),
      btnNoText: context.localizations('profile.btnNo'),
      icon: Icon(
        Icons.warning_outlined,
        color: context.themeColor.colorScheme.error,
      ),
      onYesTap: () {
        final salesId =
            ref.read(salesHeaderControlelrProvider.notifier).getSalesId();
        ref.read(syncOrderControllerProvider.notifier).syncOrder(salesId);
        // close dialog
        context.pop();
      },
      onNoTap: () {
        // close dialog
        context.pop();
      },
    );
  }

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

  void _openEditOrderBottomSheet(String itemId, int lineId) {
    final priceGroup =
        ref.read(salesHeaderControlelrProvider.notifier).getPriceGroup();
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
        return EditLineItem(
          onClose: _closeBottonSheet,
          itemId: itemId,
          priceGroup: priceGroup,
          lineId: lineId,
        );
      },
    );
  }

  void _closeBottonSheet() => _bottomSheetController.close();

  void _listener() {
    // listen for error
    ref.listen(
      salesLineControllerProvider.select((value) => value.errorMsg),
      (_, next) {
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
      },
    );
    // listen for item removed
    ref.listen(
      salesLineControllerProvider.select((value) => value.isItemRemoved),
      (_, next) {
        if (next) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              padding: const EdgeInsets.all(kSMedium),
              duration: const Duration(seconds: 5),
              content: Text(
                "Item removed successfully".hardcoded,
              ),
            ),
          );
        }
      },
    );

    // listen for loading
    ref.listen(salesLineControllerProvider.select((value) => value.isLoading),
        (_, next) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });

    // listen for order sync success
    ref.listen(
      syncOrderControllerProvider.select((value) => value.isOrderSynced),
      (_, next) {
        if (next) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              padding: const EdgeInsets.all(kSMedium),
              duration: const Duration(seconds: 5),
              content: Text(
                "Order synced successfully".hardcoded,
              ),
            ),
          );
        }
      },
    );

    // listen for loading
    ref.listen(syncOrderControllerProvider.select((value) => value.isLoading),
        (_, next) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });

    // listen for error
    ref.listen(
      syncOrderControllerProvider.select((value) => value.errorMsg),
      (_, next) {
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
      },
    );
  }
}
