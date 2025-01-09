import 'package:dio/dio.dart';
import 'api_interceptor.dart';

class ApiClient {
  final Dio _dio;

  ApiClient()
      : _dio = Dio(BaseOptions(
          baseUrl: 'https://api.example.com',
        ))..interceptors.add(ApiInterceptor());

  Future<Response> get(String path) async {
    return _dio.get(path);
  }

  // Add more methods like post, put, delete as needed
}

// ...existing code...
