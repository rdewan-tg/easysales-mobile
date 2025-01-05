part of '../../../../../auth.dart';

class PasswordFormField extends ConsumerWidget {
  final TextEditingController passwordController;
  const PasswordFormField({super.key, required this.passwordController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isObscure = ref.watch(
        loginControllerProvider.select((value) => value.isPasswordVisible));

    return TextFormField(
      controller: passwordController,
      obscureText: isObscure ? false : true,
      decoration: InputDecoration(
        labelText: 'Password'.hardcoded,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(kSmall)),
        ),
        suffixIcon: const PasswordVisibility(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password'.hardcoded;
        } else if (value.length < 8) {
          return 'Password must be at least 8 characters long'.hardcoded;
        }
        return null;
      },
    );
  }
}
