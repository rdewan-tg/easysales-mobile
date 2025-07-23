part of merchandiser;

class CurrentLocationWidget extends ConsumerWidget {
  const CurrentLocationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPosition = ref.watch(
      siteVisitControllerProvider.select((value) => value.currentPosition),
    );

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Icon(
              Icons.location_on_rounded,
              color: context.themeColor.colorScheme.primary,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.localizations('siteVisit.currentLocation'),
                    style: context.textTheme.titleSmall?.copyWith(
                      color: context.themeColor.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    currentPosition == null
                        ? context.localizations('siteVisit.noLocation')
                        : 'Lat: ${currentPosition.latitude.toStringAsFixed(7)}, Long: ${currentPosition.longitude.toStringAsFixed(7)}',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: context.themeColor.colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
