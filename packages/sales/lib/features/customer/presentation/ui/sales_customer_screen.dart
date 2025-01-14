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
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return ref.read(salesCustomerProvider.notifier).getSalesCustomers();
        },
        child: const CustomScrollView(
          slivers: [
            CustomerListWidget(),
          ],
        ),
      ),
    );
  }
}
