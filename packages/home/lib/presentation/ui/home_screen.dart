part of '../../home.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'.hardcoded),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Home Screen'.hardcoded),
            Consumer(
              builder: (context, ref, child) {
                final flavor = ref.watch(flavorProvider);
                return Text('Current Flavor: $flavor'.hardcoded);
              },
            ),
          ],
        ),
      ),
    );
  }
}
