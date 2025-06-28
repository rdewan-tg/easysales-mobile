part of sales;

class EditOrderHistoryLineItem extends ConsumerStatefulWidget {
  final VoidCallback onClose;
  final String salesId;
  final String itemId;
  final int lineId;
  final String priceGroup;
  const EditOrderHistoryLineItem({
    super.key,
    required this.onClose,
    required this.salesId,
    required this.itemId,
    required this.lineId,
    required this.priceGroup,
  });

  @override
  ConsumerState<EditOrderHistoryLineItem> createState() =>
      _EditOrderHistoryLineItemState();
}

class _EditOrderHistoryLineItemState
    extends ConsumerState<EditOrderHistoryLineItem> {
  late TextEditingController _uomController;
  late TextEditingController _qtyController;
  late TextEditingController _packSizeController;
  late TextEditingController _priceController;

  @override
  void initState() {
    super.initState();
    _uomController = TextEditingController();
    _qtyController = TextEditingController();
    _packSizeController = TextEditingController();
    _priceController = TextEditingController();
  }

  @override
  void dispose() {
    _uomController.dispose();
    _qtyController.dispose();
    _packSizeController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(kMedium),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    left: kMedium,
                    top: kSmall,
                  ),
                  child: IconButton(
                    onPressed: widget.onClose,
                    icon: const Icon(Icons.close),
                  ),
                ),
              ],
            ),
            Consumer(
              builder: (context, ref, child) {
                final name = ref
                    .read(orderHistoryControllerProvider.notifier)
                    .getProductName(widget.itemId);
                return Text(
                  name,
                  style: context.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                );
              },
            ),
            const SizedBox(height: kMedium),
            Consumer(
              builder: (context, ref, child) {
                final uom = ref.watch(
                  productControllerProvider.select((value) => value.uom),
                );
                return DropdownMenu<String>(
                  controller: _uomController,
                  width: 200,
                  requestFocusOnTap: false,
                  enableSearch: false,
                  label: Text('Unit'.hardcoded),
                  onSelected: (String? value) {
                    _getProductDetail();
                  },
                  dropdownMenuEntries: uom
                      .map((e) => DropdownMenuEntry(label: e, value: e))
                      .toList(),
                );
              },
            ),
            const SizedBox(height: kMedium),
            Consumer(
              builder: (context, ref, child) {
                final packSize = ref.watch(
                  productControllerProvider.select((value) => value.packSize),
                );
                return DropdownMenu<String>(
                  controller: _packSizeController,
                  width: 200,
                  requestFocusOnTap: false,
                  enableSearch: false,
                  label: Text('Packsize'.hardcoded),
                  menuStyle: const MenuStyle(
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.zero,
                    ), // Removes extra spacing
                    visualDensity: VisualDensity.compact, // Makes it more dense
                  ),
                  onSelected: (String? value) {
                    _getProductDetail();
                  },
                  dropdownMenuEntries: packSize
                      .map((e) => DropdownMenuEntry(label: e, value: e))
                      .toList(),
                );
              },
            ),
            const SizedBox(height: kLarge),
            Consumer(
              builder: (context, ref, child) {
                final product = ref.watch(
                  productControllerProvider.select((value) => value.price),
                );
                if (product != null) {
                  _priceController.text = product.unitPrice.toStringAsFixed(2);
                }
                return CustomTextFormField(
                  labelText: 'Price'.hardcoded,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  controller: _priceController,
                  isDense: false,
                  readOnly: true,
                );
              },
            ),
            const SizedBox(height: kMedium),
            CustomTextFormField(
              labelText: 'Quantity'.hardcoded,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              controller: _qtyController,
              isDense: false,
              onChanged: (value) {
                final qty = int.tryParse(value) ?? 0;
                ref.read(productControllerProvider.notifier).setQuantity(qty);
              },
            ),
            const SizedBox(height: kMedium),
            Row(
              children: [
                const Spacer(),
                Consumer(
                  builder: (context, ref, child) {
                    final qty = ref.watch(
                      productControllerProvider
                          .select((value) => value.quantity),
                    );

                    final isOrderSynced = ref.watch(
                      orderHistoryControllerProvider
                          .select((value) => value.isOrderSynced),
                    );

                    final price = _priceController.text;
                    return FilledButton.icon(
                      onPressed: isOrderSynced || qty <= 0 || price.isEmpty
                          ? null
                          : () {
                              _editSaleLine();
                            },
                      label: Text('Update'.hardcoded),
                      icon: const Icon(Icons.add),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _getProductDetail() {
    if (_uomController.text.isEmpty || _packSizeController.text.isEmpty) return;
    ref.read(productControllerProvider.notifier).getProductDetail(
          widget.itemId,
          widget.priceGroup,
          _packSizeController.text,
          _uomController.text,
        );
  }

  void _editSaleLine() async {
    // get the product
    final product = await ref
        .read(productControllerProvider.notifier)
        .getProductByItemId(widget.itemId);
    // get the price
    final price = ref.read(productControllerProvider.notifier).getPrice();

    if (price == null || product == null) return;

    final lineAmount =
        (_priceController.text.isEmpty || _qtyController.text.isEmpty)
            ? '0.00'
            : (double.parse(_priceController.text) *
                    double.parse(_qtyController.text))
                .toStringAsFixed(2);

    // update sales line
    ref.read(orderHistoryControllerProvider.notifier).updateSalesLine(
          salesId: widget.salesId,
          lineId: widget.lineId,
          salesUnit: _uomController.text,
          packSize: _packSizeController.text,
          salesPrice: _priceController.text,
          quantity: _qtyController.text,
          lineAmount: lineAmount,
        );
    // close the bottom sheet
    widget.onClose();
    // clear state
    ref.read(productControllerProvider.notifier).clearState();
  }
}
