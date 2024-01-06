import 'package:dio/dio.dart';
import 'package:mobile_ec/src/features/auth/data/datasources/secure_storage.dart';

class DioInterceptor extends Interceptor {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // Do something before request is sent
    String? token = await SecureStorage().getToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    options.headers['Content-Type'] = 'application/json';
    super.onRequest(options, handler);
  }
}
