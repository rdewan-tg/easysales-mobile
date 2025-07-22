part of setting;

class CompanySettingScreen extends ConsumerStatefulWidget {
  const CompanySettingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompanySettingScreenState();
}

class _CompanySettingScreenState extends ConsumerState<CompanySettingScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(settingControllerProvider.notifier).getCompanySetting();
    });
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(
      settingControllerProvider.select((value) => value.settings),
    );

    return AppScaffoldScrollable(
      title: Text(context.localizations('setting.companySetting')),
      widget: RefreshIndicator.adaptive(
        onRefresh: () async {
          await ref
              .read(settingControllerProvider.notifier)
              .getCompanySetting();
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(context.localizations('setting.companyId')),
                subtitle: Text(settings['companyId'] ?? ''),
              ),
              ListTile(
                title: Text(context.localizations('setting.companyName')),
                subtitle: Text(settings['companyName'] ?? ''),
              ),
              ListTile(
                title: Text(context.localizations('setting.companyCode')),
                subtitle: Text(settings['companyCode'] ?? ''),
              ),
              ListTile(
                title: Text(context.localizations('setting.timeZone')),
                subtitle: Text(settings['timeZone'] ?? ''),
              ),
              SwitchListTile.adaptive(
                title: Text(
                  context.localizations('setting.isSiteVisitEnabled'),
                ),
                value: settings['isSiteVisitEnabled'] == 'true',
                onChanged: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
