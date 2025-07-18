part of report;

class TodaySiteVisitReportScreen extends ConsumerStatefulWidget {
  const TodaySiteVisitReportScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TodaySiteVisitReportScreenState();
}

class _TodaySiteVisitReportScreenState
    extends ConsumerState<TodaySiteVisitReportScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(siteVisitControllerProvider.notifier).toDaySiteVisitReport();
    });
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations('report.todaysReport')),
        centerTitle: true,
      ),
      body: const TodaySiteVisitReportView(),
      bottomNavigationBar: const TodaySiteVisitTotalView(),
    );
  }

  void _listener() {
    // listen for loading
    ref.listen(
      siteVisitControllerProvider.select((value) => value.isLoadingTodayVisit),
      (_, next) {
        if (next) {
          context.loaderOverlay.show();
        } else {
          context.loaderOverlay.hide();
        }
      },
    );

    // listen for error
    ref.listen(siteVisitControllerProvider.select((value) => value.errorMsg), (
      _,
      next,
    ) {
      if (next != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 5),
            backgroundColor: context.themeColor.colorScheme.error,
            content: Text(
              next,
              style: context.textTheme.titleSmall?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        );
      }
    });
  }
}
