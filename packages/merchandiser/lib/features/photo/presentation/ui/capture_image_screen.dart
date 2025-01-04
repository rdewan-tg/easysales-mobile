part of '../../../../merchandiser.dart';

class CaptureImageScreen extends ConsumerStatefulWidget {
  const CaptureImageScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CaptureImageScreenState();
}

class _CaptureImageScreenState extends ConsumerState<CaptureImageScreen> {
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CaptureImage(),
    );
  }
}
    