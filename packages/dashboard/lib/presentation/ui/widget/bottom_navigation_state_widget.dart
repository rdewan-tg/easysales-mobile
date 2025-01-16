part of '../../../dashboard.dart';

class BottomNavigationState extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;
  const BottomNavigationState({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavigationState = ref.watch(bottomNavigationStateProvider);
    return bottomNavigationState
        ? ScrollToHide(
            child: BottomNavigationWidget(
              navigationShell: navigationShell,
            ),
          )
        : const SizedBox.shrink();
  }
}
