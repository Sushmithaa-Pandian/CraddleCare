import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FetalhealthCall {
  static Future<ApiCallResponse> call({
    int? baselinevalue,
    double? accelerations,
    double? fetalMovement,
    double? uterineContractions,
    double? lightDecelerations,
    double? severeDecelerations,
  }) async {
    const ffApiRequestBody = '''
{
    "baseline value": 120,
    "accelerations": 0.003,
    "fetal_movement": 0.0,
    "uterine_contractions": 0.006,
    "light_decelerations": 0.0,
    "severe_decelerations": 0.0,
    "prolongued_decelerations": 0.0,
    "abnormal_short_term_variability": 0.0,
    "mean_value_of_short_term_variability": 0.5,
    "percentage_of_time_with_abnormal_long_term_variability": 0.0,
    "mean_value_of_long_term_variability": 6.0,
    "histogram_width": 60,
    "histogram_min": 62,
    "histogram_max": 182,
    "histogram_number_of_peaks": 2,
    "histogram_number_of_zeroes": 0,
    "histogram_mode": 120,
    "histogram_mean": 136,
    "histogram_median": 140,
    "histogram_variance": 12,
    "histogram_tendency": 0
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'fetalhealth',
      apiUrl: 'https://e66e-14-139-161-250.ngrok-free.app/fetal-health',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: true,
      alwaysAllowBody: false,
    );
  }

  static List? response(dynamic response) => getJsonField(
        response,
        r'''$['fetal_health']''',
        true,
      ) as List?;
}

class HealthcheckCall {
  static Future<ApiCallResponse> call({
    int? age = 25,
    int? systolicBP = 95,
    int? diastolicBP = 60,
    int? bs = 8,
    int? bodyTemp = 100,
    int? heartRate = 80,
  }) async {
    final ffApiRequestBody = '''
{
  "Age": $age,
  "SystolicBP": $systolicBP,
  "DiastolicBP": $diastolicBP,
  "BS": $bs,
  "BodyTemp": $bodyTemp,
  "HeartRate": $heartRate
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'healthcheck',
      apiUrl: 'https://e66e-14-139-161-250.ngrok-free.app/health-check',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: true,
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
