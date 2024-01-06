import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/account/data/datasources/remote/favorites_remote_datasource.dart';
import 'package:mobile_ec/src/features/account/domain/repositories/favorites_repository.dart';
import 'package:mobile_ec/src/features/products/data/models/product_model.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  final FavoritesRemoteDataSource remoteDataSource;

  FavoritesRepositoryImpl({required this.remoteDataSource});

  @override
  Future<DataState<List<ProductModel>>> get() async {
    try {
      final httpResponse = await remoteDataSource.get();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data);
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
}
