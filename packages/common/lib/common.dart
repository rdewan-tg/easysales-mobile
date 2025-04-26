library common;

import 'dart:async';
import 'dart:convert';

import 'package:common/exception/failure.dart';
import 'package:common/gen/assets.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:upgrader/upgrader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:dio/dio.dart';

part 'style/dimens.dart';
part 'upgrader/upgrader_translation_messages.dart';
part 'upgrader/custom_upgrader_message.dart';

part 'theme/text_theme.dart';
part 'theme/theme.dart';
part 'theme/current_theme.dart';
part 'theme/theme_const.dart';

part 'widget/base_loading_indicator.dart';
part 'widget/flutter_error_widget.dart';
part 'widget/no_route_screen.dart';
part 'widget/app_scaffold_scrollable.dart';
part 'widget/form/custom_text_form_field.dart';
part 'widget/empty_data_widget.dart';

part 'extension/dark_mode.dart';
part 'extension/text_theme.dart';
part 'extension/color_theme.dart';
part 'extension/string_hardcoded.dart';
part 'extension/translations.dart';

part 'enum/user_role.dart';

part 'provider/scroll_controller_povider.dart';
part 'provider/auth_state_provider.dart';
part 'provider/bottom_navigation_state_povider.dart';
part 'provider/cache.dart';

part 'mixin/dio_exception_mapper.dart';
part 'mixin/error_dialog_mixin.dart';
part 'mixin/success_dialog.dart';
part 'mixin/confirm_dialog.dart';

part 'localization/app_localizations.dart';
part 'localization/language_const.dart';
