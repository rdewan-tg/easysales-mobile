part of sales;

class SalesOrderScreen extends ConsumerStatefulWidget {
  final Map<String, dynamic> extras;
  const SalesOrderScreen({super.key, required this.extras});

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
  int _previousTabIndex = 0; // Track previous tab index

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(_handleTabChange); // Detect swipe gestures

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(salesHeaderControllerProvider.notifier).getSettings();
      ref
          .read(salesHeaderControllerProvider.notifier)
          .createSalesHeader(widget.extras, _getFormatedTime('dd/MM/yyyy'));
    });
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  String _getFormatedTime(String format) {
    // get the time zone
    final timeZone = ref
        .read(salesHeaderControllerProvider.notifier)
        .getTimeZone();
    // get the current formatted date and time
    final now = tz.TZDateTime.now(tz.getLocation(timeZone ?? 'Asia/Singapore'));
    // format the date and time
    final transactionDate = DateFormat(format).format(now);
    return transactionDate;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, // Prevents the user from popping the route
      onPopInvokedWithResult: (bool didPop, dynamic result) async {
        // This callback is called when the user tries to pop the route
        if (didPop) {
          return;
        }

        // Show a confirmation dialog
        final bool shouldPop = await _shouldPopDialog();

        // If the user confirms, allow the pop
        if (shouldPop) {
          if (!context.mounted) return;
          context.pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.localizations('sales.title')),
          bottom: TabBar(
            controller: _tabController,
            tabs: _tabs,
            onTap: (value) {
              if (value == 1 && !_validateDeliveryDate()) {
                // Prevent tab switch
                _showDeliveryDateError();

                _tabController.index =
                    _previousTabIndex; // Revert to previous tab
              } else {
                _previousTabIndex = value; // Allow tab switch
              }
            },
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
      ),
    );
  }

  void _showDeliveryDateError() {
    // Prevent tab switch
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        padding: const EdgeInsets.all(kSMedium),
        duration: const Duration(seconds: 3),
        backgroundColor: context.themeColor.colorScheme.error,
        content: Text(
          'Delivery date is required before proceeding.'.hardcoded,
          style: context.textTheme.titleSmall?.copyWith(color: Colors.white),
        ),
      ),
    );
  }

  /// Handles both **tap** and **swipe gestures**
  void _handleTabChange() {
    if (!_canSwitchTab(_tabController.index)) {
      // Delay resetting the index so Flutter finishes updating first
      Future.delayed(const Duration(milliseconds: 50), () {
        _tabController.index = _previousTabIndex;
      });
    } else {
      _previousTabIndex = _tabController.index;
    }
  }

  /// Checks if tab switch is allowed
  bool _canSwitchTab(int newIndex) {
    final hasSetDeliveryDate = _validateDeliveryDate();
    if (newIndex == 1 && !hasSetDeliveryDate) {
      _showDeliveryDateError();
      return false; // Block tab switch
    }
    return true; // Allow tab switch
  }

  bool _validateDeliveryDate() {
    final hasSetDeliveryDate = ref
        .read(salesHeaderControllerProvider.notifier)
        .isDeliveryDateSet();
    return hasSetDeliveryDate;
  }

  Future<bool> _shouldPopDialog() async {
    // Show a confirmation dialog
    final bool shouldPop = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?'.hardcoded),
        content: Text('Do you want to leave this page?'.hardcoded),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Yes'),
          ),
        ],
      ),
    );

    return shouldPop;
  }
}
