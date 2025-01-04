part of profile;

class ProfileScreen extends ConsumerWidget with ConfirmDialogMixin {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listener(ref, context);

    return AppScaffoldScrollable(
      title: Text(context.localizations('setting.profile')),
      elevation: 8,
      actions: [
        MenuAnchor(
          menuChildren: [
            MenuItemButton(
              onPressed: () =>  _logout(ref, context),
              child: Text(context.localizations('profile.signout')),
            ),
            MenuItemButton(
              onPressed: () => _deleteMe(ref, context),
              child: Text(context.localizations('profile.deleteMyAccount')),
            ),
          ],
          builder: (context, controller, child) {
            return IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              },
            );
          },
        ),
      ],
      widget: Padding(
        padding: const EdgeInsets.all(kMedium),
        child: Card(
          elevation: 4,
          clipBehavior: Clip.antiAlias,
          shadowColor: context.themeColor.primaryColorLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kMedium),
          ),
          child: const Padding(
            padding: EdgeInsets.all(kSmall),
            child: ProfileDataWidget(),
          ),
        ),
      ),      
    );
  }

  void _listener(WidgetRef ref, BuildContext context) {
    ref.listen(profileControllerProvider.select((value) => value.isLoading), (_, next) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
      
    });
    
  }

  void _logout(WidgetRef ref, BuildContext context) {
    showConfirmDialog(
      context: context,
      title: context.localizations('profile.signOutDialogTitle'),
      msg: context.localizations('profile.signOutDialogSubTitle'),
      btnYesText: context.localizations('profile.btnYes'),
      btnNoText: context.localizations('profile.btnNo'),
      icon: const Icon(
        Icons.warning_outlined,
        color: Colors.red,
      ),
      onYesTap: () {
        // delete customer account
        ref.read(profileControllerProvider.notifier).logout();
        // close dialog
        context.pop();
      },
      onNoTap: () {
        // close dialog
        context.pop();
      },
    );
    
  }

  void _deleteMe(WidgetRef ref, BuildContext context) {
    showConfirmDialog(
      context: context,
      title: context.localizations('profile.deleteDialogTitle'),
      msg: context.localizations('profile.deleteDialogSubTitle'),
      btnYesText: context.localizations('profile.btnYes'),
      btnNoText: context.localizations('profile.btnNo'),
      icon: const Icon(
        Icons.warning_outlined,
        color: Colors.red,
      ),
      onYesTap: () {
        // delete customer account
        ref.read(profileControllerProvider.notifier).deleteMyAccount();
        // close dialog
        context.pop();
      },
      onNoTap: () {
        // close dialog
        context.pop();
      },
    );
  }
}
