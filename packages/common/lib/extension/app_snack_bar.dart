part of common;

extension AppSnackBar on BuildContext {
  void showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: Text(message.hardcoded),
        backgroundColor: themeColor.colorScheme.secondary,
        elevation: kSmall,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kMedium),
            bottomRight: Radius.circular(kMedium),
          ),
        ),
      ),
    );
  }

  void showErrorSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 5),
        content: Text(message.hardcoded),
        backgroundColor: themeColor.colorScheme.error,
        elevation: kSmall,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kMedium),
            bottomRight: Radius.circular(kMedium),
          ),
        ),
      ),
    );
  }
}
