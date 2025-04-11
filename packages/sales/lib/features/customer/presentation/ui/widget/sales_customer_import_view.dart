part of sales;

class SalesCustomerImportView extends ConsumerStatefulWidget {
  const SalesCustomerImportView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomerImportViewState();
}

class _CustomerImportViewState extends ConsumerState<SalesCustomerImportView> {
  @override
  Widget build(BuildContext context) {
    _listener();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: () {
              ref.read(salesCustomerProvider.notifier).importSalesCustomers();
            },
            label: Text(context.localizations('sales.customerImport')),
            icon: const Icon(Icons.import_export),
          ),
          const SizedBox(height: kSmall),
          ElevatedButton.icon(
            onPressed: () {
              ref
                  .read(addressControllerProvider.notifier)
                  .importCustomerAddresses();
            },
            label: Text(context.localizations('sales.addressImport')),
            icon: const Icon(Icons.import_export),
          ),
          const SizedBox(height: kSmall),
        ],
      ),
    );
  }

  void _listener() {
    // listen for error
    ref.listen(
      addressControllerProvider.select((value) => value.errorMsg),
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

    // listen for status
    ref.listen(
      salesCustomerProvider.select((value) => value.isCustomerImported),
      (_, next) {
        if (next) {
          // clear the customer import status
          ref.read(salesCustomerProvider.notifier).clearIsCustomerImported();
          //show success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 3),
              backgroundColor: context.themeColor.colorScheme.secondary,
              content: Text(
                "Cool! Customer Imported Successfully".hardcoded,
                style: context.textTheme.titleSmall?.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          );
        }
      },
    );

    // listen for status
    ref.listen(
      addressControllerProvider.select((value) => value.isAddressImported),
      (_, next) {
        if (next) {
          // clear the address import status
          ref.read(addressControllerProvider.notifier).clearIsAddressImported();
          //show success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 3),
              backgroundColor: context.themeColor.colorScheme.secondary,
              content: Text(
                "Cool! Address Imported Successfully".hardcoded,
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
      salesCustomerProvider.select((value) => value.errorMsg),
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

    // listen for loading
    ref.listen(salesCustomerProvider.select((value) => value.isLoading),
        (_, next) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });

    // listen for error in address controller
    ref.listen(
      addressControllerProvider.select((value) => value.errorMsg),
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

    // listen for loading in address controller
    ref.listen(addressControllerProvider.select((value) => value.isLoading),
        (_, next) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });
  }
}
