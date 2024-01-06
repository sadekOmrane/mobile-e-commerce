import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/core/usecase/usecase.dart';
import 'package:mobile_ec/src/features/auth/domain/entities/user_entity.dart';
import 'package:mobile_ec/src/features/auth/domain/repositories/auth_repository.dart';

class LoginUseCase implements UseCase<DataState<UserEntity>, LoginParams> {
  final AuthRepository repository;

  LoginUseCase({required this.repository});

  @override
  Future<DataState<UserEntity>> call({required LoginParams params}) async {
    return await repository.login(
        username: params.username, password: params.password);
  }
}

class LoginParams {
  final String username;
  final String password;

  LoginParams({required this.username, required this.password});
}
