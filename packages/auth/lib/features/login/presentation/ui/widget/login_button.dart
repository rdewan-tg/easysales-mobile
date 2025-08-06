part of '../../../../../auth.dart';

class LoginButton extends ConsumerWidget {
  final VoidCallback onPressed;
  const LoginButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
      loginControllerProvider.select((value) => value.isLoading),
    );

    return SizedBox(
      width: double.infinity,
      child: FilledButton.icon(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: kMedium),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kSmall),
          ),
        ),
        label: Text(
          'Login'.hardcoded,
          style: const TextStyle(fontSize: kMedium),
        ),
        icon: isLoading
            ? const CircularProgressIndicator.adaptive()
            : const Icon(Icons.login),
        onPressed: isLoading ? null : onPressed,
      ),
    );
  }
}
