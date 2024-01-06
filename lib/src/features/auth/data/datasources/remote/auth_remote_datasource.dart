import 'package:dio/dio.dart';
import 'package:mobile_ec/src/core/constants/api_constants.dart';
import 'package:mobile_ec/src/features/auth/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_remote_datasource.g.dart';

@RestApi(baseUrl: APIConstants.BASE_URL)
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio) = _AuthRemoteDataSource;

  @POST('/security/login')
  Future<HttpResponse<LoginResponse>> login({
    @Field('username') required String username,
    @Field('password') required String password,
  });
}
