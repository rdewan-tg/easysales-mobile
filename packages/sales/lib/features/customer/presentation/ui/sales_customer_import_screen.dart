part of sales;

class SalesCustomerImportScreen extends ConsumerStatefulWidget {
  const SalesCustomerImportScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomerImportScreenState();
}

class _CustomerImportScreenState
    extends ConsumerState<SalesCustomerImportScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(salesCustomerProvider.notifier).clearTotalCustomerImported();
      ref
          .read(addressControllerProvider.notifier)
          .clearTotalCustomerAddressCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations('sales.customerImport')),
      ),
      body: const SalesCustomerImportView(),
    );
  }
}
