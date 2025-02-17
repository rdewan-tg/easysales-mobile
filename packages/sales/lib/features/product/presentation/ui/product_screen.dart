part of sales;

class ProductScreen extends ConsumerStatefulWidget {
  final Map<String, dynamic> extras;

  const ProductScreen({super.key, required this.extras});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductScreenState();
}

class _ProductScreenState extends ConsumerState<ProductScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref
          .read(productControllerProvider.notifier)
          .setSearchProductQuery(widget.extras['priceGroup']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'.hardcoded),
      ),
      body: const ProductGrid(),
    );
  }
}
