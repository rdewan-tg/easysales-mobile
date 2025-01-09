import 'package:auth/auth.dart';
import 'package:common/common.dart';
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
import 'package:sales/sales.dart';
import 'package:setting/setting.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
 
  // final notifier = ref.read(goRouterNotifierProvider);
  // final observer = ref.read(routeObserverProvider);
  // final navigatorObserver = ref.read(appNavigatorObserverObserverProvider);
  // final logger = ref.read(loggerProvider('GoRouter'));
  final secureStorage = ref.watch(secureStorageProvider);
  
  final appRoute = AppRouter(
    secureStorage: secureStorage,
  );

  return appRoute.router;
});

class AppRouter {
  ISecureStorage secureStorage;
  final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey(debugLabel: 'root');
   bool isDuplicate = false;

  AppRouter({required this.secureStorage});
  

  GoRouter get router {
    return GoRouter(
      restorationScopeId: 'router',
      navigatorKey: rootNavigatorKey,
      initialLocation: '/login',
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
    if (state.matchedLocation == '/login' ||
        state.matchedLocation == '/login/phoneAuth' ||
        state.matchedLocation == '/login/phoneOTP') {
      return '/';
    }
    return null;
  }

  String? _handleLoggedOutRedirect(GoRouterState state) {
    if (state.matchedLocation != '/login' &&
        state.matchedLocation != '/login/phoneAuth' &&
        state.matchedLocation != '/login/phoneOTP') {
      return '/login?from=${state.matchedLocation}';
    }
    return null;
  }

  // 2. Routes Configuration
  List<RouteBase> _buildRoutes() {
    return [
      _loginRoute(),
      _signupRoute(),
      _captureImageRoute(),
      _dashboardRoute(),
    ];
  }

  RouteBase _loginRoute() {
    return GoRoute(
      path: '/$loginRoute',
      name: loginRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
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
            child: const SalesScreen(),
          ),
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
            child: const MerchandiserScreen(),
          ),
          
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
            child: const SettingScreen(),
          ),
        ),
      ],
    );
  }

  RouteBase _captureImageRoute() {
    return GoRoute(
      path: '/$captureImageRoute',
      name: captureImageRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: const CaptureImageScreen(),
      ),
    );
  }
  // 4. Error Handling
  Widget _errorBuilder(BuildContext context, GoRouterState state) {
    return const NoRouteScreen();
  }
}
