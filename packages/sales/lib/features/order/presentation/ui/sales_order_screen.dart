part of sales;

class SalesOrderScreen extends ConsumerStatefulWidget {
  const SalesOrderScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SalesOrderScreenState();
}

class _SalesOrderScreenState extends ConsumerState<SalesOrderScreen>
    with SingleTickerProviderStateMixin {
  // tabs
  static const List<Tab> _tabs = <Tab>[
    Tab(text: 'Sales Header'),
    Tab(text: 'Items'),
    Tab(text: 'Sales Lines'),
  ];
  // controller
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations('sales.title')),
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          TabSalesHeaderScreen(),
          TabItemScreen(),
          TabSalesLineScreen(),
        ],
      ),
    );
  }
}
