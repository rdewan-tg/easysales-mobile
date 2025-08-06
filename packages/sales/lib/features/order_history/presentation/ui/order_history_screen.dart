part of sales;

class OrderHistoryScreen extends ConsumerStatefulWidget {
  const OrderHistoryScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends ConsumerState<OrderHistoryScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(orderHistoryControllerProvider.notifier).getOrderHistory();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainAppScaffold(
      isScrollable: false,
      actions: [
        MenuAnchor(
          menuChildren: [
            MenuItemButton(
              onPressed: () {
                context.push('/order-history/sales');
              },
              child: Text(context.localizations('orderHistory.createOrder')),
            ),
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
        ),
      ],
      widget: const OrderHistoryListView(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.push('/order-history/sales');
        },
        label: Text(context.localizations('orderHistory.createOrder')),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
