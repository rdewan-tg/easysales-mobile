part of '../../../dashboard.dart';

class ScrollToHide extends ConsumerStatefulWidget {
  final Widget child;

  const ScrollToHide({super.key, required this.child});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ScrollToHideState();
}

class _ScrollToHideState extends ConsumerState<ScrollToHide> {
  ScrollController? scrollController;

  @override
  void dispose() {
    scrollController?.removeListener(_scrollControllerListener);
    scrollController = null;
    super.dispose();
  }

  void _scrollControllerListener() {
    if (scrollController?.hasClients == false) return;

    final scrollDirection = scrollController?.position.userScrollDirection;

    if (scrollDirection == ScrollDirection.reverse) {
      ref.read(dashboardControllerProvider.notifier).setIsVisible(false);
    } else if (scrollDirection == ScrollDirection.forward) {
      ref.read(dashboardControllerProvider.notifier).setIsVisible(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    _stateListener();

    final isVisible = ref.watch(
      dashboardControllerProvider.select((value) => value.isVisible),
    );

    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      height: isVisible ? 80 + MediaQuery.viewPaddingOf(context).bottom : 0,
      child: Wrap(children: [widget.child]),
    );
  }

  void _stateListener() {
    ref.listen(appScrollControllerProvider, (previous, next) {
      if (next != null) {
        if (scrollController != next) {
          if (scrollController != null) {
            scrollController?.removeListener(_scrollControllerListener);
          }
          scrollController = next;
          scrollController?.addListener(_scrollControllerListener);
        }
      }
    });
  }
}
