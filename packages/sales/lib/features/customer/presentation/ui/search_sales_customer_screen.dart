part of sales;

class SearchSalesCustomerScreen extends ConsumerStatefulWidget {
  const SearchSalesCustomerScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchSalesCustomerScreenState();
}

class _SearchSalesCustomerScreenState
    extends ConsumerState<SearchSalesCustomerScreen> {
  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(salesCustomerProvider.notifier).getSearchHistory();
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Flexible(
              child: CustomTextFormField(
                labelText: 'Search...',
                hintText: 'min 3 char...',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.search,
                controller: searchController,
                isDense: true,
                autofocus: true,
                autocorrect: false,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: kSmall,
                  vertical: kSmall,
                ),
                constraints: const BoxConstraints.tightFor(
                  height: 40,
                ),
                onChanged: (value) {
                  ref
                      .read(salesCustomerProvider.notifier)
                      .setSearchQuery(value);
                },
                onFieldSubmitted: (value) {
                  _searchProduct();
                },
                suffixIcon: IconButton(
                  onPressed: () {
                    searchController.clear();
                  },
                  icon: const Icon(Icons.clear_outlined),
                ),
              ),
            ),
            Consumer(
              builder: (context, ref, child) {
                final query = ref.watch(
                  salesCustomerProvider.select(
                    (value) => value.searchQuery,
                  ),
                );

                return IconButton(
                  onPressed: query.length < 3
                      ? null
                      : () async {
                          _searchProduct();
                        },
                  icon: const Icon(Icons.search_outlined),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchSuggestion(searchController: searchController),
            const Divider(),
            const ClearSearchHistory(),
          ],
        ),
      ),
    );
  }

  Future<void> _searchProduct() async {
    // validate the search condition
    if (searchController.text.isEmpty || searchController.text.length < 3) {
      return;
    }

    // set the search query state
    await ref
        .watch(salesCustomerProvider.notifier)
        .setSearchQuery(searchController.text.toLowerCase());

    // set the search history
    await ref
        .watch(salesCustomerProvider.notifier)
        .setSearchHistory(searchController.text.toLowerCase());

    // get the customer from the db
    await ref.watch(salesCustomerProvider.notifier).watchSalesCustomers();

    // pop the search screen from the route stack
    if (!mounted) return;
    context.pop();
  }
}
