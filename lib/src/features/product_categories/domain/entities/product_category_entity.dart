import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product_category_entity.g.dart';

@JsonSerializable()
class ProductCategoryEntity extends Equatable {
  String? uuid;
  String? name;
  String? icon;
  String? parent;
  List<ProductCategoryEntity>? children;

  ProductCategoryEntity(
      {this.uuid, this.name, this.icon, this.parent, this.children});

  factory ProductCategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCategoryEntityToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [
        uuid,
        name,
        icon,
        parent,
        children,
      ];
}
