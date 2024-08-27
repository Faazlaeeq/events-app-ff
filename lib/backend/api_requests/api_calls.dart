import 'dart:convert';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start backend Group Code

class BackendGroup {
  static String getBaseUrl() => 'https://event-backend.vercel.app/api/';
  static Map<String, String> headers = {};
  static GetOutreachCall getOutreachCall = GetOutreachCall();
  static GetEventCall getEventCall = GetEventCall();
  static GetAvocacyCall getAvocacyCall = GetAvocacyCall();
}

class GetOutreachCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BackendGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get Outreach',
      apiUrl: '${baseUrl}event/Outreach',
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

  List<EventStruct>? eventsList(dynamic response) => (getJsonField(
        response,
        r'''$.result.events''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => EventStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
  List? listOfimageUrlLists(dynamic response) => getJsonField(
        response,
        r'''$.result.events[:].eventImages''',
        true,
      ) as List?;
  List<String>? coverImages(dynamic response) => (getJsonField(
        response,
        r'''$.result.events[:].coverImage''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetEventCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BackendGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get Event',
      apiUrl: '${baseUrl}event/Events',
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

  List<EventStruct>? eventsList(dynamic response) => (getJsonField(
        response,
        r'''$.result.events''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => EventStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
  List? listOfimageUrlLists(dynamic response) => getJsonField(
        response,
        r'''$.result.events[:].eventImages''',
        true,
      ) as List?;
  List<String>? coverImages(dynamic response) => (getJsonField(
        response,
        r'''$.result.events[:].coverImage''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetAvocacyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BackendGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get Avocacy',
      apiUrl: '${baseUrl}event/Advocacy',
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

  List<EventStruct>? eventsList(dynamic response) => (getJsonField(
        response,
        r'''$.result.events''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => EventStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
  List? listOfimageUrlLists(dynamic response) => getJsonField(
        response,
        r'''$.result.events[:].eventImages''',
        true,
      ) as List?;
  List<String>? coverImages(dynamic response) => (getJsonField(
        response,
        r'''$.result.events[:].coverImage''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End backend Group Code

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
