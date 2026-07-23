import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:isar_community/isar.dart';

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../network/auth_interceptor.dart';
import '../network/connectivity_interceptor.dart';
import '../network/rate_limit_interceptor.dart';

import '../api/api_client.dart';
import '../api/dio_api_client.dart';
import '../cache/cache_manager.dart';
import '../cache/isar_cache_manager.dart';
import '../database/isar_database.dart';

part 'core_providers.g.dart';

@riverpod
FlutterSecureStorage flutterSecureStorage(FlutterSecureStorageRef ref) {
  return const FlutterSecureStorage();
}

@riverpod
ApiClient apiClient(ApiClientRef ref) {
  final secureStorage = ref.watch(flutterSecureStorageProvider);

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.github.com',
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      headers: {'Accept': 'application/vnd.github.v3+json'},
    ),
  );

  dio.interceptors.addAll([
    ConnectivityInterceptor(),
    AuthInterceptor(secureStorage),
    RateLimitInterceptor(),
    RetryInterceptor(
      dio: dio,
      logPrint: print,
      retries: 3,
      retryDelays: const [
        Duration(seconds: 1),
        Duration(seconds: 2),
        Duration(seconds: 3),
      ],
      retryEvaluator: DefaultRetryEvaluator({
        ...defaultRetryableStatuses,
        403,
        429,
      }).evaluate,
    ),
    LogInterceptor(responseBody: true, requestBody: true),
  ]);

  return DioApiClient(dio);
}

@riverpod
Isar isar(IsarRef ref) {
  return IsarDatabase().isar;
}

@riverpod
CacheManager cacheManager(CacheManagerRef ref) {
  final isar = ref.watch(isarProvider);
  return IsarCacheManager(isar: isar);
}
