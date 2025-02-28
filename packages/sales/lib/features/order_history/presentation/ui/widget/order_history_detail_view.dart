part of sales;

class OrderHistoryDetailView extends ConsumerStatefulWidget {
  const OrderHistoryDetailView({super.key});

  @override
  ConsumerState<OrderHistoryDetailView> createState() =>
      _OrderHistoryDetailViewState();
}

class _OrderHistoryDetailViewState extends ConsumerState<OrderHistoryDetailView>
    with ConfirmDialogMixin {
  @override
  Widget build(BuildContext context) {
    final salesLines = ref.watch(
      orderHistoryControllerProvider.select((value) => value.salesLines),
    );

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
                        final isOrderSynced = ref.watch(
                          orderHistoryControllerProvider
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
      itemCount: salesLines.length,
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
}
