import 'package:core/core.dart';
import 'package:easy_sales/start_up/provider/start_up_provider.dart';
import 'package:easy_sales/start_up/start_up_error.dart';
import 'package:easy_sales/start_up/start_up_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StartUpScreen extends ConsumerStatefulWidget {
  final Flavor flavor;
  final WidgetBuilder builder;
  const StartUpScreen({
    super.key,
    required this.flavor,
    required this.builder,
  });

  @override
  ConsumerState<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends ConsumerState<StartUpScreen> {
  
  @override 
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(flavorProvider.notifier).setFlavor(widget.flavor);
     
    });
  }

  @override
  Widget build(BuildContext context) {
    final startUp = ref.watch(startUpProvider(flavor: widget.flavor));

    return startUp.when(
      data: (_) => widget.builder(context),
      error: (error, stackTrace) {
        return StartUpError(
          error: error,
          stackTrace: stackTrace,
          retryAction: () => ref.invalidate(startUpProvider),
        );
      },
      loading: () => const StartUpLoading(),
    );
  }
}
