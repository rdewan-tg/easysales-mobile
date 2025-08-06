part of merchandiser;

class MerchandiserCustomerScreen extends ConsumerStatefulWidget {
  const MerchandiserCustomerScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MerchandiserCustomerScreenState();
}

class _MerchandiserCustomerScreenState
    extends ConsumerState<MerchandiserCustomerScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref
          .read(merchandiserCustomerProvider.notifier)
          .watchMerchandiserCustomers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainAppScaffold(
      isScrollable: false,
      actions: [
        IconButton(
          onPressed: () {
            context.go('/merchandiser/search-merchandiser-customer');
          },
          icon: const Icon(Icons.search_outlined),
        ),
      ],
      widget: RefreshIndicator(
        onRefresh: _onRefresh,
        child: const CustomScrollView(
          slivers: [SearchQueryWidget(), CustomerListWidget()],
        ),
      ),
    );
  }

  Future<void> _onRefresh() async {}
}
