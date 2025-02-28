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
      ref.read(orderHistoryControllerProvider.notifier).getOrderHistorys();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations('orderHistory.title')),
        centerTitle: true,
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
      ),
      body: const OrderHistoryView(),
    );
  }
}
