import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<DataState<UserEntity>> login({
    required String username,
    required String password,
  });
}
