part of merchandiser;

class MerchandiserCustomerImportScreen extends ConsumerStatefulWidget {
  const MerchandiserCustomerImportScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomerImportScreenState();
}

class _CustomerImportScreenState
    extends ConsumerState<MerchandiserCustomerImportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations('merchandiser.customerImport')),
      ),
      body: const MerchandiserCustomerImportView(),
    );
  }
}
