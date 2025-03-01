library sales;

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/address/presentation/controller/address_controller.dart';
import 'package:sales/features/customer/presentation/controller/sales_customer_controller.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:go_router/go_router.dart';
import 'package:sales/features/order/presentation/controller/sales_header_controller.dart';
import 'package:sales/features/order/presentation/controller/sales_line_controller.dart';
import 'package:sales/features/order/presentation/controller/sync_order_controller.dart';
import 'package:sales/features/order_history/presentation/controller/order_history_controller.dart';
import 'package:sales/features/product/presentation/controller/product_controller.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:intl/intl.dart';

part 'features/customer/presentation/ui/sales_customer_screen.dart';
part 'features/customer/presentation/ui/search_sales_customer_screen.dart';
part 'features/customer/presentation/ui/widget/sales_customer_list_widget.dart';
part 'features/customer/presentation/ui/widget/search/clear_search_history.dart';
part 'features/customer/presentation/ui/widget/search/search_query_widget.dart';
part 'features/customer/presentation/ui/widget/search/search_suggestion.dart';
part 'features/customer/presentation/ui/widget/customer_address_list_widget.dart';
part 'features/customer/presentation/ui/sales_customer_import_screen.dart';
part 'features/customer/presentation/ui/widget/sales_customer_import_view.dart';

part 'features/product/presentation/ui/product_screen.dart';
part 'features/product/presentation/ui/product_import_screen.dart';

part 'features/product/presentation/ui/widget/product_grid.dart';
part 'features/product/presentation/ui/widget/product_import_view.dart';
part 'features/product/presentation/ui/widget/select_product_detail.dart';

// order
part 'features/order/presentation/ui/sales_order_screen.dart';
part 'features/order/presentation/ui/tab_sales_header_screen.dart';
part 'features/order/presentation/ui/tab_sales_line_screen.dart';
part 'features/order/presentation/ui/tab_items_screen.dart';
part 'features/order/presentation/ui/widget/edit_line_item.dart';
// search
part 'features/order/presentation/ui/widget/search/item_search_query_widget.dart';
part 'features/order/presentation/ui/widget/search/item_search_suggestion.dart';
part 'features/order/presentation/ui/widget/search/item_clear_search_history.dart';
part 'features/order/presentation/ui/search_items_screen.dart';

// order history
part 'features/order_history/presentation/ui/order_history_screen.dart';
part 'features/order_history/presentation/ui/widget/order_history_view.dart';
part 'features/order_history/presentation/ui/order_history_detail_screen.dart';
part 'features/order_history/presentation/ui/widget/order_history_detail_view.dart';
