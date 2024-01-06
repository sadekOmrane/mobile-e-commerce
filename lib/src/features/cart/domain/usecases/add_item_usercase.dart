import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/core/usecase/usecase.dart';
import 'package:mobile_ec/src/features/cart/domain/repositories/cart_repository.dart';

class AddItemUseCase extends UseCase<DataState<void>, AddItemParams> {
  final CartRepository repository;

  AddItemUseCase({required this.repository});

  @override
  Future<DataState<void>> call({required AddItemParams params}) {
    return repository.addItem(
      productUuid: params.productUuid,
      quantity: params.quantity,
    );
  }
}

class AddItemParams {
  String productUuid;
  int quantity;

  AddItemParams({required this.productUuid, required this.quantity});
}
