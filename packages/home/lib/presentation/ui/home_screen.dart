part of home;

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(siteVisitControllerProvider.notifier).toDaySiteVisitReport();
      ref.read(siteVisitControllerProvider.notifier).thisMonthSiteVisitReport();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'.hardcoded),
        centerTitle: true,
        elevation: 8,
      ),
      body: SingleChildScrollView(
        child: Column(
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
                          child: Text('View More'.hardcoded),
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
                          child: Text('View More'.hardcoded),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
