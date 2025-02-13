part of merchandiser;

class CustomerImportView extends ConsumerStatefulWidget {
  const CustomerImportView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomerImportViewState();
}

class _CustomerImportViewState extends ConsumerState<CustomerImportView> {
  @override
  Widget build(BuildContext context) {
    _listener();

    return Column(
      children: [
        ElevatedButton.icon(
          onPressed: () {
            ref
                .read(merchandiserCustomerProvider.notifier)
                .importMerchandiserCustomers();
          },
          label: Text('Import Customer'.hardcoded),
          icon: const Icon(Icons.import_export),
        ),
        const SizedBox(height: kSmall),
      ],
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

    // listen for error
    ref.listen(
      merchandiserCustomerProvider.select((value) => value.errorMsg),
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
    ref.listen(merchandiserCustomerProvider.select((value) => value.isLoading),
        (_, next) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });
  }
}
