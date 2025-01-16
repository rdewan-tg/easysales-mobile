part of merchandiser;

enum AnimationStyles { defaultStyle, custom, none }

const List<(AnimationStyles, String)> animationStyleSegments =
    <(AnimationStyles, String)>[
  (AnimationStyles.defaultStyle, 'Default'),
  (AnimationStyles.custom, 'Custom'),
  (AnimationStyles.none, 'None'),
];

class CustomerListWidget extends ConsumerStatefulWidget {
  const CustomerListWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomerListWidgetState();
}

class _CustomerListWidgetState extends ConsumerState<CustomerListWidget> {
  late AnimationStyle _animationStyle;
  late PersistentBottomSheetController _bottomSheetController;

  @override
  void initState() {
    super.initState();
    _animationStyle = AnimationStyle(
      duration: const Duration(seconds: 1),
      reverseDuration: const Duration(seconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    final customer = ref
        .watch(merchandiserCustomerProvider.select((value) => value.customers));

    return SliverList.builder(
      itemCount: customer.length,
      itemBuilder: (context, index) {
        final data = customer[index];

        return GestureDetector(
          onTap: () => _onTap(data.customerName),
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
                  Text(
                    data.address ?? '-',
                    style: context.textTheme.labelMedium,
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
      merchandiserCustomerProvider.select((value) => value.errorMsg),
      (_, next) {
        if (next != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 5),
              backgroundColor: Colors.red,
              content: Text(
                next,
                style: context.textTheme.titleSmall,
              ),
            ),
          );
        }
      },
    );
    ref.listen(merchandiserCustomerProvider.select((value) => value.isLoading),
        (_, next) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });
  }

  void _onTap(String customerName) {
    _bottomSheetController = showBottomSheet(
      context: context,
      sheetAnimationStyle: _animationStyle,
      builder: (BuildContext context) {
        return CustomerAddressListWidget(
          onClose: _closeBottonSheet,
          customerName: customerName,
        );
      },
    );
  }

  void _closeBottonSheet() => _bottomSheetController.close();
}
