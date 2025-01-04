part of '../../setting.dart';

class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingScreenState();
}

class _SettingScreenState extends ConsumerState<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'.hardcoded),
        centerTitle: true,
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text(context.localizations('setting.theme')),
              subtitle: Text(context.localizations('setting.enableDarkMode')),
              trailing: IconButton(
                onPressed: () {
                  context.go('/setting/theme');
                },
                icon: const Icon(Icons.navigate_next),
              ),
              onTap: () {
                context.go('/setting/theme');
              },
            ),
            ListTile(
              title: Text(context.localizations('setting.language')),
              subtitle:
                  Text(context.localizations('setting.selectYourLanguage')),
              trailing: IconButton(
                onPressed: () {
                  context.go('/setting/language');
                },
                icon: const Icon(Icons.navigate_next),
              ),
              onTap: () {
                context.go('/setting/language');
              },
            ),
            ListTile(
              title: Text(context.localizations('setting.profile')),
              subtitle:
                  Text(context.localizations('setting.manageYourProfile')),
              trailing: IconButton(
                onPressed: () {
                  context.go('/setting/profile');
                },
                icon: const Icon(Icons.navigate_next),
              ),
              onTap: () {
                context.go('/setting/profile');
              },
            ),
          ],
        ),
      ),
    );
  }
}
