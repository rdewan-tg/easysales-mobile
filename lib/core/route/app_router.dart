import 'package:auth/auth.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:core/data/local/secure_storage/isecure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage_const.dart';
import 'package:dashboard/dashboard.dart';
import 'package:easy_sales/core/route/route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';
import 'package:merchandiser/merchandiser.dart';
import 'package:profile/profile.dart';
import 'package:report/report.dart';
import 'package:sales/sales.dart';
import 'package:setting/setting.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final notifier = ref.read(goRouterNotifierProvider);
  // final observer = ref.read(routeObserverProvider);
  final navigatorObserver = ref.watch(appNavigatorObserverObserverProvider);
  // final logger = ref.read(loggerProvider('GoRouter'));
  final secureStorage = ref.watch(secureStorageProvider);

  final appRoute = AppRouter(
    secureStorage: secureStorage,
    notifier: notifier,
    navigatorObserver: navigatorObserver,
  );

  return appRoute.router;
});

class AppRouter {
  ISecureStorage secureStorage;
  GoRouterNotifier notifier;
  NavigatorObserver navigatorObserver;

  final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey(debugLabel: 'root');
  bool isDuplicate = false;

  AppRouter({
    required this.secureStorage,
    required this.notifier,
    required this.navigatorObserver,
  });

  GoRouter get router {
    return GoRouter(
      restorationScopeId: 'router',
      navigatorKey: rootNavigatorKey,
      observers: [navigatorObserver],
      refreshListenable: notifier,
      initialLocation: '/',
      redirect: _redirect,
      routes: _buildRoutes(),
      errorBuilder: _errorBuilder,
    );
  }

  //1. Redirect logic
  Future<String?> _redirect(BuildContext context, GoRouterState state) async {
    final accessToken = await secureStorage.read(accessTokenKey);
    final isLoggedIn = accessToken != null;

    // Handle redirects based on login status
    if (isLoggedIn) {
      return _handleLoggedInRedirect(state);
    } else {
      return _handleLoggedOutRedirect(state);
    }
  }

  String? _handleLoggedInRedirect(GoRouterState state) {
    if (state.matchedLocation == '/login') {
      return '/';
    }
    return null;
  }

  String? _handleLoggedOutRedirect(GoRouterState state) {
    if (state.matchedLocation != '/login') {
      return '/login?from=${state.matchedLocation}';
    }
    return null;
  }

  // 2. Routes Configuration
  List<RouteBase> _buildRoutes() {
    return [
      _loginRoute(),
      _signupRoute(),
      _dashboardRoute(),
      _todaySiteVisitReportRoute(),
      _thisMonthSiteVisitReportRoute(),
    ];
  }

  RouteBase _loginRoute() {
    return GoRoute(
      path: '/$loginRoute',
      name: loginRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const LoginScreen(),
      ),
      routes: [
        _forgotPasswordRoute(),
      ],
    );
  }

  RouteBase _signupRoute() {
    return GoRoute(
      path: '/$signupRoute',
      name: signupRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const SignUpScreen(),
      ),
    );
  }

  RouteBase _forgotPasswordRoute() {
    return GoRoute(
      path: '/$forgotPasswordRoute',
      name: forgotPasswordRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const ForgotPasswordScreen(),
      ),
    );
  }

  // 3. Dashboard and other main routes (simplified)
  StatefulShellRoute _dashboardRoute() {
    return StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return DashboardScreen(navigationShell: navigationShell);
      },
      branches: [
        _homeBranch(),
        _salesBranch(),
        _merchandiserBranch(),
        _settingBranch(),
      ],
    );
  }

  StatefulShellBranch _homeBranch() {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: '/',
          name: homeRoute,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            name: state.name,
            child: const HomeScreen(),
          ),
        ),
      ],
    );
  }

  StatefulShellBranch _salesBranch() {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: '/$salesRoute',
          name: salesRoute,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            name: state.name,
            child: const SalesCustomerScreen(),
          ),
          routes: [
            _searchSalesCustomerRoute(),
          ],
        ),
      ],
    );
  }

  StatefulShellBranch _merchandiserBranch() {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: '/$merchandiserRoute',
          name: merchandiserRoute,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            name: state.name,
            child: const MerchandiserCustomerScreen(),
          ),
          routes: [
            _captureImageRoute(),
            _searchMerchandiserCustomerRoute(),
          ],
        ),
      ],
    );
  }

  StatefulShellBranch _settingBranch() {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: '/$settingRoute',
          name: settingRoute,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            name: state.name,
            child: const SettingScreen(),
          ),
          routes: [
            _themeRoute(),
            _languageRoute(),
            _profileRoute(),
            _deviceSettingRoute(),
          ],
        ),
      ],
    );
  }

  RouteBase _captureImageRoute() {
    return GoRoute(
      path: '/$captureImageRoute',
      name: captureImageRoute,
      builder: (context, state) {
        final extras = state.extra as Map<String, dynamic>;
        return CaptureImageScreen(extras: extras);
      },
    );
  }

  RouteBase _themeRoute() {
    return GoRoute(
      path: '/$themeRoute',
      name: themeRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const ThemePickerScreen(),
      ),
    );
  }

  RouteBase _languageRoute() {
    return GoRoute(
      path: '/$languageRoute',
      name: languageRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const LanguagePickerScreen(),
      ),
    );
  }

  RouteBase _profileRoute() {
    return GoRoute(
      path: '/$profileRoute',
      name: profileRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const ProfileScreen(),
      ),
    );
  }

  RouteBase _deviceSettingRoute() {
    return GoRoute(
      path: '/$deviceSettingRoute',
      name: deviceSettingRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const DeviceSettingScreen(),
      ),
    );
  }

  RouteBase _searchMerchandiserCustomerRoute() {
    return GoRoute(
      path: '/$searchMerchandiserCustomer',
      name: searchMerchandiserCustomer,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const SearchMerchandiserCustomerScreen(),
      ),
    );
  }

  RouteBase _searchSalesCustomerRoute() {
    return GoRoute(
      path: '/$searchSalesCustomer',
      name: searchSalesCustomer,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const SearchSalesCustomerScreen(),
      ),
    );
  }

  RouteBase _todaySiteVisitReportRoute() {
    return GoRoute(
      path: '/$todaySiteVisitReportRoute',
      name: todaySiteVisitReportRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const TodaySiteVisitReportScreen(),
      ),
    );
  }

  RouteBase _thisMonthSiteVisitReportRoute() {
    return GoRoute(
      path: '/$thisMonthSiteVisitReportRoute',
      name: thisMonthSiteVisitReportRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const ThisMonthSiteVisitReportScreen(),
      ),
    );
  }

  // 4. Error Handling
  Widget _errorBuilder(BuildContext context, GoRouterState state) {
    return const NoRouteScreen();
  }
}
