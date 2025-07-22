part of core;

final envReaderProvider = Provider<EnvReader>((ref) {
  final flavor = ref.watch(flavorProvider);

  return EnvReader(flavor);
});

class EnvReader {
  final Flavor _flavor;

  EnvReader(this._flavor);

  String getBaseUrl() {
    switch (_flavor) {
      case Flavor.dev:
        return EnvDev.baseUrl;
      case Flavor.qa:
        return EnvQA.baseUrl;
      case Flavor.prod:
        return EnvProd.baseUrl;
    }
  }

  Uint8List getCertificate() {
    switch (_flavor) {
      case Flavor.dev:
        return base64Decode(EnvDev.certificate);
      case Flavor.qa:
        return base64Decode(EnvQA.certificate);
      case Flavor.prod:
        return base64Decode(EnvProd.certificate);
    }
  }

  String getAndroidBuildId() {
    switch (_flavor) {
      case Flavor.dev:
        return EnvDev.androidBuildId;
      case Flavor.qa:
        return EnvQA.androidBuildId;
      case Flavor.prod:
        return EnvProd.androidBuildId;
    }
  }

  String getIosBuildId() {
    switch (_flavor) {
      case Flavor.dev:
        return EnvDev.iosBuildId;
      case Flavor.qa:
        return EnvQA.iosBuildId;
      case Flavor.prod:
        return EnvProd.iosBuildId;
    }
  }

  bool getIsCertificatePinning() {
    switch (_flavor) {
      case Flavor.dev:
        return EnvDev.isCertificatePinning;
      case Flavor.qa:
        return EnvQA.isCertificatePinning;
      case Flavor.prod:
        return EnvProd.isCertificatePinning;
    }
  }
}
