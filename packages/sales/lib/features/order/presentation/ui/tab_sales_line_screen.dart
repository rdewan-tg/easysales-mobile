part of sales;

class TabSalesLineScreen extends ConsumerStatefulWidget {
  const TabSalesLineScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TabSalesLineScreenState();
}

class _TabSalesLineScreenState extends ConsumerState<TabSalesLineScreen>
    with ConfirmDialogMixin {
  @override
  Widget build(BuildContext context) {
    _listener();
    final salesLine = ref
        .watch(salesLineControllerProvider.select((value) => value.salesLines));

    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          final data = salesLine[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(kSmall),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(data.itemId),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          _deleteLine(data.salesId, data.lineId);
                        },
                        child: const Icon(
                          Icons.delete_outline_outlined,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  Text(data.productName),
                  Text(data.packSize),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(data.lineId.toString()),
                      Text(data.salesUnit),
                      Text(data.quantity.toStringAsFixed(0)),
                      Text(data.salesPrice.toStringAsFixed(2)),
                      Text(data.lineAmount.toStringAsFixed(2)),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: salesLine.length,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(kMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  'Total Amount:'.hardcoded,
                  style: context.textTheme.titleMedium,
                ),
                const SizedBox(width: kSmall),
                Text(
                  ref
                      .read(salesLineControllerProvider.notifier)
                      .calCulculateTotalAmount()
                      .toStringAsFixed(2),
                  style: context.textTheme.titleMedium,
                ),
                const Spacer(),
                IconButton.filledTonal(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.upload_outlined,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _deleteLine(String salesId, int lineId) {
    showConfirmDialog(
      context: context,
      title: "Delete Line".hardcoded,
      msg: "Are you sure you want to delete this line?".hardcoded,
      btnYesText: context.localizations('profile.btnYes'),
      btnNoText: context.localizations('profile.btnNo'),
      icon: const Icon(
        Icons.warning_outlined,
        color: Colors.red,
      ),
      onYesTap: () {
        // delete customer account
        ref
            .read(salesLineControllerProvider.notifier)
            .deleteLine(salesId, lineId);
        // close dialog
        context.pop();
      },
      onNoTap: () {
        // close dialog
        context.pop();
      },
    );
  }

  void _listener() {
    // listen for error
    ref.listen(
      salesLineControllerProvider.select((value) => value.isItemRemoved),
      (_, next) {
        if (next) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              padding: const EdgeInsets.all(kSMedium),
              duration: const Duration(seconds: 5),
              content: Text(
                "Item removed successfully".hardcoded,
              ),
            ),
          );
        }
      },
    );

    // listen for loading
    ref.listen(salesLineControllerProvider.select((value) => value.isLoading),
        (_, next) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });
  }
}
