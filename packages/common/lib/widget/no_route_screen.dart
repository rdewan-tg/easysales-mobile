part of '../common.dart';

class NoRouteScreen extends ConsumerWidget {
  const NoRouteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('No Route Found'.hardcoded),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sorry No Route was found'.hardcoded),
            ElevatedButton.icon(
              onPressed: () {
                context.go('/');
              },
              icon: const Icon(Icons.home),
              label: Text('Home'.hardcoded),
            ),
          ],
        ),
      ),
    );
  }
}