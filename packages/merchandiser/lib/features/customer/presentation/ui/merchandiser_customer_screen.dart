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
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return ref
              .read(merchandiserCustomerProvider.notifier)
              .getMerchandiserCustomers();
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
