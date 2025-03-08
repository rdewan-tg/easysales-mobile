part of sales;

class OrderHistoryDetailScreen extends ConsumerStatefulWidget {
  final String salesId;

  const OrderHistoryDetailScreen({super.key, required this.salesId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OrderHistoryDetailScreenState();
}

class _OrderHistoryDetailScreenState
    extends ConsumerState<OrderHistoryDetailScreen> with ConfirmDialogMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref
          .read(orderHistoryControllerProvider.notifier)
          .getOrderLines(widget.salesId);
    });
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations('orderHistory.title')),
        centerTitle: true,
      ),
      body: const OrderHistoryDetailView(),
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
                Consumer(
                  builder: (context, ref, child) {
                    final totalAmount = ref.watch(
                      orderHistoryControllerProvider
                          .select((value) => value.totalAmount),
                    );
                    return Text(
                      totalAmount.toStringAsFixed(2),
                      style: context.textTheme.titleMedium,
                    );
                  },
                ),
                const Spacer(),
                Consumer(
                  builder: (context, ref, child) {
                    final isOrderSynced = ref.watch(
                      orderHistoryControllerProvider
                          .select((value) => value.isOrderSynced),
                    );
                    return IconButton.filledTonal(
                      onPressed: isOrderSynced ? null : _syncOrder,
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
        ref
            .read(syncOrderControllerProvider.notifier)
            .syncOrder(widget.salesId);
        // close dialog
        context.pop();
      },
      onNoTap: () {
        // close dialog
        context.pop();
      },
    );
  }

  void _listener() {
    // listen for error
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

    // listen for success
    ref.listen(
      orderHistoryControllerProvider.select((value) => value.isItemEdited),
      (_, next) {
        if (next) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              padding: const EdgeInsets.all(kSMedium),
              duration: const Duration(seconds: 5),
              content: Text(
                "Order line updated successfully".hardcoded,
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
