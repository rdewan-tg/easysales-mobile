part of sales;

class CurrentOrderNumberView extends ConsumerStatefulWidget {
  const CurrentOrderNumberView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CurrentOrderNumberViewScreenState();
}

class _CurrentOrderNumberViewScreenState
    extends ConsumerState<CurrentOrderNumberView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(salesHeaderControllerProvider.notifier).getLastSalesOrderId();
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentOrderNumber = ref.watch(
      salesHeaderControllerProvider.select((value) => value.currentOrderNumber),
    );
    final isLoading = ref.watch(
      salesHeaderControllerProvider
          .select((value) => value.isFetchingCurrentOrderNumber),
    );

    return VisibilityDetector(
      key: const Key('current_order_number_view'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction == 0) {
          ref
              .read(salesHeaderControllerProvider.notifier)
              .getLastSalesOrderId();
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(kMedium),
        child: Row(
          children: [
            Text(
              'Current Order Number:',
              style: context.textTheme.labelLarge,
            ),
            Padding(
              padding: const EdgeInsets.only(left: kXSmall),
              child: isLoading
                  ? const SizedBox(
                      width: kMedium,
                      height: kMedium,
                      child: CircularProgressIndicator(),
                    )
                  : Text(
                      '$currentOrderNumber',
                      style: context.textTheme.titleMedium,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
