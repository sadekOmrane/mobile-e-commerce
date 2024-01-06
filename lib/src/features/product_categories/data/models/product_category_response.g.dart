// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCategoriesResponse _$ProductCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    ProductCategoriesResponse(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => ProductCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductCategoriesResponseToJson(
        ProductCategoriesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
