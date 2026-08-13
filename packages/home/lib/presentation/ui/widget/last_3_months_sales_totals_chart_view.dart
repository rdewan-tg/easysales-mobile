part of home;

class Last3MonthsSalesTotalsChartView extends ConsumerStatefulWidget {
  const Last3MonthsSalesTotalsChartView({super.key});

  @override
  ConsumerState<Last3MonthsSalesTotalsChartView> createState() =>
      _Last3MonthsSalesTotalsChartViewState();
}

class _Last3MonthsSalesTotalsChartViewState
    extends ConsumerState<Last3MonthsSalesTotalsChartView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref
          .read(homeReportControllerProvider.notifier)
          .getLast3MonthsSalesTotals();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(
      homeReportControllerProvider.select(
        (value) => value.isLoadingLast3MonthsSalesTotals,
      ),
    );
    final sales = ref.watch(
      homeReportControllerProvider.select(
        (value) => value.last3MonthsSalesTotals,
      ),
    );

    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.all(kMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.localizations('home.last3MonthsSalesTotals'),
              style: context.textTheme.titleMedium,
            ),
            const SizedBox(height: kMedium),
            if (isLoading)
              const SizedBox(
                height: 220,
                child: Center(child: CircularProgressIndicator()),
              )
            else if (sales.isEmpty ||
                sales.every((sale) => sale.points.isEmpty))
              SizedBox(
                height: 220,
                child: Center(
                  child: Text(context.localizations('common.noData')),
                ),
              )
            else
              _Last3MonthsSalesChart(sales: sales),
          ],
        ),
      ),
    );
  }
}

class _Last3MonthsSalesChart extends StatelessWidget {
  const _Last3MonthsSalesChart({required this.sales});

  final List<Last3MonthsSalesTotalsData> sales;

  @override
  Widget build(BuildContext context) {
    final points = sales.expand((sale) => sale.points).toList()
      ..sort((a, b) => a.x.compareTo(b.x));
    final highestPoint = points
        .map((point) => point.y)
        .reduce((a, b) => a > b ? a : b)
        .toDouble();
    final configuredMaxY = sales
        .map((sale) => sale.maxY)
        .reduce((a, b) => a > b ? a : b)
        .toDouble();
    final highestY = configuredMaxY > highestPoint
        ? configuredMaxY
        : highestPoint;
    final chartMaxY = highestY > 0 ? highestY * 1.2 : 1.0;
    final labels = sales.expand((sale) => sale.labels).toList();
    final labelsByX = <int, String>{};
    for (var index = 0; index < points.length; index++) {
      labelsByX[points[index].x] = index < labels.length
          ? labels[index]
          : points[index].label;
    }

    return SizedBox(
      height: 220,
      child: LineChart(
        LineChartData(
          minY: 0,
          maxY: chartMaxY,
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((touchedSpot) {
                  final point = points[touchedSpot.spotIndex];
                  return LineTooltipItem(
                    '${point.label}\n${point.y}',
                    const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }).toList();
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
                interval: 1,
                getTitlesWidget: (value, meta) {
                  final x = value.round();
                  final label = labelsByX[x];
                  if ((value - x).abs() > 0.001 || label == null) {
                    return const SizedBox.shrink();
                  }
                  return SideTitleWidget(
                    meta: meta,
                    fitInside: SideTitleFitInsideData.fromTitleMeta(meta),
                    child: Text(label, style: context.textTheme.bodySmall),
                  );
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 56,
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
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              color: context.themeColor.colorScheme.primary,
              barWidth: 3,
              dotData: const FlDotData(show: true),
              belowBarData: BarAreaData(
                show: true,
                color: context.themeColor.colorScheme.primary.withValues(
                  alpha: 0.15,
                ),
              ),
              spots: [
                for (final point in points)
                  FlSpot(point.x.toDouble(), point.y.toDouble()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
