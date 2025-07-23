part of merchandiser;

class CustomerInfoWidget extends ConsumerStatefulWidget {
  const CustomerInfoWidget({super.key, required this.extras});

  final Map<String, dynamic> extras;

  @override
  ConsumerState<CustomerInfoWidget> createState() => _CustomerInfoWidgetState();
}

class _CustomerInfoWidgetState extends ConsumerState<CustomerInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: kSmall),
        Text(widget.extras['customerName']),
        const SizedBox(height: kSmall),
        Text(widget.extras['address']),
        const SizedBox(height: kSmall),
      ],
    );
  }
}
