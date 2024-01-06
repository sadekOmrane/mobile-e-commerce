import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/products/data/datasources/remote/product_remote_datasource.dart';
import 'package:mobile_ec/src/features/products/data/models/product_model.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';
import 'package:mobile_ec/src/features/products/domain/repositories/product_repository.dart';

class ProductsRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductsRepositoryImpl({required this.remoteDataSource});
  @override
  Future<List<ProductEntity>> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<ProductModel>>> get([int? id, dynamic params]) async {
    try {
      final httpResponse = await remoteDataSource.get();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data.products);
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

  @override
  Future<List<ProductEntity>> save() {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<List<ProductEntity>> update() {
    // TODO: implement update
    throw UnimplementedError();
  }
}
