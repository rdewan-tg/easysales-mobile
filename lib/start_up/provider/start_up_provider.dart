import 'dart:async';


import 'package:core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'start_up_provider.g.dart';

@Riverpod(keepAlive: true)
Future<void> startUp(Ref ref, {required Flavor flavor}) async {
  ref.onDispose(() {
    
  });

  // Set the flavor state
  //ref.read(flavorProvider.notifier).setFlavor(flavor);

  // start trace


  // stop trace
 
}