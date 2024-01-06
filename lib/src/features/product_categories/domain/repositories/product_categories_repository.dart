import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/product_categories/domain/entities/product_category_entity.dart';

abstract class ProductCategoriesRepository {
  Future<DataState<List<ProductCategoryEntity>>> get();
}
