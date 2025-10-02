import 'dart:async';

import 'package:core/core.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/flavor/flavor_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:setting/presentation/controller/setting_controller.dart';
import 'package:timezone/data/latest.dart' as tz_latest;
import 'package:timezone/timezone.dart' as tz;

part 'start_up_provider.g.dart';

@Riverpod(keepAlive: true)
Future<void> startUp(Ref ref, {required Flavor flavor}) async {
  ref.onDispose(() {});

  // Set the flavor state
  // ignore: avoid_manual_providers_as_generated_provider_dependency
  ref.read(flavorProvider.notifier).setFlavor(flavor);

  // start trace
  // initialize database
  ref.read(appDatabaseProvider);

  // get time zone
  await ref.read(settingControllerProvider.notifier).getAllSettings();
  final timeZone = ref.read(settingControllerProvider.notifier).getTimeZone();

  // initialize Time Zone database from latest
  tz_latest.initializeTimeZones();
  final location = tz.getLocation(timeZone ?? 'Asia/Singapore');
  tz.setLocalLocation(location);

  // stop trace
}
