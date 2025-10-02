import 'package:core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:new_version_plus/new_version_plus.dart';

part 'new_version_provider.g.dart';

@riverpod
NewVersionPlus newVersion(Ref ref) {
  final env = ref.watch(envReaderProvider);

  return NewVersionPlus(
    iOSId: env.getIosBuildId(),
    androidId: "com.tonggarden.easysales",
    androidPlayStoreCountry: "en_US",
    androidHtmlReleaseNotes: true, //support country code
  );
}
