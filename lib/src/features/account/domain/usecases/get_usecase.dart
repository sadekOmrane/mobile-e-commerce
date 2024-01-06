import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/core/usecase/usecase.dart';
import 'package:mobile_ec/src/features/account/domain/repositories/favorites_repository.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';

class GetFavoritesUserCase
    extends UseCase<DataState<List<ProductEntity>>, void> {
  final FavoritesRepository repository;

  GetFavoritesUserCase({required this.repository});

  @override
  Future<DataState<List<ProductEntity>>> call({void params}) {
    return repository.get();
  }
}
