import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_entity.g.dart';

@JsonSerializable()
class UserEntity extends Equatable {
  String? uuid;
  String? email;
  String? profilePicture;
  String? firstName;
  String? lastName;
  List<String>? roles;
  bool? isActivated;
  //DateTime? createdAt;
  //DateTime? updatedAt;

  UserEntity({
    this.uuid,
    this.email,
    this.firstName,
    this.lastName,
    this.roles,
    this.isActivated,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [
        uuid,
        email,
        firstName,
        lastName,
        roles,
        isActivated,
      ];
}
