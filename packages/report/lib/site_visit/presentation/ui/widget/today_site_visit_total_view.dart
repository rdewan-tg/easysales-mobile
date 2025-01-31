part of report;

class TodaySiteVisitTotalView extends ConsumerWidget {
  const TodaySiteVisitTotalView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalUniqueVisits = ref.watch(
      siteVisitControllerProvider.select((value) => value.todayTotalVisits),
    );
    return Padding(
      padding: const EdgeInsets.all(kMedium),
      child: Row(
        children: [
          Text(
            context.localizations('report.todaysVisits').hardcoded,
            style: context.textTheme.labelLarge,
          ),
          Padding(
            padding: const EdgeInsets.only(left: kXSmall),
            child: Text(
              '$totalUniqueVisits',
              style: context.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
