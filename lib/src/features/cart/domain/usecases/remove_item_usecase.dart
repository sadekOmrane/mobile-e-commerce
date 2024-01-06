import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/core/usecase/usecase.dart';
import 'package:mobile_ec/src/features/cart/domain/repositories/cart_repository.dart';

class RemoveItemUseCase extends UseCase<DataState<void>, RemoveItemParams> {
  final CartRepository repository;

  RemoveItemUseCase({required this.repository});

  @override
  Future<DataState<void>> call({required RemoveItemParams params}) {
    return repository.removeItem(
      productUuid: params.productUuid,
    );
  }
}

class RemoveItemParams {
  String productUuid;
  RemoveItemParams({required this.productUuid});
}
