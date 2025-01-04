part of '../merchandiser.dart';

class MerchandiserScreen extends ConsumerStatefulWidget {
  const MerchandiserScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MerchandiserScreenState();
}

class _MerchandiserScreenState extends ConsumerState<MerchandiserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Merchandiser'.hardcoded),
        centerTitle: true,
        elevation: 8,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            FilledButton(
              onPressed: () {
                context.go('/capture-image');
              },
              child: Text(context.localizations('merchandiser.takePicture')),
            ),
          ],
        ),
      ),
    );
  }
}
