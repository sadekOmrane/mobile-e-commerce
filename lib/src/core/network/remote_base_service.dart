import 'package:dio/dio.dart';

class RemoteBaseDataSource {
  String baseUrl = 'https://api.3ala-3ajla.com/api/user';
  String suffixUrl = '';
  late Dio dio;

  RemoteBaseDataSource() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    );

    dio = Dio(options);
  }
}
