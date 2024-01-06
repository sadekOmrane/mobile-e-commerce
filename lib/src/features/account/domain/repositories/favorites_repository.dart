import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';

abstract class FavoritesRepository {
  Future<DataState<List<ProductEntity>>> get();
}
