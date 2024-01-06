import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/auth/domain/entities/user_entity.dart';
import 'package:mobile_ec/src/features/auth/domain/usecases/login_usecase.dart';

part 'remote_auth_event.dart';
part 'remote_auth_state.dart';

class RemoteAuthBloc extends Bloc<RemoteAuthEvent, RemoteAuthState> {
  final LoginUseCase _loginUseCase;

  RemoteAuthBloc(this._loginUseCase) : super(RemoteAuthInitial()) {
    on<LoginEvent>(onLogin);
  }

  void onLogin(LoginEvent event, Emitter<RemoteAuthState> emit) async {
    final dataState = await _loginUseCase(
        params: LoginParams(
      username: event.username,
      password: event.password,
    ));

    if (dataState is DataSuccess) {
      emit(RemoteLogedin(dataState.data!));
    } else if (dataState is DataError) {
      print(dataState.error);
      emit(RemoteLoginError(dataState.error!));
    }
  }
}
