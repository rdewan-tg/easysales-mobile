part of common;

class EmptyDataWidget extends ConsumerWidget {
  const EmptyDataWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.emptyBox.svg(
            width: 200,
            height: 200,
            colorFilter: const ColorFilter.mode(
              Colors.grey,
              BlendMode.srcIn,
            ),
          ),
          Text(context.localizations('common.noData')),
        ],
      ),
    );
  }
}
