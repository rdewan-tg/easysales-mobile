part of sales;

class TabSalesHeaderScreen extends ConsumerStatefulWidget {
  const TabSalesHeaderScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TabSalesHeaderScreenState();
}

class _TabSalesHeaderScreenState extends ConsumerState<TabSalesHeaderScreen> {
  late TextEditingController _salesIdController;

  @override
  void initState() {
    super.initState();
    _salesIdController = TextEditingController();
  }

  @override
  void dispose() {
    _salesIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(kMedium),
        child: Column(
          children: [
            CustomTextFormField(
              labelText: 'Sales ID'.hardcoded,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              controller: _salesIdController,
              isDense: true,
              readOnly: true,
            ),
            const SizedBox(height: kMedium),
            CustomTextFormField(
              labelText: 'Customer Name',
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              controller: _salesIdController,
              isDense: true,
            ),
            const SizedBox(height: kMedium),
            CustomTextFormField(
              labelText: 'Delivery Address',
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              controller: _salesIdController,
              isDense: true,
              maxLines: 5,
              minLines: 2,
            ),
            const SizedBox(height: kMedium),
            CustomTextFormField(
              labelText: 'Customer Requestion',
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              controller: _salesIdController,
              isDense: true,
            ),
            const SizedBox(height: kMedium),
            CustomTextFormField(
              labelText: 'Note',
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.next,
              controller: _salesIdController,
              isDense: true,
              maxLines: 5,
              minLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
