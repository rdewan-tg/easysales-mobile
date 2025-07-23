part of merchandiser;

class MerchandiserCustomerImportView extends ConsumerStatefulWidget {
  const MerchandiserCustomerImportView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomerImportViewState();
}

class _CustomerImportViewState
    extends ConsumerState<MerchandiserCustomerImportView> {
  @override
  Widget build(BuildContext context) {
    _listener();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(
            builder: (context, ref, child) {
              final totalCustomerCount = ref.watch(
                merchandiserCustomerProvider.select(
                  (value) => value.totalCustomerCount,
                ),
              );
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      ref
                          .read(merchandiserCustomerProvider.notifier)
                          .importMerchandiserCustomers();
                    },
                    label: Text(
                      context.localizations('merchandiser.customerImport'),
                    ),
                    icon: const Icon(Icons.import_export),
                  ),
                  if (totalCustomerCount > 0) ...[
                    const SizedBox(width: kSmall),
                    Text(
                      'Imported ($totalCustomerCount)',
                      style: context.textTheme.titleSmall?.copyWith(
                        color: context.themeColor.colorScheme.primary,
                      ),
                    ),
                  ],
                ],
              );
            },
          ),
          const SizedBox(height: kSmall),
          Consumer(
            builder: (context, ref, child) {
              final totalAddressCount = ref.watch(
                addressControllerProvider.select(
                  (value) => value.totalAddressCount,
                ),
              );
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      ref
                          .read(addressControllerProvider.notifier)
                          .importCustomerAddresses();
                    },
                    label: Text(
                      context.localizations('merchandiser.addressImport'),
                    ),
                    icon: const Icon(Icons.import_export),
                  ),
                  if (totalAddressCount > 0) ...[
                    const SizedBox(width: kSmall),
                    Text(
                      'Imported ($totalAddressCount)',
                      style: context.textTheme.titleSmall?.copyWith(
                        color: context.themeColor.colorScheme.primary,
                      ),
                    ),
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  void _listener() {
    // listen for error
    ref.listen(addressControllerProvider.select((value) => value.errorMsg), (
      _,
      next,
    ) {
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
    });

    // listen for status
    ref.listen(
      merchandiserCustomerProvider.select((value) => value.isCustomerImported),
      (_, next) {
        if (next) {
          // clear the address import status
          ref
              .read(merchandiserCustomerProvider.notifier)
              .clearIsCustomerImported();
          //show success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 5),
              backgroundColor: context.themeColor.colorScheme.secondary,
              content: Text(
                "Cool! Customer Imported Successfully.",
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
              duration: const Duration(seconds: 5),
              backgroundColor: context.themeColor.colorScheme.secondary,
              content: Text(
                "Cool! Address Imported Successfully.",
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
    ref.listen(merchandiserCustomerProvider.select((value) => value.errorMsg), (
      _,
      next,
    ) {
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
    });

    // listen for error in address controller
    ref.listen(addressControllerProvider.select((value) => value.errorMsg), (
      _,
      next,
    ) {
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
    });

    // listen for loading
    ref.listen(
      merchandiserCustomerProvider.select((value) => value.isLoading),
      (_, next) {
        if (next) {
          context.loaderOverlay.show();
        } else {
          context.loaderOverlay.hide();
        }
      },
    );

    // listen for loading in address controller
    ref.listen(addressControllerProvider.select((value) => value.isLoading), (
      _,
      next,
    ) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });
  }
}
