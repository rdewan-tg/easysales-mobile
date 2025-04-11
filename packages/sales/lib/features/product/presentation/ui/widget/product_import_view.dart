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

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(200, 50),
            ),
            onPressed: () {
              ref.read(productControllerProvider.notifier).importProduct();
            },
            label: Text(context.localizations('product.importProduct')),
            icon: const Icon(Icons.import_export),
          ),
          const SizedBox(height: kLarge),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(200, 50),
            ),
            onPressed: () {
              ref.read(productControllerProvider.notifier).importProductPrice();
            },
            label: Text(context.localizations('product.importPrice')),
            icon: const Icon(Icons.import_export),
          ),
        ],
      ),
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
              backgroundColor: context.themeColor.colorScheme.error,
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

    // listen for error
    ref.listen(
      productControllerProvider.select((value) => value.isProductImported),
      (_, next) {
        if (next) {
          // clear the product import status
          ref.read(productControllerProvider.notifier).clearIsProductImported();
          //show success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 3),
              backgroundColor: context.themeColor.colorScheme.secondary,
              content: Text(
                "Cool! Product Imported Successfully",
                style: context.textTheme.titleSmall?.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          );
        }
      },
    );

    // listen for error
    ref.listen(
      productControllerProvider.select((value) => value.isPriceImported),
      (_, next) {
        if (next) {
          // clear the product import status
          ref.read(productControllerProvider.notifier).clearIsPriceImported();
          //show success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 3),
              backgroundColor: context.themeColor.colorScheme.secondary,
              content: Text(
                "Cool! Price Imported Successfully".hardcoded,
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
