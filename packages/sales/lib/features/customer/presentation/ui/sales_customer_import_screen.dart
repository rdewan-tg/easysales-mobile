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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations('sales.customerImport')),
      ),
      body: const SalesCustomerImportView(),
    );
  }
}
