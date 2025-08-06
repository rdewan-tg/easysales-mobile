part of merchandiser;

class SubmitSiteVisitButton extends ConsumerWidget {
  final void Function() onSubmit;
  const SubmitSiteVisitButton({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeNow = ref.watch(
      siteVisitControllerProvider.select((value) => value.timeNow),
    );
    final id = ref.watch(
      siteVisitControllerProvider.select(
        (value) => value.createSiteVisitResponse?.id ?? 0,
      ),
    );

    return Row(
      children: [
        const Spacer(),
        FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: id == 0
                ? context.themeColor.colorScheme.primary
                : context.themeColor.colorScheme.error,
          ),
          onPressed: timeNow != null ? onSubmit : null,
          child: id == 0
              ? Text(context.localizations('siteVisit.checkIn'))
              : Text(context.localizations('siteVisit.checkOut')),
        ),
      ],
    );
  }
}
