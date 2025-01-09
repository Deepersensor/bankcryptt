import 'package:dio/dio.dart';
import 'retry_policy.dart';
import 'headers.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll(getDefaultHeaders());
    // Add retry policy
    options.interceptors.add(RetryPolicy());
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // Handle errors
    super.onError(err, handler);
  }
}
