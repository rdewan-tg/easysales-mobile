part of merchandiser;

class CurrentTimeWidget extends ConsumerWidget {
  const CurrentTimeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeNow = ref.watch(
      siteVisitControllerProvider.select((value) => value.timeNow),
    );
    if (timeNow == null) return const SizedBox.shrink();
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Icon(
              Icons.access_time_filled_rounded,
              color: context.themeColor.colorScheme.primary,
            ),
            const SizedBox(width: kSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  context.localizations('siteVisit.currentTime'),
                  style: context.textTheme.titleSmall?.copyWith(
                    color: context.themeColor.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 4),
                Text(_formatTime(timeNow, ref)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(String? time, WidgetRef ref) {
    if (time == null) return '-';
    // get the time zone from the settings
    final timeZone = ref
        .read(siteVisitControllerProvider.notifier)
        .getTimeZone();
    if (timeZone == '-') return '-';
    // get the location
    final location = tz.getLocation(timeZone);
    final now = tz.TZDateTime.parse(location, time);
    // format the time
    return DateFormat('dd/MM/yyyy - hh:mm a').format(now);
  }
}
