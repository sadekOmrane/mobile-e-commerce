import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/core/usecase/usecase.dart';
import 'package:mobile_ec/src/features/product_categories/domain/entities/product_category_entity.dart';
import 'package:mobile_ec/src/features/product_categories/domain/repositories/product_categories_repository.dart';

class GetProductCategoriesUsecase
    implements UseCase<DataState<List<ProductCategoryEntity>>, void> {
  final ProductCategoriesRepository repository;

  GetProductCategoriesUsecase({required this.repository});

  @override
  Future<DataState<List<ProductCategoryEntity>>> call({void params}) async {
    return await repository.get();
  }
}
