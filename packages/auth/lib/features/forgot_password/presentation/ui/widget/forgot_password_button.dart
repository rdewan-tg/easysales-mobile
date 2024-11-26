part of '../../../../../auth.dart';

class ForgotPasswordButton extends ConsumerWidget {
  final VoidCallback onPressed;
  const ForgotPasswordButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(forgotPasswordControllerProvider.select((value) => value.isLoading));
        
    return SizedBox(
      width: double.infinity,
      child: FilledButton.icon(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: kMedium),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kSmall)),
        ),
        label: Text(
          'Send'.hardcoded,
          style: const TextStyle(fontSize: kMedium),
        ),
        icon: isLoading
            ? const CircularProgressIndicator.adaptive()
            : const Icon(Icons.send),
        onPressed: isLoading ? null : onPressed,
      ),
    );
  }
}
