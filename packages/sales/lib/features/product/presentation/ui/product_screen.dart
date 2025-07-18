part of sales;

class ProductScreen extends ConsumerStatefulWidget {
  final Map<String, dynamic> extras;

  const ProductScreen({super.key, required this.extras});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductScreenState();
}

class _ProductScreenState extends ConsumerState<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product'.hardcoded)),
      body: ProductGrid(
        priceGroup: widget.extras['priceGroup'],
        salesId: widget.extras['salesId'],
      ),
    );
  }
}
