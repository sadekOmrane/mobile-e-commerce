import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/auth/data/datasources/remote/auth_remote_datasource.dart';
import 'package:mobile_ec/src/features/auth/data/datasources/secure_storage.dart';
import 'package:mobile_ec/src/features/auth/domain/entities/user_entity.dart';
import 'package:mobile_ec/src/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<DataState<UserEntity>> login(
      {required String username, required String password}) async {
    // TODO: implement login
    try {
      final httpResponse =
          await remoteDataSource.login(username: username, password: password);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        SecureStorage().setToken(httpResponse.data.data.token);
        SecureStorage().setUser(httpResponse.data.data.user);
        return DataSuccess(httpResponse.data.data.user);
      } else {
        return DataError(DioException(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
          error: httpResponse.response.data,
        ));
      }
    } on DioException catch (e) {
      return DataError(e);
    }
  }
  /*
  @override
  Future<Either<Failure, User>> login(String email, String password) async {
    
  }*/
}
