part of common;

class MainAppDrawer extends ConsumerWidget with ConfirmDialogMixin {
  const MainAppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Drawer(
        width: MediaQuery.sizeOf(context).width / 1.4,
        shape: const RoundedRectangleBorder(),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 150,
              child: DrawerHeader(
                child: Center(
                  child: Text(
                    context.localizations('appName'),
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            // profile menu
            Consumer(
              builder: (context, ref, child) {
                return ListTile(
                  leading: const Icon(Icons.person_outline),
                  title: Text(context.localizations('drawer.myProfile')),
                  onTap: () {
                    Navigator.pop(context);
                    context.push('/$settingRoute/$profileRoute');
                  },
                );
              },
            ),
            // theme menu
            Consumer(
              builder: (context, ref, child) {
                return ListTile(
                  leading: const Icon(Icons.dark_mode),
                  title: Text(context.localizations('drawer.theme')),
                  onTap: () {
                    Navigator.pop(context);
                    context.push('/$settingRoute/$themeRoute');
                  },
                );
              },
            ),
            // language menu
            Consumer(
              builder: (context, ref, child) {
                return ListTile(
                  leading: const Icon(Icons.language),
                  title: Text(context.localizations('drawer.language')),
                  onTap: () {
                    Navigator.pop(context);
                    context.push('/$settingRoute/$languageRoute');
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
