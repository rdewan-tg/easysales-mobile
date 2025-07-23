part of setting;

class OrderRunningNumberScreen extends ConsumerStatefulWidget {
  const OrderRunningNumberScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OrderRunningNumberScreenState();
}

class _OrderRunningNumberScreenState
    extends ConsumerState<OrderRunningNumberScreen> {
  late TextEditingController _control;

  @override
  void initState() {
    super.initState();
    _control = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(settingControllerProvider.notifier).getOrderRunningNumber();
    });
  }

  @override
  void dispose() {
    _control.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return AppScaffoldScrollable(
      title: Text(context.localizations('setting.orderRunningNumberTitle')),
      widget: Padding(
        padding: const EdgeInsets.all(kMedium),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Consumer(
                    builder: (context, ref, child) {
                      final value = ref.watch(
                        settingControllerProvider.select(
                          (value) => value.orderRunningNumber,
                        ),
                      );
                      _control.text = value.toString();

                      return CustomTextFormField(
                        labelText: context.localizations(
                          'setting.orderRunningNumberTitle',
                        ),
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        controller: _control,
                      );
                    },
                  ),
                ),
                const SizedBox(width: kSmall),
                FilledButton(
                  onPressed: () {
                    ref
                        .read(settingControllerProvider.notifier)
                        .setOrderRunningNumber(_control.text);
                  },
                  child: Text(context.localizations('setting.save')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _listener() {
    ref.listen(
      settingControllerProvider.select(
        (value) => value.isOrderRunningNumberSaved,
      ),
      (previous, next) {
        if (next) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 3),
              content: Text(
                context.localizations(
                  'setting.orderRunningNumberUpdatedSuccessfully',
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
