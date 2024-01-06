part of 'remote_auth_bloc.dart';

sealed class RemoteAuthState extends Equatable {
  final UserEntity? user;
  final DioException? error;
  const RemoteAuthState(this.user, this.error);

  @override
  List<Object> get props => [];
}

final class RemoteAuthInitial extends RemoteAuthState {
  RemoteAuthInitial() : super(null, null);
}

final class RemoteLoginLoading extends RemoteAuthState {
  const RemoteLoginLoading() : super(null, null);
}

final class RemoteLogedin extends RemoteAuthState {
  const RemoteLogedin(UserEntity user) : super(user, null);
}

final class RemoteLoginError extends RemoteAuthState {
  const RemoteLoginError(DioException error) : super(null, error);
}
