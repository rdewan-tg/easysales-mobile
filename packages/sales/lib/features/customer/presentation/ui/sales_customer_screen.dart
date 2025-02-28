part of sales;

class SalesCustomerScreen extends ConsumerStatefulWidget {
  const SalesCustomerScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SalesCustomerScreenState();
}

class _SalesCustomerScreenState extends ConsumerState<SalesCustomerScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(salesCustomerProvider.notifier).watchSalesCustomers();
      ref.read(productControllerProvider.notifier).watchProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations('sales.title')),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.go('/order-history/sales/search-sales-customer');
            },
            icon: const Icon(Icons.search_outlined),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: const CustomScrollView(
          slivers: [
            SearchQueryWidget(),
            SalesCustomerListWidget(),
          ],
        ),
      ),
    );
  }

  Future<void> _onRefresh() async {}
}
