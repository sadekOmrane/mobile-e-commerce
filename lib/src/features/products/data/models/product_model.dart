import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';
part 'product_model.g.dart';

@JsonSerializable()
class ProductModel extends ProductEntity {
  ProductModel({
    super.uuid,
    super.name,
    super.discountValue,
    super.finalPrice,
    super.initPrice,
    super.isActivated,
    super.isDiscounted,
    super.isSponsored,
    super.mainPhoto,
    super.marque,
    super.marqueUuid,
    super.quantity,
    super.stockStatus,
    super.starsAvg,
    super.starsCount,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
