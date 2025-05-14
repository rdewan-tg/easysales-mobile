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
      widget: RefreshIndicator.adaptive(
        onRefresh: () async {
          await ref.read(settingControllerProvider.notifier).getDeviceSetting();
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              // Add extra space at the bottom to ensure scrollability
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
