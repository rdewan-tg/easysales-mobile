library sales;

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/address/presentation/controller/address_controller.dart';
import 'package:sales/features/customer/presentation/controller/sales_customer_controller.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:go_router/go_router.dart';
import 'package:sales/features/product/presentation/controller/product_controller.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

part 'features/customer/presentation/ui/sales_customer_screen.dart';
part 'features/customer/presentation/ui/search_sales_customer_screen.dart';
part 'features/customer/presentation/ui/widget/customer_list_widget.dart';
part 'features/customer/presentation/ui/widget/search/clear_search_history.dart';
part 'features/customer/presentation/ui/widget/search/search_query_widget.dart';
part 'features/customer/presentation/ui/widget/search/search_suggestion.dart';
part 'features/customer/presentation/ui/widget/customer_address_list_widget.dart';

part 'features/product/presentation/ui/product_screen.dart';
part 'features/product/presentation/ui/product_import_screen.dart';

part 'features/product/presentation/ui/widget/product_grid.dart';
part 'features/product/presentation/ui/widget/product_import_view.dart';
