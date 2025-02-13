part of merchandiser;

class CustomerImportScreen extends ConsumerStatefulWidget {
  const CustomerImportScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomerImportScreenState();
}

class _CustomerImportScreenState extends ConsumerState<CustomerImportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Import'.hardcoded),
      ),
      body: const CustomerImportView(),
    );
  }
}
