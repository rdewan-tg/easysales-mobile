part of merchandiser;

class MerchandiserCustomerScreen extends ConsumerStatefulWidget {
  const MerchandiserCustomerScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MerchandiserCustomerScreenState();
}

class _MerchandiserCustomerScreenState
    extends ConsumerState<MerchandiserCustomerScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // get the merchandiser customers
      ref
          .read(merchandiserCustomerProvider.notifier)
          .getMerchandiserCustomers();
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
              context.go('/merchandiser/search-merchandiser-customer');
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
    ref.invalidate(merchandiserCustomerProvider);

    // get the merchandiser customers
    return ref
        .read(merchandiserCustomerProvider.notifier)
        .getMerchandiserCustomers();
  }
}
