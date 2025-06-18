import 'dart:io';

import 'package:common/common.dart';
import 'package:common/i18n/translations.dart';
import 'package:core/route/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:setting/presentation/controller/setting_controller.dart';
import 'package:upgrader/upgrader.dart';
import 'package:loader_overlay/loader_overlay.dart';

class MainWidget extends ConsumerStatefulWidget {
  const MainWidget({super.key});

  @override
  ConsumerState createState() => _MainWidgetState();
}

class _MainWidgetState extends ConsumerState<MainWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // riverpod watch - goRouter
    final router = ref.watch(goRouterProvider);

    final themeMode =
        ref.watch(settingControllerProvider.select((value) => value.themeMode));
    final language =
        ref.watch(settingControllerProvider.select((value) => value.language));

    // Theme
    final theme = ref.watch(materialThemeProvider(context));

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'main',
      title: 'EasySales',
      routerConfig: router,
      theme: theme.lightMediumContrast(),
      darkTheme: theme.darkMediumContrast(),
      themeMode: currentTheme(themeMode),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocales.supportedLocales,
      locale: Locale(language),
      localeResolutionCallback: (locale, supportedLocales) {
        for (var element in supportedLocales) {
          if (element.languageCode == locale?.languageCode) {
            return element;
          }
        }
        return Locale(language);
      },
      builder: (context, child) {
        return UpgradeAlert(
          shouldPopScope: () => true,
          navigatorKey: router.routerDelegate.navigatorKey,
          dialogStyle: Platform.isIOS
              ? UpgradeDialogStyle.cupertino
              : UpgradeDialogStyle.material,
          upgrader: Upgrader(
            messages: UpgraderTranslationMessages(
              code: language,
            ),
          ),
          child: LoaderOverlay(
            overlayColor: Colors.transparent,
            overlayWidgetBuilder: (_) => const BaseLoadingIndicator(),
            child: child ?? const SizedBox.shrink(),
          ),
        );
      },
    );
  }
}
