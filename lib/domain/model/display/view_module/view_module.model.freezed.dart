// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_module.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ViewModule {

 String get type; String get title; String get subtitle; String get imageUrl;
/// Create a copy of ViewModule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewModuleCopyWith<ViewModule> get copyWith => _$ViewModuleCopyWithImpl<ViewModule>(this as ViewModule, _$identity);

  /// Serializes this ViewModule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewModule&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,subtitle,imageUrl);

@override
String toString() {
  return 'ViewModule(type: $type, title: $title, subtitle: $subtitle, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $ViewModuleCopyWith<$Res>  {
  factory $ViewModuleCopyWith(ViewModule value, $Res Function(ViewModule) _then) = _$ViewModuleCopyWithImpl;
@useResult
$Res call({
 String type, String title, String subtitle, String imageUrl
});




}
/// @nodoc
class _$ViewModuleCopyWithImpl<$Res>
    implements $ViewModuleCopyWith<$Res> {
  _$ViewModuleCopyWithImpl(this._self, this._then);

  final ViewModule _self;
  final $Res Function(ViewModule) _then;

/// Create a copy of ViewModule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? title = null,Object? subtitle = null,Object? imageUrl = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ViewModule implements ViewModule {
  const _ViewModule({required this.type, required this.title, required this.subtitle, required this.imageUrl});
  factory _ViewModule.fromJson(Map<String, dynamic> json) => _$ViewModuleFromJson(json);

@override final  String type;
@override final  String title;
@override final  String subtitle;
@override final  String imageUrl;

/// Create a copy of ViewModule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewModuleCopyWith<_ViewModule> get copyWith => __$ViewModuleCopyWithImpl<_ViewModule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ViewModuleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewModule&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,subtitle,imageUrl);

@override
String toString() {
  return 'ViewModule(type: $type, title: $title, subtitle: $subtitle, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$ViewModuleCopyWith<$Res> implements $ViewModuleCopyWith<$Res> {
  factory _$ViewModuleCopyWith(_ViewModule value, $Res Function(_ViewModule) _then) = __$ViewModuleCopyWithImpl;
@override @useResult
$Res call({
 String type, String title, String subtitle, String imageUrl
});




}
/// @nodoc
class __$ViewModuleCopyWithImpl<$Res>
    implements _$ViewModuleCopyWith<$Res> {
  __$ViewModuleCopyWithImpl(this._self, this._then);

  final _ViewModule _self;
  final $Res Function(_ViewModule) _then;

/// Create a copy of ViewModule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? title = null,Object? subtitle = null,Object? imageUrl = null,}) {
  return _then(_ViewModule(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
