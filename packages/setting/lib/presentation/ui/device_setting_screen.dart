part of setting;

class DeviceSettingScreen extends ConsumerStatefulWidget {
  const DeviceSettingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DeviceSettingScreenState();
}

class _DeviceSettingScreenState extends ConsumerState<DeviceSettingScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(settingControllerProvider.notifier).getAllSettings();
    });
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(
      settingControllerProvider.select((value) => value.settings),
    );

    return AppScaffoldScrollable(
      title: Text(context.localizations('setting.deviceSetting')),
      widget: Column(
        children: [
          ListTile(
            title: Text(context.localizations('setting.deviceId')),
            subtitle: Text(settings['deviceId'] ?? ''),
          ),
          ListTile(
            title: Text(context.localizations('setting.salesPersonCode')),
            subtitle: Text(settings['salesPersonCode'] ?? ''),
          ),
          ListTile(
            title: Text(context.localizations('setting.orderNumberFormat')),
            subtitle: Text(settings['orderNumberFormat'] ?? ''),
          ),
          ListTile(
            title: Text(context.localizations('setting.timeZone')),
            subtitle: Text(settings['timeZone'] ?? ''),
          ),
        ],
      ),
    );
  }
}
