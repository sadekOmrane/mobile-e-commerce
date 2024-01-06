// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCategoryEntity _$ProductCategoryEntityFromJson(
        Map<String, dynamic> json) =>
    ProductCategoryEntity(
      uuid: json['uuid'] as String?,
      name: json['name'] as String?,
      icon: json['icon'] as String?,
      parent: json['parent'] as String?,
      children: (json['children'] as List<dynamic>?)
          ?.map(
              (e) => ProductCategoryEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductCategoryEntityToJson(
        ProductCategoryEntity instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'icon': instance.icon,
      'parent': instance.parent,
      'children': instance.children,
    };
