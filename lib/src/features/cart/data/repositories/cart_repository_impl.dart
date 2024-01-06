import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/cart/data/datasources/remote/cart_remote_datasource.dart';
import 'package:mobile_ec/src/features/cart/domain/repositories/cart_repository.dart';
import 'package:mobile_ec/src/features/products/data/models/product_model.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource remoteDataSource;

  CartRepositoryImpl({required this.remoteDataSource});

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

  @override
  Future<DataState<void>> addItem(
      {required String productUuid, required int quantity}) async {
    try {
      final httpResponse = await remoteDataSource.addItem(
          product: productUuid, quantity: quantity);
      print(httpResponse.response.statusCode);
      if (httpResponse.response.statusCode == HttpStatus.created) {
        return DataSuccess(httpResponse.data);
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
  Future<DataState<void>> removeItem({required String productUuid}) async {
    try {
      final httpResponse =
          await remoteDataSource.removeItem(productUuid: productUuid);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
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
