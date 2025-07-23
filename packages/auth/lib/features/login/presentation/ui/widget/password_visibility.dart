part of auth;

class PasswordVisibility extends ConsumerWidget {
  const PasswordVisibility({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isVisiable = ref.watch(
      loginControllerProvider.select((value) => value.isPasswordVisible),
    );
    return IconButton(
      icon: Icon(isVisiable ? Icons.visibility_off : Icons.visibility),
      onPressed: () {
        ref.read(loginControllerProvider.notifier).togglePasswordVisibility();
      },
    );
  }
}
