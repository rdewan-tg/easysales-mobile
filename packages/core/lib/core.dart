library core;

import 'dart:convert';
import 'dart:developer';

import 'package:core/env/env.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:device_info_plus/device_info_plus.dart';

part 'flavor/flavor.dart';
part 'flavor/flavor_provider.dart';
part 'env/env_reader.dart';
part 'route/go_router_notifier.dart';

part 'provider/route_observer_provider.dart';
part 'provider/flutter_local_notification_provider.dart';
part 'notification/firebase/firebase_background_messaging.dart';
part 'provider/firebase_messaging_provider.dart';
part 'provider/device_info_plugin_provider.dart';
