part of '../../../../../auth.dart';

class AlreadyHaveAccount extends ConsumerWidget {
  final VoidCallback onPressed;
  const AlreadyHaveAccount({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?'.hardcoded,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            "LogIn".hardcoded,
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
