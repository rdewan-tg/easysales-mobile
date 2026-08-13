part of home;

class TopCustomersChartView extends ConsumerStatefulWidget {
  const TopCustomersChartView({super.key});

  @override
  ConsumerState<TopCustomersChartView> createState() =>
      _TopCustomersChartViewState();
}

class _TopCustomersChartViewState extends ConsumerState<TopCustomersChartView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(homeReportControllerProvider.notifier).getTopCustomers();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(
      homeReportControllerProvider.select(
        (value) => value.isLoadingTopCustomers,
      ),
    );
    final topCustomers = ref.watch(
      homeReportControllerProvider.select((value) => value.topCustomers),
    );

    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.all(kMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.localizations('home.topCustomers'),
              style: context.textTheme.titleMedium,
            ),
            const SizedBox(height: kMedium),
            if (isLoading)
              const SizedBox(
                height: 220,
                child: Center(child: CircularProgressIndicator()),
              )
            else if (topCustomers == null || topCustomers.points.isEmpty)
              SizedBox(
                height: 220,
                child: Center(
                  child: Text(context.localizations('common.noData')),
                ),
              )
            else
              _TopCustomersChart(data: topCustomers),
          ],
        ),
      ),
    );
  }
}

class _TopCustomersChart extends StatelessWidget {
  const _TopCustomersChart({required this.data});

  final TopCustomersData data;

  @override
  Widget build(BuildContext context) {
    final topCustomers =
        (data.points.toList()..sort((a, b) => a.x.compareTo(b.x)))
            .take(10)
            .toList();
    final highestPoint = topCustomers
        .map((topCustomer) => topCustomer.y)
        .reduce((a, b) => a > b ? a : b);
    final highestY = data.maxY > highestPoint ? data.maxY : highestPoint;
    final chartMaxY = highestY > 0 ? highestY * 1.2 : 1.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 220,
          child: BarChart(
            BarChartData(
              maxY: chartMaxY,
              alignment: BarChartAlignment.spaceAround,
              barTouchData: BarTouchData(
                touchTooltipData: BarTouchTooltipData(
                  getTooltipItem: (group, groupIndex, rod, rodIndex) {
                    final topCustomer = topCustomers[groupIndex];
                    return BarTooltipItem(
                      '${topCustomer.customerName}\n${rod.toY.toInt()}',
                      const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
              ),
              titlesData: FlTitlesData(
                topTitles: const AxisTitles(),
                rightTitles: const AxisTitles(),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 24,
                    getTitlesWidget: (value, meta) {
                      final index = value.toInt();
                      if (index < 0 || index >= topCustomers.length) {
                        return const SizedBox.shrink();
                      }
                      return SideTitleWidget(
                        meta: meta,
                        child: Text(
                          '${index + 1}',
                          style: context.textTheme.bodySmall,
                        ),
                      );
                    },
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 45,
                    interval: chartMaxY / 4,
                    getTitlesWidget: (value, meta) => Text(
                      value.toInt().toString(),
                      style: context.textTheme.bodySmall,
                    ),
                  ),
                ),
              ),
              gridData: const FlGridData(drawVerticalLine: false),
              borderData: FlBorderData(show: false),
              barGroups: [
                for (final topCustomer in topCustomers)
                  BarChartGroupData(
                    x: topCustomer.x,
                    barRods: [
                      BarChartRodData(
                        toY: topCustomer.y,
                        color: context.themeColor.colorScheme.primary,
                        width: 16,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(kXSmall),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: kMedium),
        for (final topCustomer in topCustomers.take(5))
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kXXSmall),
            child: Row(
              children: [
                Text(
                  '${topCustomer.x + 1}. ',
                  style: context.textTheme.bodySmall,
                ),
                Expanded(
                  child: Text(
                    topCustomer.customerName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodySmall,
                  ),
                ),
                Text(
                  '${topCustomer.totalQuantitySold}',
                  style: context.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
