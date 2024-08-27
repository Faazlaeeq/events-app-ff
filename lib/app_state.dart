import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/api_requests/api_manager.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  final _loadEventsManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> loadEvents({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _loadEventsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLoadEventsCache() => _loadEventsManager.clear();
  void clearLoadEventsCacheKey(String? uniqueKey) =>
      _loadEventsManager.clearRequest(uniqueKey);

  final _loadAdvocacyManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> loadAdvocacy({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _loadAdvocacyManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLoadAdvocacyCache() => _loadAdvocacyManager.clear();
  void clearLoadAdvocacyCacheKey(String? uniqueKey) =>
      _loadAdvocacyManager.clearRequest(uniqueKey);

  final _loadOutreachManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> loadOutreach({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _loadOutreachManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLoadOutreachCache() => _loadOutreachManager.clear();
  void clearLoadOutreachCacheKey(String? uniqueKey) =>
      _loadOutreachManager.clearRequest(uniqueKey);
}
