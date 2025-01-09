library dashboard;

import 'dart:io';

import 'package:common/common.dart';
import 'package:dashboard/presentation/state/dashboard_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'presentation/ui/dashboard_screen.dart';
part 'presentation/ui/widget/bottom_navigation_widget.dart';
part 'presentation/ui/widget/cart_badge_widget.dart';
part 'presentation/ui/widget/scroll_to_hide.dart';

part 'presentation/controller/dashboard_controller.dart';