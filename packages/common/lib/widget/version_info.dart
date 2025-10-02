part of common;

class VersionInfo extends ConsumerWidget {
  const VersionInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final versionStatus = ref.watch(versionStatusProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kMedium),
      child: versionStatus.when(
        data: (data) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Local Version ${data?.localVersion ?? '-'}"),
              const SizedBox(height: kSmall),
              Text("Remote Version ${data?.storeVersion ?? '-'}"),
            ],
          );
        },
        loading: () {
          return const Center(child: CircularProgressIndicator.adaptive());
        },
        error: (error, stackTrace) {
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
