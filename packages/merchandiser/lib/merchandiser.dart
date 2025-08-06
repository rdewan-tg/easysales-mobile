library merchandiser;

import 'dart:async';
import 'dart:io';

import 'package:common/common.dart';
import 'package:core/route/route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:camerawesome/pigeon.dart';
import 'package:go_router/go_router.dart';
import 'package:merchandiser/features/address/presentation/controller/address_controller.dart';
import 'package:merchandiser/features/customer/presentation/controller/merchandiser_customer_controller.dart';
import 'package:merchandiser/features/photo/presentation/controller/capture_image_controller.dart';
import 'package:path_provider/path_provider.dart';
import 'package:gal/gal.dart';
import 'package:open_file/open_file.dart';
import 'package:image/image.dart' as img;
import 'package:timezone/data/latest.dart' as tz_latest;
import 'package:timezone/timezone.dart' as tz;
import 'package:intl/intl.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:merchandiser/features/site_visit/presentation/controller/site_visit_controller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:permission_handler/permission_handler.dart';

part 'features/customer/presentation/ui/merchandiser_customer_screen.dart';
part 'features/customer/presentation/ui/merchandiser_customer_import_screen.dart';
part 'features/customer/presentation/ui/widget/merchandiser_customer_import_view.dart';

part 'features/photo/presentation/ui/capture_image_screen.dart';
part 'features/customer/presentation/ui/widget/customer_list_widget.dart';
part 'features/customer/presentation/ui/widget/customer_address_list_widget.dart';
part 'features/customer/presentation/ui/widget/search/clear_search_history.dart';
part 'features/customer/presentation/ui/widget/search/search_suggestion.dart';
part 'features/customer/presentation/ui/widget/search/search_query_widget.dart';
part 'features/customer/presentation/ui/search_merchandiser_customer_screen.dart';

part 'features/site_visit/presentation/ui/site_visit_screen.dart';
part 'features/site_visit/presentation/ui/widget/current_location_widget.dart';
part 'features/site_visit/presentation/ui/widget/customer_info_widget.dart';
part 'features/site_visit/presentation/ui/widget/current_time_widget.dart';
part 'features/site_visit/presentation/ui/widget/submit_site_visit_button.dart';
