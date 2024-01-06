// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) =>
    ProductEntity(
      uuid: json['uuid'] as String?,
      name: json['name'] as String?,
      initPrice: json['initPrice'] as num?,
      quantity: json['quantity'] as num?,
      stockStatus: json['stockStatus'] as String?,
      discountValue: json['discountValue'] as num?,
      mainPhoto: json['mainPhoto'] as String?,
      isActivated: json['isActivated'] as bool?,
      isDiscounted: json['isDiscounted'] as bool?,
      marque: json['marque'] as String?,
      marqueUuid: json['marqueUuid'] as String?,
      finalPrice: json['finalPrice'] as num?,
      isSponsored: json['isSponsored'] as bool?,
      starsCount: json['starsCount'] as num?,
      starsAvg: json['starsAvg'] as num?,
    );

Map<String, dynamic> _$ProductEntityToJson(ProductEntity instance) =>
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
