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
        title: Text(context.localizations('setting.title')),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // profile
            ListTile(
              title: Text(context.localizations('setting.profile')),
              subtitle: Text(
                context.localizations('setting.manageYourProfile'),
              ),
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

            // theme
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
            // language
            ListTile(
              title: Text(context.localizations('setting.language')),
              subtitle: Text(
                context.localizations('setting.selectYourLanguage'),
              ),
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
            // device setting
            ListTile(
              title: Text(context.localizations('setting.deviceSetting')),
              subtitle: Text(context.localizations('setting.manageYourDevice')),
              trailing: IconButton(
                onPressed: () {
                  context.go('/setting/device-setting');
                },
                icon: const Icon(Icons.navigate_next),
              ),
              onTap: () {
                context.go('/setting/device-setting');
              },
            ),
            // order running number
            ListTile(
              title: Text(
                context.localizations('setting.orderRunningNumberTitle'),
              ),
              subtitle: Text(
                context.localizations('setting.orderRunningNumberSubTitle'),
              ),
              trailing: IconButton(
                onPressed: () {
                  context.go('/setting/order-running-number');
                },
                icon: const Icon(Icons.navigate_next),
              ),
              onTap: () {
                context.go('/setting/order-running-number');
              },
            ),
            // import sales customer
            ListTile(
              title: Text(context.localizations('setting.importSalesCustomer')),
              subtitle: Text(
                context.localizations('setting.importSalesCustomerSubTitle'),
              ),
              trailing: IconButton(
                onPressed: () {
                  context.go('/order-history/sales/sales-customer-import');
                },
                icon: const Icon(Icons.navigate_next),
              ),
              onTap: () {
                context.go('/order-history/sales/sales-customer-import');
              },
            ),
            // import merchandiser customer
            ListTile(
              title: Text(
                context.localizations('setting.importMerchandiserCustomer'),
              ),
              subtitle: Text(
                context.localizations(
                  'setting.importMerchandiserCustomerSubTitle',
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  context.go('/merchandiser/merchandiser-customer-import');
                },
                icon: const Icon(Icons.navigate_next),
              ),
              onTap: () {
                context.go('/merchandiser/merchandiser-customer-import');
              },
            ),
            // import product and price
            ListTile(
              title: Text(
                context.localizations('setting.importProductAndPrice'),
              ),
              subtitle: Text(
                context.localizations('setting.importProductAndPriceSubTitle'),
              ),
              trailing: IconButton(
                onPressed: () {
                  context.go('/order-history/sales/product-import');
                },
                icon: const Icon(Icons.navigate_next),
              ),
              onTap: () {
                context.go('/order-history/sales/product-import');
              },
            ),
          ],
        ),
      ),
    );
  }
}
