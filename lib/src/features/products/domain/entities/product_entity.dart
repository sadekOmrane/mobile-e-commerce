import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product_entity.g.dart';

@JsonSerializable()
class ProductEntity extends Equatable {
  String? uuid;
  String? name;
  num? initPrice;
  num? quantity;
  String? stockStatus;
  num? discountValue;
  String? mainPhoto;
  bool? isActivated;
  bool? isDiscounted;
  String? marque;
  String? marqueUuid;
  num? finalPrice;
  bool? isSponsored;
  num? starsCount;
  num? starsAvg;

  ProductEntity(
      {this.uuid,
      this.name,
      this.initPrice,
      this.quantity,
      this.stockStatus,
      this.discountValue,
      this.mainPhoto,
      this.isActivated,
      this.isDiscounted,
      this.marque,
      this.marqueUuid,
      this.finalPrice,
      this.isSponsored,
      this.starsCount,
      this.starsAvg});

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ProductEntityToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [
        uuid,
        name,
        initPrice,
        quantity,
        stockStatus,
        discountValue,
        mainPhoto,
        isActivated,
        isDiscounted,
        marque,
        marqueUuid,
        finalPrice,
        isSponsored,
        starsCount,
        starsAvg
      ];
}
