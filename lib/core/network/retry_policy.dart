import 'package:dio/dio.dart';

class RetryPolicy extends Interceptor {
  final int retries;

  RetryPolicy({this.retries = 3});

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    if (retries > 0) {
      // Retry the request
      return handler.resolve(await Dio().request(err.requestOptions.path));
    }
    return super.onError(err, handler);
  }
}
