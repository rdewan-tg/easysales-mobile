part of merchandiser;

class CustomerAddressListWidget extends ConsumerStatefulWidget {
  final VoidCallback onClose;
  final String customerName;
  final String customerId;

  const CustomerAddressListWidget({
    super.key,
    required this.onClose,
    required this.customerName,
    required this.customerId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomerAddressListWidgetState();
}

class _CustomerAddressListWidgetState
    extends ConsumerState<CustomerAddressListWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final addresses =
        ref.watch(addressControllerProvider.select((value) => value.addresses));

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: kMedium, top: kSmall),
              child: IconButton(
                onPressed: widget.onClose,
                icon: const Icon(Icons.close),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: addresses.length,
            itemBuilder: (context, index) {
              final data = addresses[index];

              return ListTile(
                title: Text(data.deliveryName),
                subtitle: Text(data.address),
                onTap: () {
                  context.push(
                    '/merchandiser/capture-image',
                    extra: {
                      'customerId': data.customerId,
                      'customerName': widget.customerName,
                      'address': data.address,
                    },
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
