part of sales;

class TabSalesLineScreen extends ConsumerStatefulWidget {
  const TabSalesLineScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TabSalesLineScreenState();
}

class _TabSalesLineScreenState extends ConsumerState<TabSalesLineScreen> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Text('Order Lines'),
        ],
      ),
    );
  }
}
