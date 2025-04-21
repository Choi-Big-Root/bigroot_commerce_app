// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Menu _$MenuFromJson(Map<String, dynamic> json) => _Menu(
  title: json['title'] as String,
  tabId: (json['tabId'] as num).toInt(),
);

Map<String, dynamic> _$MenuToJson(_Menu instance) => <String, dynamic>{
  'title': instance.title,
  'tabId': instance.tabId,
};
