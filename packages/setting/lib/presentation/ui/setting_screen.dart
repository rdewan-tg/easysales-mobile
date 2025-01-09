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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Setting Screen'.hardcoded),
          ],
        ),
      ),
    );
  }
}
