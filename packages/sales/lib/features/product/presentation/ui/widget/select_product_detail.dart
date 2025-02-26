part of sales;

class SelectProductDetail extends ConsumerStatefulWidget {
  final VoidCallback onClose;
  final String itemId;
  final String priceGroup;
  const SelectProductDetail({
    super.key,
    required this.onClose,
    required this.itemId,
    required this.priceGroup,
  });

  @override
  ConsumerState<SelectProductDetail> createState() =>
      _SelectProductDetailState();
}

class _SelectProductDetailState extends ConsumerState<SelectProductDetail> {
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
            Text(
              ref
                  .read(productControllerProvider.notifier)
                  .getProductName(widget.itemId),
              style: context.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w700,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
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
                    return FilledButton.icon(
                      onPressed: qty <= 0
                          ? null
                          : () {
                              _addSaleLine();
                            },
                      label: Text('Add'.hardcoded),
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

  void _addSaleLine() {
    final product =
        ref.read(productControllerProvider.notifier).getProduct(widget.itemId);
    final price = ref.read(productControllerProvider.notifier).getPrice();
    final salesId =
        ref.read(salesHeaderControlelrProvider.notifier).getSalesId();
    final deviceId = ref.read(productControllerProvider.notifier).getDeviceId();
    if (price == null || product == null) return;
    ref.read(salesLineControllerProvider.notifier).createSalesLine(
          salesId: salesId,
          productDetail: price,
          productData: product,
          quantity: int.tryParse(_qtyController.text) ?? 0,
          deviceId: deviceId,
          transactionDate: _getTransactionDate(),
        );
    // close the bottom sheet
    widget.onClose();
    // clear state
    ref.read(productControllerProvider.notifier).clearState();
  }

  String _getTransactionDate() {
    // format the date and time
    final deliveryDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
    return deliveryDate;
  }
}
