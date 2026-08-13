part of home;

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MainAppScaffold(
      isScrollable: true,
      widget: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kSmall,
              vertical: kXSmall,
            ),
            child: TopSellingProductsChartView(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kSmall,
              vertical: kXSmall,
            ),
            child: TopCustomersChartView(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kSmall,
              vertical: kXSmall,
            ),
            child: Last3MonthsSalesTotalsChartView(),
          ),
        ],
      ),
    );
  }
}
