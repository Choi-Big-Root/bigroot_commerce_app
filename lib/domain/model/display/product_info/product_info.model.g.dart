// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_info.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductInfo _$ProductInfoFromJson(Map<String, dynamic> json) => _ProductInfo(
  productId: json['productId'] as String,
  title: json['title'] as String,
  subtitle: json['subtitle'] as String,
  imageUrl: json['imageUrl'] as String,
  price: (json['price'] as num).toInt(),
  originalPrice: (json['originalPrice'] as num).toInt(),
  discountRate: (json['discountRate'] as num).toInt(),
  reviewCount: (json['reviewCount'] as num).toInt(),
);

Map<String, dynamic> _$ProductInfoToJson(_ProductInfo instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'imageUrl': instance.imageUrl,
      'price': instance.price,
      'originalPrice': instance.originalPrice,
      'discountRate': instance.discountRate,
      'reviewCount': instance.reviewCount,
    };
