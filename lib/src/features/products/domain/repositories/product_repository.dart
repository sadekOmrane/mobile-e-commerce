import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<DataState<List<ProductEntity>>> get();

  Future<List<ProductEntity>> save();

  Future<List<ProductEntity>> update();

  Future<List<ProductEntity>> delete();
}
