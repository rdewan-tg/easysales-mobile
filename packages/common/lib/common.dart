library common;


import 'package:common/exception/failure.dart';
import 'package:flutter/material.dart';
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

part 'extension/dark_mode.dart';
part 'extension/text_theme.dart';
part 'extension/color_theme.dart';
part 'extension/string_hardcoded.dart';

part 'enum/user_role.dart';

part 'provider/scroll_controller_povider.dart';
part 'provider/auth_state_provider.dart';

part 'mixin/dio_exception_mapper.dart';