import 'dart:async';

import 'package:core/core.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'start_up_provider.g.dart';

@Riverpod(keepAlive: true)
Future<void> startUp(Ref ref, {required Flavor flavor}) async {
  ref.onDispose(() {});

  // Set the flavor state
  // ignore: avoid_manual_providers_as_generated_provider_dependency
  ref.read(flavorProvider.notifier).state = flavor;

  // start trace
  // initialize database
  ref.read(appDatabaseProvider);

  // stop trace
}
