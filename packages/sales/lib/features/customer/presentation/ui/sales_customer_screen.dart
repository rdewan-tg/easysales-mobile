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
      ref.read(salesCustomerProvider.notifier).getSalesCustomers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer'.hardcoded),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.go('/sales/search-sales-customer');
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
            CustomerListWidget(),
          ],
        ),
      ),
    );
  }

  Future<void> _onRefresh() async {
    // invalidate the provider
    ref.invalidate(salesCustomerProvider);

    // get the sales customers
    return ref.read(salesCustomerProvider.notifier).getSalesCustomers();
  }
}
