// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

 String get type; String get title; String get subtitle; String get imageUrl; int get time; List<ProductInfo> get products;
/// Create a copy of ViewModule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewModuleCopyWith<ViewModule> get copyWith => _$ViewModuleCopyWithImpl<ViewModule>(this as ViewModule, _$identity);

  /// Serializes this ViewModule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewModule&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.time, time) || other.time == time)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,subtitle,imageUrl,time,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'ViewModule(type: $type, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, time: $time, products: $products)';
}


}

/// @nodoc
abstract mixin class $ViewModuleCopyWith<$Res>  {
  factory $ViewModuleCopyWith(ViewModule value, $Res Function(ViewModule) _then) = _$ViewModuleCopyWithImpl;
@useResult
$Res call({
 String type, String title, String subtitle, String imageUrl, int time, List<ProductInfo> products
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
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? title = null,Object? subtitle = null,Object? imageUrl = null,Object? time = null,Object? products = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as int,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductInfo>,
  ));
}

}


/// Adds pattern-matching-related methods to [ViewModule].
extension ViewModulePatterns on ViewModule {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ViewModule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ViewModule() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ViewModule value)  $default,){
final _that = this;
switch (_that) {
case _ViewModule():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ViewModule value)?  $default,){
final _that = this;
switch (_that) {
case _ViewModule() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String title,  String subtitle,  String imageUrl,  int time,  List<ProductInfo> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ViewModule() when $default != null:
return $default(_that.type,_that.title,_that.subtitle,_that.imageUrl,_that.time,_that.products);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String title,  String subtitle,  String imageUrl,  int time,  List<ProductInfo> products)  $default,) {final _that = this;
switch (_that) {
case _ViewModule():
return $default(_that.type,_that.title,_that.subtitle,_that.imageUrl,_that.time,_that.products);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String title,  String subtitle,  String imageUrl,  int time,  List<ProductInfo> products)?  $default,) {final _that = this;
switch (_that) {
case _ViewModule() when $default != null:
return $default(_that.type,_that.title,_that.subtitle,_that.imageUrl,_that.time,_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ViewModule implements ViewModule {
  const _ViewModule({required this.type, required this.title, required this.subtitle, required this.imageUrl, required this.time, required final  List<ProductInfo> products}): _products = products;
  factory _ViewModule.fromJson(Map<String, dynamic> json) => _$ViewModuleFromJson(json);

@override final  String type;
@override final  String title;
@override final  String subtitle;
@override final  String imageUrl;
@override final  int time;
 final  List<ProductInfo> _products;
@override List<ProductInfo> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewModule&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.time, time) || other.time == time)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,subtitle,imageUrl,time,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ViewModule(type: $type, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, time: $time, products: $products)';
}


}

/// @nodoc
abstract mixin class _$ViewModuleCopyWith<$Res> implements $ViewModuleCopyWith<$Res> {
  factory _$ViewModuleCopyWith(_ViewModule value, $Res Function(_ViewModule) _then) = __$ViewModuleCopyWithImpl;
@override @useResult
$Res call({
 String type, String title, String subtitle, String imageUrl, int time, List<ProductInfo> products
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
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? title = null,Object? subtitle = null,Object? imageUrl = null,Object? time = null,Object? products = null,}) {
  return _then(_ViewModule(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as int,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductInfo>,
  ));
}


}

// dart format on
