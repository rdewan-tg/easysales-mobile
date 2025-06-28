part of sales;

class OrderHistoryDetailScreen extends ConsumerStatefulWidget {
  final String salesId;

  const OrderHistoryDetailScreen({super.key, required this.salesId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OrderHistoryDetailScreenState();
}

class _OrderHistoryDetailScreenState
    extends ConsumerState<OrderHistoryDetailScreen>
    with ConfirmDialogMixin, SingleTickerProviderStateMixin {
  TabController? _tabController;
  static const List<Tab> _tabs = <Tab>[
    Tab(text: 'Sales Lines'),
    Tab(text: 'Items'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // set selected sales id
      ref.read(orderHistoryControllerProvider.notifier).setSelectedSalesId(
            widget.salesId,
          );
      // get order lines
      ref.read(orderHistoryControllerProvider.notifier).getOrderLines(
            widget.salesId,
          );
      // get sum on line amount
      ref.read(orderHistoryControllerProvider.notifier).getSumOnLineAmount(
            widget.salesId,
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations('orderHistory.title')),
        centerTitle: true,
        actions: [
          Consumer(
            builder: (context, ref, child) {
              final syncStatus = ref
                  .read(orderHistoryControllerProvider.notifier)
                  .getSyncStatus(widget.salesId);

              return MenuAnchor(
                menuChildren: [
                  if (syncStatus == 1 || syncStatus == 2)
                    ...[]
                  else ...[
                    MenuItemButton(
                      onPressed: syncStatus == 1 || syncStatus == 2
                          ? null
                          : () {
                              _cancelOrder();
                            },
                      child: Text(
                        context.localizations('orderHistory.cancelOrder'),
                      ),
                    ),
                  ],
                ],
                builder: (context, controller, child) {
                  return IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {
                      if (controller.isOpen) {
                        controller.close();
                      } else {
                        controller.open();
                      }
                    },
                  );
                },
              );
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          TabOrderHistoryDetail(),
          TabOrderHistoryItem(),
        ],
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
                    final salesLineCount = ref.watch(
                      orderHistoryControllerProvider
                          .select((value) => value.salesLines.length),
                    );
                    final syncStatus = ref
                        .read(orderHistoryControllerProvider.notifier)
                        .getSyncStatus(widget.salesId);

                    return IconButton.filledTonal(
                      onPressed: salesLineCount == 0 ||
                              syncStatus == 1 ||
                              syncStatus == 2
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

  void _cancelOrder() {
    showConfirmDialog(
      context: context,
      title: "Cancel Order".hardcoded,
      msg: "Are you sure you want to cancel this order?".hardcoded,
      btnYesText: context.localizations('profile.btnYes'),
      btnNoText: context.localizations('profile.btnNo'),
      icon: Icon(
        Icons.warning_outlined,
        color: context.themeColor.colorScheme.error,
      ),
      onYesTap: () {
        ref
            .read(orderHistoryControllerProvider.notifier)
            .cancelOrderHeader(widget.salesId);
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

    // listen for error
    ref.listen(
      orderHistoryControllerProvider.select((value) => value.isOrderCancelled),
      (_, next) {
        if (next) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              padding: const EdgeInsets.all(kSMedium),
              duration: const Duration(seconds: 5),
              content: Text(
                "Order cancelled successfully".hardcoded,
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
