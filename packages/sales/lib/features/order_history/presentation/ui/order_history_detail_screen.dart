part of sales;

class OrderHistoryDetailScreen extends ConsumerStatefulWidget {
  final String salesId;

  const OrderHistoryDetailScreen({super.key, required this.salesId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OrderHistoryDetailScreenState();
}

class _OrderHistoryDetailScreenState
    extends ConsumerState<OrderHistoryDetailScreen> {
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
                IconButton.filledTonal(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.upload_outlined,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
