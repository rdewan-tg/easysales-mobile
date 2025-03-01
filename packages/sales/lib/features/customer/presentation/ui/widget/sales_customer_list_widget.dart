part of sales;

class SalesCustomerListWidget extends ConsumerStatefulWidget {
  const SalesCustomerListWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomerListWidgetState();
}

class _CustomerListWidgetState extends ConsumerState<SalesCustomerListWidget> {
  late AnimationStyle _animationStyle;
  late PersistentBottomSheetController _bottomSheetController;

  @override
  void initState() {
    super.initState();
    _animationStyle = AnimationStyle(
      duration: const Duration(seconds: 1),
      reverseDuration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    final customer =
        ref.watch(salesCustomerProvider.select((value) => value.customers));

    if (customer.isEmpty) {
      return const SliverFillRemaining(child: EmptyDataWidget());
    }

    return SliverList.builder(
      itemCount: customer.length,
      itemBuilder: (context, index) {
        final data = customer[index];

        return GestureDetector(
          onTap: () => _showAddressBottomSheet(
            data.customerName,
            data.customerId,
            data.priceGroup ?? '-',
          ),
          child: Card(
            margin: const EdgeInsets.symmetric(
              horizontal: kMedium,
              vertical: kSmall,
            ),
            elevation: kXSmall,
            child: Padding(
              padding: const EdgeInsets.all(kSmall),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.customerId,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: kXSmall),
                  Text(data.customerName),
                  const SizedBox(height: kXSmall),
                  Chip(
                    visualDensity: const VisualDensity(
                      horizontal: -4,
                      vertical: -4,
                    ), // Reduce overall padding
                    label: Text(
                      data.customreDimension ?? '-',
                      style: context.textTheme.labelSmall, // Reduce text size
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(kSmall), // Customize shape
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _listener() {
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

    // listen for error
    ref.listen(
      salesCustomerProvider.select((value) => value.isSearchHistoryCleared),
      (_, next) {
        if (next) {
          //  get the count
          final count = ref
              .read(salesCustomerProvider.notifier)
              .getTotalSearchHistoryCleared();
          // show snackbar
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 3),
              content: Text(
                '$count searched history cleared'.hardcoded,
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
  }

  void _showAddressBottomSheet(
    String customerName,
    String customerId,
    String priceGroup,
  ) {
    _bottomSheetController = showBottomSheet(
      context: context,
      sheetAnimationStyle: _animationStyle,
      builder: (BuildContext context) {
        return CustomerAddressListWidget(
          onClose: _closeBottonSheet,
          customerName: customerName,
          customerId: customerId,
          priceGroup: priceGroup,
        );
      },
    );
  }

  void _closeBottonSheet() => _bottomSheetController.close();
}
