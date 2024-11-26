library auth;

import 'package:auth/features/forgot_password/presentation/controller/forgot_password_controller.dart';
import 'package:auth/features/signup/presentation/controller/sign_up_controller.dart';
import 'package:common/common.dart';
import 'package:auth/features/login/presentation/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';




part 'features/login/presentation/ui/login_screen.dart';
part 'features/login/presentation/ui/widget/dont_have_account.dart';
part 'features/login/presentation/ui/widget/forgot_password.dart';
part 'features/login/presentation/ui/widget/login_button.dart';
part 'features/login/presentation/ui/widget/login_form.dart';
part 'features/login/presentation/ui/widget/password_visibility.dart';
part 'features/login/presentation/ui/widget/password_form_field.dart';

part 'features/signup/presentation/ui/signup_screen.dart';
part 'features/signup/presentation/ui/widget/already_have_account.dart';
part 'features/signup/presentation/ui/widget/signup_button.dart';
part 'features/signup/presentation/ui/widget/signup_form_list.dart';


part 'features/forgot_password/presentation/ui/forgot_password_screen.dart';
part 'features/forgot_password/presentation/ui/widget/forgot_password_button.dart';

