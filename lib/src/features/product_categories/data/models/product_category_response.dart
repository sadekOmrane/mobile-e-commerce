import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_ec/src/features/product_categories/data/models/product_category_model.dart';

part 'product_category_response.g.dart';

@JsonSerializable()
class ProductCategoriesResponse {
  final int status;
  final String message;
  final List<ProductCategoryModel> data;

  ProductCategoriesResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory ProductCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoriesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCategoriesResponseToJson(this);
}
