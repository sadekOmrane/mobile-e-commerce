import 'package:mobile_ec/src/features/auth/data/models/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String message;
  final String status;
  final AuthUserData data;

  LoginResponse(
      {required this.message, required this.status, required this.data});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class AuthUserData {
  final String token;
  final UserModel user;

  AuthUserData({required this.token, required this.user});

  factory AuthUserData.fromJson(Map<String, dynamic> json) =>
      _$AuthUserDataFromJson(json);

  Map<String, dynamic> toJson() => _$AuthUserDataToJson(this);
}
