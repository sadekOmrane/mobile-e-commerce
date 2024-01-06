// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      uuid: json['uuid'] as String?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isActivated: json['isActivated'] as bool?,
    )..profilePicture = json['profilePicture'] as String?;

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'email': instance.email,
      'profilePicture': instance.profilePicture,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'roles': instance.roles,
      'isActivated': instance.isActivated,
    };
