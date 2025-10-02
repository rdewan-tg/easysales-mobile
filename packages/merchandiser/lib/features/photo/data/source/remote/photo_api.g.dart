// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_api.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _PhotoApi implements PhotoApi {
  _PhotoApi(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<UploadMerchandiserPhotoResponse> uploadMerchandiserPhoto({
    required File file,
    required String deviceId,
    required String salesPersonCode,
    required String customerId,
    required String customerName,
    required String customerAddress,
    required String transDate,
    required String companyCode,
    required String customerChain,
    required String location,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.files.add(
      MapEntry(
        'file',
        MultipartFile.fromFileSync(
          file.path,
          filename: file.path.split(Platform.pathSeparator).last,
          contentType: DioMediaType.parse('image/*'),
        ),
      ),
    );
    _data.fields.add(MapEntry('deviceId', deviceId));
    _data.fields.add(MapEntry('salesPersonCode', salesPersonCode));
    _data.fields.add(MapEntry('customerId', customerId));
    _data.fields.add(MapEntry('customerName', customerName));
    _data.fields.add(MapEntry('customerAddress', customerAddress));
    _data.fields.add(MapEntry('transDate', transDate));
    _data.fields.add(MapEntry('companyCode', companyCode));
    _data.fields.add(MapEntry('customerChain', customerChain));
    _data.fields.add(MapEntry('location', location));
    final _options = _setStreamType<UploadMerchandiserPhotoResponse>(
      Options(
            method: 'POST',
            headers: _headers,
            extra: _extra,
            contentType: 'multipart/form-data',
          )
          .compose(
            _dio.options,
            '/v1/api/merchandiser/photos',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late UploadMerchandiserPhotoResponse _value;
    try {
      _value = UploadMerchandiserPhotoResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// dart format on
