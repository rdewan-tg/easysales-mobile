library home;

import 'package:common/common.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home/presentation/controller/home_report_controller.dart';
import 'package:home/data/dto/response/last_3_months_sales_totals_response.dart';
import 'package:home/data/dto/response/top_selling_products_response.dart';
import 'package:home/data/dto/response/top_customers_response.dart';

part 'presentation/ui/home_screen.dart';
part 'presentation/ui/widget/top_selling_products_chart_view.dart';
part 'presentation/ui/widget/last_3_months_sales_totals_chart_view.dart';
part 'presentation/ui/widget/top_customers_chart_view.dart';
