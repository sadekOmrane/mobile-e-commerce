// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      uuid: json['uuid'] as String?,
      name: json['name'] as String?,
      discountValue: json['discountValue'] as num?,
      finalPrice: json['finalPrice'] as num?,
      initPrice: json['initPrice'] as num?,
      isActivated: json['isActivated'] as bool?,
      isDiscounted: json['isDiscounted'] as bool?,
      isSponsored: json['isSponsored'] as bool?,
      mainPhoto: json['mainPhoto'] as String?,
      marque: json['marque'] as String?,
      marqueUuid: json['marqueUuid'] as String?,
      quantity: json['quantity'] as num?,
      stockStatus: json['stockStatus'] as String?,
      starsAvg: json['starsAvg'] as num?,
      starsCount: json['starsCount'] as num?,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'initPrice': instance.initPrice,
      'quantity': instance.quantity,
      'stockStatus': instance.stockStatus,
      'discountValue': instance.discountValue,
      'mainPhoto': instance.mainPhoto,
      'isActivated': instance.isActivated,
      'isDiscounted': instance.isDiscounted,
      'marque': instance.marque,
      'marqueUuid': instance.marqueUuid,
      'finalPrice': instance.finalPrice,
      'isSponsored': instance.isSponsored,
      'starsCount': instance.starsCount,
      'starsAvg': instance.starsAvg,
    };
