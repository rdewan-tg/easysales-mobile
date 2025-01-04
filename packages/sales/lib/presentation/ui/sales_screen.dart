part of '../../sales.dart';

class SalesScreen extends ConsumerStatefulWidget {
  const SalesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SalesScreenState();
}

class _SalesScreenState extends ConsumerState<SalesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sales'.hardcoded),
        centerTitle: true,
        elevation: 8,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Sales Screen'.hardcoded),
          ],
        ),
      ),
    );
  }
}
