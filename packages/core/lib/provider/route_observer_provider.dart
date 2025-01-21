part of core;

/// Methods:
/// RouteAware class gives the accompanying methods which we can expand:

/// [didPop()]: In this method, when we pop the current screen, the didPop
/// method is called.
/// [didPopNext()]: In this method, on the off chance that you have extended
/// HomePage with RouteAware, and in case SecondPage is popped so HomePage is noticeable now, didPopNext is called. As such, this strategy is considered when the top screen is popped off and the current screen is apparent.
/// [didPush()]: In this method, this is called when the current screen or
/// route has been pushed into the navigation stack!
/// [didPushNext()]: In this method, when we push SecondPage from HomePage,
/// didPushNext is called. In other words, this method is called when
/// a new screen/route is pushed from the current screen
/// and the current screen is no longer visible.
final routeObserverProvider = Provider<RouteObserver>((ref) {
  return RouteObserver<ModalRoute>();
});

final appNavigatorObserverObserverProvider = Provider<NavigatorObserver>((ref) {
  return AppNavigatorObserver();
});

class AppNavigatorObserver extends NavigatorObserver {
  AppNavigatorObserver();

  @override
  void didPush(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    log('didPush: current: ${route.settings.name} : previous: ${previousRoute?.settings.name}');
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    log('didPop: current: ${route.settings.name} : previous: ${previousRoute?.settings.name}');
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    log('didRemove: current: ${route.settings.name} : previous: ${previousRoute?.settings.name}');
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    log('didReplace: current: ${newRoute?.settings.name} : previous: ${oldRoute?.settings.name}');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didStartUserGesture(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) =>
      log('didStartUserGesture: ${route.settings.name}, '
          'previousRoute= ${previousRoute?.settings.name}');

  @override
  void didStopUserGesture() => log('didStopUserGesture');
}
