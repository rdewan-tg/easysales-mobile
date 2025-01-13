part of '../../../../../auth.dart';

class DontHaveAccount extends ConsumerWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?".hardcoded,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: () {
            // Navigate to signup screen
            context.push('/signup');
          },
          child: Text(
            "Sign up".hardcoded,
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
