import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';

abstract class CartRepository {
  Future<DataState<List<ProductEntity>>> get();

  Future<DataState<void>> addItem(
      {required String productUuid, required int quantity});

  Future<DataState<void>> removeItem({required String productUuid});
}
