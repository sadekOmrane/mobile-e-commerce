import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_ec/src/features/product_categories/domain/entities/product_category_entity.dart';
part 'product_category_model.g.dart';

@JsonSerializable()
class ProductCategoryModel extends ProductCategoryEntity {
  ProductCategoryModel({
    super.uuid,
    super.name,
    super.icon,
    super.parent,
    super.children,
  });

  factory ProductCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCategoryModelToJson(this);
}
