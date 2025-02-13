part of sales;

class ProductImportView extends ConsumerStatefulWidget {
  const ProductImportView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductImportViewState();
}

class _ProductImportViewState extends ConsumerState<ProductImportView> {
  @override
  Widget build(BuildContext context) {
    _listener();

    return Column(
      children: [
        ElevatedButton.icon(
          onPressed: () {
            ref.read(productControllerProvider.notifier).importProduct();
          },
          label: Text('Import Product'.hardcoded),
          icon: const Icon(Icons.import_export),
        ),
        const SizedBox(height: kSmall),
        ElevatedButton.icon(
          onPressed: () {
            ref.read(productControllerProvider.notifier).importProductPrice();
          },
          label: Text('Import Price'.hardcoded),
          icon: const Icon(Icons.import_export),
        ),
      ],
    );
  }

  void _listener() {
    // listen for error
    ref.listen(
      productControllerProvider.select((value) => value.errorMsg),
      (_, next) {
        if (next != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 5),
              backgroundColor: Colors.red,
              content: Text(
                next,
                style: context.textTheme.titleSmall?.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          );
        }
      },
    );

    // listen for loading
    ref.listen(productControllerProvider.select((value) => value.isLoading),
        (_, next) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });
  }
}
