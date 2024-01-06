import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/product_categories/data/datasources/remote/product_categories_remote_datasource.dart';
import 'package:mobile_ec/src/features/product_categories/domain/entities/product_category_entity.dart';
import 'package:mobile_ec/src/features/product_categories/domain/repositories/product_categories_repository.dart';

class ProductCategoriesRepositoryImpl implements ProductCategoriesRepository {
  final ProductCategoriesRemoteDataSource remoteDataSource;

  ProductCategoriesRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<DataState<List<ProductCategoryEntity>>> get() async {
    // TODO: implement get
    try {
      final httpResponse = await remoteDataSource.get();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data);
      } else {
        return DataError(httpResponse.response.data);
      }
    } on DioException catch (e) {
      return DataError(e);
    }
  }
}
