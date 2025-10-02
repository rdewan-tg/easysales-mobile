import 'package:common/provider/new_version_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:new_version_plus/new_version_plus.dart';

part 'new_version_status_provider.g.dart';

@riverpod
Future<VersionStatus?> versionStatus(Ref ref) {
  final nv = ref.read(newVersionProvider);
  return nv.getVersionStatus();
}
