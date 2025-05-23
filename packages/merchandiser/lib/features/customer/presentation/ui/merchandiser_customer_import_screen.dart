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
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(merchandiserCustomerProvider.notifier).clearTotalCustomerCount();
      ref
          .read(addressControllerProvider.notifier)
          .clearTotalCustomerAddressCount();
    });
  }

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
