part of report;

class TodaySiteVisitReportView extends ConsumerWidget {
  const TodaySiteVisitReportView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visitDetails = ref.watch(
      siteVisitControllerProvider.select((value) => value.todayVisitDetails),
    );
    return ListView.builder(
      itemCount: visitDetails.length,
      itemBuilder: (context, index) {
        final data = visitDetails[index];
        return Card(
          margin:
              const EdgeInsets.symmetric(horizontal: kMedium, vertical: kSmall),
          elevation: kXSmall,
          child: Padding(
            padding: const EdgeInsets.all(kSmall),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.customerId,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: kXSmall),
                Text(data.customerName),
                const SizedBox(height: kXSmall),
                Text(data.customerAddress),
                const SizedBox(height: kXSmall),
              ],
            ),
          ),
        );
      },
    );
  }
}
