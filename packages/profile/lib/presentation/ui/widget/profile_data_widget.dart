part of profile;

class ProfileDataWidget extends ConsumerWidget {
  const ProfileDataWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings =
        ref.watch(profileControllerProvider.select((value) => value.settings));
    return Column(
      children: [
        Column(
          children: [
            const SizedBox(height: kMedium),
            const ProfileImageWidget(photo: null),
            const SizedBox(height: kMedium),
            Text(
              settings['companyName'] ?? '',
              style: context.textTheme.titleLarge,
            ),
            const SizedBox(height: kMedium),
            Text(settings['name'] ?? '', style: context.textTheme.titleSmall),
            Text(settings['email'] ?? '', style: context.textTheme.titleSmall),
            if (settings['phoneNumber'] != null &&
                settings['phoneNumber'] != '-') ...[
              Text(
                settings['phoneNumber'] ?? '',
                style: context.textTheme.titleSmall,
              ),
            ],
          ],
        ),
      ],
    );
  }
}
