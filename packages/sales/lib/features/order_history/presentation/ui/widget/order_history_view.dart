part of sales;

class OrderHistoryView extends ConsumerStatefulWidget {
  const OrderHistoryView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OrderHistoryViewState();
}

class _OrderHistoryViewState extends ConsumerState<OrderHistoryView> {
  @override
  Widget build(BuildContext context) {
    final salesHeaders = ref.watch(
      orderHistoryControllerProvider.select((value) => value.salesHeaders),
    );
    if (salesHeaders.isEmpty) {
      return const EmptyDataWidget();
    }
    return ListView.builder(
      itemCount: salesHeaders.length,
      itemBuilder: (context, index) {
        final data = salesHeaders[index];

        return GestureDetector(
          onTap: () {
            context.push(
              '/order-history/order-history-detail/${data.salesId}',
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(kSmall),
            child: Card(
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
                                      ? context.themeColor.colorScheme.primary
                                      : data.syncStatus == 1
                                          ? context
                                              .themeColor.colorScheme.secondary
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
                                        'orderHistory.pending',
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
        );
      },
    );
  }
}
