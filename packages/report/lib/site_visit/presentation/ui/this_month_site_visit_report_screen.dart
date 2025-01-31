part of report;

class ThisMonthSiteVisitReportScreen extends ConsumerStatefulWidget {
  const ThisMonthSiteVisitReportScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ThisMonthSiteVisitReportScreenState();
}

class _ThisMonthSiteVisitReportScreenState
    extends ConsumerState<ThisMonthSiteVisitReportScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(siteVisitControllerProvider.notifier).thisMonthSiteVisitReport();
    });
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return Scaffold(
      appBar: AppBar(
        title: Text("This Month Report".hardcoded),
        centerTitle: true,
      ),
      body: const ThisMonthSiteVisitReportView(),
      bottomNavigationBar: const ThisMonthSiteVisitTotalView(),
    );
  }

  void _listener() {
    // listen for loading
    ref.listen(
        siteVisitControllerProvider
            .select((value) => value.isLoadingThisMonthVisit), (_, next) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });

    // listen for error
    ref.listen(
      siteVisitControllerProvider.select((value) => value.errorMsg),
      (_, next) {
        if (next != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 5),
              backgroundColor: Colors.red,
              content: Text(
                next,
                style: context.textTheme.titleSmall?.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
