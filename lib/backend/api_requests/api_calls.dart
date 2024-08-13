import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start CMS Group Code

class CmsGroup {
  static String getBaseUrl() => 'https://cmsvcard.solarion.id/items';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static GetProfileCall getProfileCall = GetProfileCall();
}

class GetProfileCall {
  Future<ApiCallResponse> call({
    String? name = 'Dawam Raja',
  }) async {
    final baseUrl = CmsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getProfile',
      apiUrl: '$baseUrl/XEmployees',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'filter[slug][_eq]': name,
        'fields':
            "*,photo.filename_disk,qr.filename_disk,contact.filename_disk",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].email''',
      ));
  String? whatsapp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].whatsapp''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].phone''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].title''',
      ));
  String? photourl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].photo.filename_disk''',
      ));
  String? slug(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].slug''',
      ));
  int? idUser(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].id''',
      ));
  String? qrUser(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].qr.filename_disk''',
      ));
  String? companyUser(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].company''',
      ));
  String? contactShare(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].contact.filename_disk''',
      ));
}

/// End CMS Group Code

class TestingCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'testing',
      apiUrl: 'https://1dev.my.id?whoami=1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
