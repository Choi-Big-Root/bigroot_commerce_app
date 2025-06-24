import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_info.model.freezed.dart';
part 'product_info.model.g.dart';

@freezed
abstract class ProductInfo with _$ProductInfo {
  const factory ProductInfo({
    required String productId,
    required String title,
    required String subtitle,
    required String imageUrl,
    required int price,
    required int originalPrice,
    required int discountRate,
    required int reviewCount,
  }) = _ProductInfo;

  factory ProductInfo.fromJson(Map<String, dynamic> json) =>
      _$ProductInfoFromJson(json);
}
