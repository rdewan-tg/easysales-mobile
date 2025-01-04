part of setting;

class ThemePickerScreen extends ConsumerStatefulWidget {
  const ThemePickerScreen({super.key});

  @override
  ConsumerState<ThemePickerScreen> createState() => _ThemePickerScreenState();
}

class _ThemePickerScreenState extends ConsumerState<ThemePickerScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(
      settingControllerProvider.select((value) => value.themeMode),
    );

    return AppScaffoldScrollable(
      title: Text(context.localizations('setting.theme')),
      widget: Column(
        children: [
          ListTile(
            title: Text(context.localizations('setting.darkMode')),
            subtitle: Text(context.localizations('setting.enableDarkMode')),
            trailing: Switch.adaptive(
              value: theme == kLight ? false : true,
              onChanged: (value) {
                if (value) {
                  ref
                      .read(settingControllerProvider.notifier)
                      .writeTheme(themekey, kDark);
                } else {
                  ref
                      .read(settingControllerProvider.notifier)
                      .writeTheme(themekey, kLight);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
