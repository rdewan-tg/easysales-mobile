part of home;

class TopSellingProductsChartView extends ConsumerStatefulWidget {
  const TopSellingProductsChartView({super.key});

  @override
  ConsumerState<TopSellingProductsChartView> createState() =>
      _TopSellingProductsChartViewState();
}

class _TopSellingProductsChartViewState
    extends ConsumerState<TopSellingProductsChartView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref
          .read(homeReportControllerProvider.notifier)
          .getTopSellingProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(
      homeReportControllerProvider.select(
        (value) => value.isLoadingTopSellingProducts,
      ),
    );
    final products = ref.watch(
      homeReportControllerProvider.select((value) => value.topSellingProducts),
    );

    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.all(kMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.localizations('home.topSellingProducts'),
              style: context.textTheme.titleMedium,
            ),
            const SizedBox(height: kMedium),
            if (isLoading)
              const SizedBox(
                height: 220,
                child: Center(child: CircularProgressIndicator()),
              )
            else if (products.isEmpty || products.first.points.isEmpty)
              SizedBox(
                height: 220,
                child: Center(
                  child: Text(context.localizations('common.noData')),
                ),
              )
            else
              _TopSellingProductsChart(data: products.first),
          ],
        ),
      ),
    );
  }
}

class _TopSellingProductsChart extends StatelessWidget {
  const _TopSellingProductsChart({required this.data});

  final TopSellingProductsData data;

  @override
  Widget build(BuildContext context) {
    final products = (data.points.toList()..sort((a, b) => a.x.compareTo(b.x)))
        .take(10)
        .toList();
    final maxQuantity = products
        .map((product) => product.y)
        .reduce((a, b) => a > b ? a : b)
        .toDouble();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 220,
          child: BarChart(
            BarChartData(
              maxY: maxQuantity * 1.2,
              alignment: BarChartAlignment.spaceAround,
              barTouchData: BarTouchData(
                touchTooltipData: BarTouchTooltipData(
                  getTooltipItem: (group, groupIndex, rod, rodIndex) {
                    final product = products[groupIndex];
                    return BarTooltipItem(
                      '${product.productName}\n${rod.toY.toInt()}',
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
                      if (index < 0 || index >= products.length) {
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
                    reservedSize: 40,
                    interval: maxQuantity > 0 ? maxQuantity / 4 : 1,
                    getTitlesWidget: (value, meta) => Text(
                      value.toInt().toString(),
                      style: context.textTheme.bodySmall,
                    ),
                  ),
                ),
              ),
              gridData: const FlGridData(drawVerticalLine: false),
              borderData: FlBorderData(show: false),
              barGroups: List.generate(products.length, (index) {
                final product = products[index];
                return BarChartGroupData(
                  x: index,
                  barRods: [
                    BarChartRodData(
                      toY: product.y.toDouble(),
                      color: context.themeColor.colorScheme.primary,
                      width: 16,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(kXSmall),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
        const SizedBox(height: kMedium),
        for (final product in products.take(5))
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kXXSmall),
            child: Row(
              children: [
                Text('${product.x + 1}. ', style: context.textTheme.bodySmall),
                Expanded(
                  child: Text(
                    product.productName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodySmall,
                  ),
                ),
                Text(
                  '${product.totalSalesAmount}',
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
