import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/core/usecase/usecase.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';
import 'package:mobile_ec/src/features/products/domain/repositories/product_repository.dart';

class GetProductsUsecase
    implements UseCase<DataState<List<ProductEntity>>, void> {
  final ProductRepository repository;
  GetProductsUsecase({required this.repository});
  @override
  Future<DataState<List<ProductEntity>>> call({void params}) {
    return repository.get();
  }
}
