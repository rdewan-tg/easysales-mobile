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
      widget: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(kSmall),
            child: Card.outlined(
              child: Column(
                children: [
                  const TodaySiteVisitTotalView(),
                  Row(
                    children: [
                      const Spacer(),
                      TextButton(
                        onPressed: () =>
                            context.push('/today-site-visit-report'),
                        child: Text(context.localizations('home.viewMore')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kSmall),
            child: Card.outlined(
              child: Column(
                children: [
                  const ThisMonthSiteVisitTotalView(),
                  Row(
                    children: [
                      const Spacer(),
                      TextButton(
                        onPressed: () =>
                            context.push('/this-month-site-visit-report'),
                        child: Text(context.localizations('home.viewMore')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kSmall),
            child: Card.outlined(
              child: Column(
                children: [
                  const CurrentOrderNumberView(),
                  Row(
                    children: [
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          ref
                              .read(salesHeaderControllerProvider.notifier)
                              .getLastSalesOrderId();
                        },
                        child: Text('Refresh'.hardcoded),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
