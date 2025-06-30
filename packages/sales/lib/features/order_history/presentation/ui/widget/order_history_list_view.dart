part of sales;

class OrderHistoryListView extends ConsumerStatefulWidget {
  const OrderHistoryListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OrderHistoryListViewState();
}

class _OrderHistoryListViewState extends ConsumerState<OrderHistoryListView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
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
    _listener();

    final salesHeaders = ref.watch(
      orderHistoryControllerProvider.select((value) => value.salesHeaders),
    );
    if (salesHeaders.isEmpty) {
      return const EmptyDataWidget();
    }
    return VisibilityDetector(
      key: const Key('orderHistoryView'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.5) {
          _setScrollController();
        }
      },
      child: ListView.builder(
        controller: _scrollController,
        itemCount: salesHeaders.length,
        itemBuilder: (context, index) {
          final data = salesHeaders[index];

          // Wrap with Dismissible for slide-to-delete functionality
          return Dismissible(
            // Unique key required for Dismissible
            key: Key(data.salesId),
            // Only allow swipe from right to left
            direction: DismissDirection.endToStart,
            // Background shown when swiping
            background: Container(
              color: context.themeColor.colorScheme.error,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20.0),
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            // Confirm before dismissing and perform deletion
            confirmDismiss: (direction) async {
              // First show confirmation dialog
              final confirmed = await showDialog<bool>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(
                      context.localizations('common.confirmDeleteTitle'),
                    ),
                    content: Text(
                      context.localizations('common.confirmDeleteMessage'),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: Text(context.localizations('common.cancel')),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: Text(context.localizations('common.delete')),
                      ),
                    ],
                  );
                },
              );

              // If user didn't confirm, don't dismiss
              if (confirmed != true) {
                return false;
              }

              // User confirmed, try to delete the order
              // Store current state to monitor for errors
              final initialErrorMsg =
                  ref.read(orderHistoryControllerProvider).errorMsg;

              // Perform delete operation
              await ref
                  .read(orderHistoryControllerProvider.notifier)
                  .deleteOrder(data.salesId);

              // Check if any error occurred during deletion
              final currentErrorMsg =
                  ref.read(orderHistoryControllerProvider).errorMsg;

              // Only dismiss if no new error occurred
              return initialErrorMsg == currentErrorMsg;
            },
            // onDismissed is now simpler since main logic is in confirmDismiss
            onDismissed: (direction) {},
            // The content of the dismissible item
            child: GestureDetector(
              onTap: () {
                context.push(
                  '/order-history/order-history-detail/${data.salesId}',
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(kSmall),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kMedium),
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      width: 0.5,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(kSmall),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(data.salesId),
                            const Spacer(),
                            Text(data.transactionDate),
                          ],
                        ),
                        const SizedBox(height: kSmall),
                        Text(data.customerName),
                        const SizedBox(height: kSmall),
                        Text(data.customerAddress),
                        const SizedBox(height: kSmall),
                        Row(
                          children: [
                            const Spacer(),
                            Consumer(
                              builder: (context, ref, child) {
                                return Chip(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(kSmall),
                                    side: BorderSide(
                                      color: data.syncStatus == 0
                                          ? context
                                              .themeColor.colorScheme.primary
                                          : data.syncStatus == 1
                                              ? context.themeColor.colorScheme
                                                  .secondary
                                              : context
                                                  .themeColor.colorScheme.error,
                                    ),
                                  ),
                                  labelPadding: const EdgeInsets.all(kXXSmall),
                                  visualDensity: const VisualDensity(
                                    horizontal: 0.0,
                                    vertical: -4,
                                  ),
                                  label: data.syncStatus == 0
                                      ? Text(
                                          context.localizations(
                                            'orderHistory.draft',
                                          ),
                                        )
                                      : data.syncStatus == 1
                                          ? Text(
                                              context.localizations(
                                                'orderHistory.synced',
                                              ),
                                            )
                                          : Text(
                                              context.localizations(
                                                'orderHistory.cancelled',
                                              ),
                                            ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _listener() {
    // listen for delete order
    ref.listen(
        orderHistoryControllerProvider.select((value) => value.isDeleteOrder),
        (previous, next) {
      if (next) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(context.localizations('orderHistory.orderDeleted')),
          ),
        );
      }
    });

    // listen for loading
    ref.listen(
        orderHistoryControllerProvider.select((value) => value.isLoading),
        (_, next) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });

    // listen for error
    ref.listen(
      orderHistoryControllerProvider.select((value) => value.errorMsg),
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
