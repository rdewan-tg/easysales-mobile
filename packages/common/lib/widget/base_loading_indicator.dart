part of '../common.dart';

class BaseLoadingIndicator extends ConsumerWidget {
  const BaseLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: LoadingAnimationWidget.progressiveDots(
        color: context.isDarkMode
            ? Colors.white
            : context.themeColor.primaryColor,
        size: 60,
      ),
    );
  }
}
