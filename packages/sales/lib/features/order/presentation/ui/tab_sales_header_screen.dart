part of sales;

class TabSalesHeaderScreen extends ConsumerStatefulWidget {
  const TabSalesHeaderScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TabSalesHeaderScreenState();
}

class _TabSalesHeaderScreenState extends ConsumerState<TabSalesHeaderScreen> {
  late TextEditingController _salesIdController;
  late TextEditingController _customerNameController;
  late TextEditingController _customerAddressController;
  late TextEditingController _customerRequestionController;
  late TextEditingController _noteController;
  late TextEditingController _deliveryDateController;

  @override
  void initState() {
    super.initState();
    _salesIdController = TextEditingController();
    _customerNameController = TextEditingController();
    _customerAddressController = TextEditingController();
    _customerRequestionController = TextEditingController();
    _noteController = TextEditingController();
    _deliveryDateController = TextEditingController();
  }

  @override
  void dispose() {
    _salesIdController.dispose();
    _customerNameController.dispose();
    _customerAddressController.dispose();
    _customerRequestionController.dispose();
    _noteController.dispose();
    _deliveryDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    final salesHeader = ref.watch(
      salesHeaderControllerProvider.select((value) => value.salesHeaderData),
    );
    if (salesHeader != null) {
      _salesIdController.text = salesHeader.salesId;
      _customerNameController.text = salesHeader.customerName;
      _customerAddressController.text = salesHeader.customerAddress;
      _customerRequestionController.text = salesHeader.customerRequisition;
      _noteController.text = salesHeader.note;
    }
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
              labelText: 'Customer Name'.hardcoded,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              controller: _customerNameController,
              isDense: true,
              readOnly: true,
            ),
            const SizedBox(height: kMedium),
            CustomTextFormField(
              labelText: 'Delivery Address'.hardcoded,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              controller: _customerAddressController,
              isDense: true,
              readOnly: true,
              maxLines: 5,
              minLines: 2,
            ),
            const SizedBox(height: kMedium),
            Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Consumer(
                    builder: (context, ref, child) {
                      final deliveryDate = ref.watch(
                        salesHeaderControllerProvider.select(
                          (value) => value.salesHeaderData?.deliveryDate,
                        ),
                      );
                      if (deliveryDate != null) {
                        _deliveryDateController.text = deliveryDate;
                      }
                      return CustomTextFormField(
                        labelText: 'Delivery Date'.hardcoded,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        controller: _deliveryDateController,
                        isDense: true,
                        readOnly: true,
                      );
                    },
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 365)),
                    );
                    if (date != null) {
                      _setDeliveryDate(date);
                    }
                  },
                  icon: const Icon(Icons.calendar_month),
                ),
              ],
            ),
            const SizedBox(height: kMedium),
            Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Consumer(
                    builder: (context, ref, child) {
                      final customerRequestion = ref.watch(
                        salesHeaderControllerProvider.select(
                          (value) => value.salesHeaderData?.customerRequisition,
                        ),
                      );
                      if (customerRequestion != null) {
                        _customerRequestionController.text = customerRequestion;
                      }
                      return CustomTextFormField(
                        labelText: 'Customer Requestion'.hardcoded,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        controller: _customerRequestionController,
                        isDense: true,
                        onFieldSubmitted: (value) {
                          ref
                              .read(
                                salesHeaderControllerProvider.notifier,
                              ) // update customer requisition
                              .updateCustomerRequisition(
                                value,
                              );
                        },
                      );
                    },
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    ref
                        .read(salesHeaderControllerProvider.notifier)
                        .updateCustomerRequisition(
                          _customerRequestionController.text,
                        );
                  },
                  icon: const Icon(Icons.save_outlined),
                ),
              ],
            ),
            const SizedBox(height: kMedium),
            Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Consumer(
                    builder: (context, ref, child) {
                      final note = ref.watch(
                        salesHeaderControllerProvider
                            .select((value) => value.salesHeaderData?.note),
                      );
                      if (note != null) {
                        _noteController.text = note;
                      }
                      return CustomTextFormField(
                        labelText: 'Note'.hardcoded,
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.next,
                        controller: _noteController,
                        isDense: true,
                        maxLines: 5,
                        minLines: 2,
                        onFieldSubmitted: (value) {
                          ref
                              .read(salesHeaderControllerProvider.notifier)
                              .updateNote(
                                value,
                              );
                        },
                      );
                    },
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    ref.read(salesHeaderControllerProvider.notifier).updateNote(
                          _noteController.text,
                        );
                  },
                  icon: const Icon(Icons.save_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _setDeliveryDate(DateTime date) {
    // format the date and time
    final deliveryDate = DateFormat('dd/MM/yyyy').format(date);
    // set the delivery date
    _deliveryDateController.text = deliveryDate;
    // update the delivery date
    ref
        .read(salesHeaderControllerProvider.notifier)
        .updateDeliveryDate(deliveryDate);
  }

  void _listener() {
    // listen for error
    ref.listen(
      salesHeaderControllerProvider.select((value) => value.errorMsg),
      (_, next) {
        if (next != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              padding: const EdgeInsets.all(kSMedium),
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
    ref.listen(salesHeaderControllerProvider.select((value) => value.isLoading),
        (_, next) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });
  }
}
