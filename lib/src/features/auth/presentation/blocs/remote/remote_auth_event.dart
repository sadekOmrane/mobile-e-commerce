part of 'remote_auth_bloc.dart';

sealed class RemoteAuthEvent extends Equatable {
  const RemoteAuthEvent();

  @override
  List<Object> get props => [];
}

final class LoginEvent extends RemoteAuthEvent {
  final String username;
  final String password;
  const LoginEvent({
    required this.username,
    required this.password,
  });
}
