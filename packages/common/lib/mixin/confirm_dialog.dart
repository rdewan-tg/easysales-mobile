part of common;

mixin ConfirmDialogMixin {
  Future<void> showConfirmDialog({
    required BuildContext context,
    required String title,
    required String msg,
    required String btnYesText,
    String? btnNoText,
    required Icon icon,
    bool barrierDismissible = true,
    required VoidCallback onYesTap,
    VoidCallback? onNoTap,
    Widget? yesIcon,
  }) {
    final textTheme = Theme.of(context).textTheme;

    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      useRootNavigator: false,
      builder: (context) {
        return PopScope(
          canPop: barrierDismissible,
          child: AlertDialog.adaptive(
            clipBehavior: Clip.antiAlias,
            scrollable: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kSmall),
            ),
            content: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(
                  top: kXLarge,
                  bottom: kXLarge,
                  left: kSmall,
                  right: kSmall,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        icon,
                        const SizedBox(width: kSmall),
                        Expanded(
                          child: Text(title, style: textTheme.headlineSmall),
                        ),
                      ],
                    ),
                    const SizedBox(height: kMedium),
                    Flexible(
                      child: Text(
                        msg,
                        style: textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              if (onNoTap != null && btnNoText != null) ...[
                TextButton.icon(
                  onPressed: onNoTap,
                  icon: const Icon(Icons.close),
                  label: Text(btnNoText),
                ),
                const SizedBox(width: kMedium),
              ],
              TextButton.icon(
                onPressed: onYesTap,
                icon: yesIcon ?? const Icon(Icons.check),
                label: Text(btnYesText),
              ),
            ],
          ),
        );
      },
    );
  }
}
