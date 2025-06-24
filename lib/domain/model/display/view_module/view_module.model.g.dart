// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_module.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ViewModule _$ViewModuleFromJson(Map<String, dynamic> json) => _ViewModule(
  type: json['type'] as String,
  title: json['title'] as String,
  subtitle: json['subtitle'] as String,
  imageUrl: json['imageUrl'] as String,
  products:
      (json['products'] as List<dynamic>)
          .map((e) => ProductInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ViewModuleToJson(_ViewModule instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'imageUrl': instance.imageUrl,
      'products': instance.products,
    };
