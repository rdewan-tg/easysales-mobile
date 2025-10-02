import 'package:auth/features/login/application/login_service.dart';
import 'package:auth/features/login/data/dto/request/login_request.dart';
import 'package:auth/features/login/presentation/state/login_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:common/common.dart';

final loginControllerProvider = NotifierProvider<LoginController, LoginState>(
  LoginController.new,
);

class LoginController extends Notifier<LoginState> {
  @override
  LoginState build() {
    return LoginState();
  }

  /// Attempts to login the user with the email and password
  /// from the state.
  ///
  /// If the login is successful, the state is updated to
  /// [isLoading] = false and [isLoginSuccess] = true.
  ///
  /// If the login fails, the state is updated to
  /// [isLoading] = false and [error] = the error message.
  ///
  /// The login request is created from the [email] and [password]
  /// fields of the state.
  ///
  /// The login response is the result of calling
  /// [loginService.login] with the login request.
  Future<void> login() async {
    try {
      // update the state - isLoading = true and error = null
      state = state.copyWith(isLoading: true, error: null);

      // setup the login request - email and password from the form
      final loginRequest = LoginRequest(
        email: state.loginForm['email'],
        password: state.loginForm['password'],
      );

      // call login api
      final result = await ref.read(loginServiceProvider).login(loginRequest);

      result.when(
        (success) {
          // update the auth state
          ref.invalidate(authStateProvider);
          ref.read(authStateProvider.notifier).setAuthState(success);

          // update the state - isLoading = false and isLoginSuccess = response
          state = state.copyWith(isLoading: false, isLoginSuccess: success);
        },
        (error) {
          state = state.copyWith(isLoading: false, error: error.message);
        },
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void setFormData(Map<String, dynamic> formData) {
    state = state.copyWith(loginForm: formData);
  }

  void togglePasswordVisibility() {
    state = state.copyWith(isPasswordVisible: !state.isPasswordVisible);
  }
}
