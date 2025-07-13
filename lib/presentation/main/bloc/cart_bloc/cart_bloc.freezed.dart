// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartState {

 CartStatus get status; ErrorResponse get error; ProductInfo get productInfo; int get quantity; int get totalPrice;
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartStateCopyWith<CartState> get copyWith => _$CartStateCopyWithImpl<CartState>(this as CartState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&(identical(other.productInfo, productInfo) || other.productInfo == productInfo)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}


@override
int get hashCode => Object.hash(runtimeType,status,error,productInfo,quantity,totalPrice);

@override
String toString() {
  return 'CartState(status: $status, error: $error, productInfo: $productInfo, quantity: $quantity, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class $CartStateCopyWith<$Res>  {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) _then) = _$CartStateCopyWithImpl;
@useResult
$Res call({
 CartStatus status, ErrorResponse error, ProductInfo productInfo, int quantity, int totalPrice
});


$ProductInfoCopyWith<$Res> get productInfo;

}
/// @nodoc
class _$CartStateCopyWithImpl<$Res>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._self, this._then);

  final CartState _self;
  final $Res Function(CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? error = null,Object? productInfo = null,Object? quantity = null,Object? totalPrice = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CartStatus,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorResponse,productInfo: null == productInfo ? _self.productInfo : productInfo // ignore: cast_nullable_to_non_nullable
as ProductInfo,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductInfoCopyWith<$Res> get productInfo {
  
  return $ProductInfoCopyWith<$Res>(_self.productInfo, (value) {
    return _then(_self.copyWith(productInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartState value)  $default,){
final _that = this;
switch (_that) {
case _CartState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartState value)?  $default,){
final _that = this;
switch (_that) {
case _CartState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CartStatus status,  ErrorResponse error,  ProductInfo productInfo,  int quantity,  int totalPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that.status,_that.error,_that.productInfo,_that.quantity,_that.totalPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CartStatus status,  ErrorResponse error,  ProductInfo productInfo,  int quantity,  int totalPrice)  $default,) {final _that = this;
switch (_that) {
case _CartState():
return $default(_that.status,_that.error,_that.productInfo,_that.quantity,_that.totalPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CartStatus status,  ErrorResponse error,  ProductInfo productInfo,  int quantity,  int totalPrice)?  $default,) {final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that.status,_that.error,_that.productInfo,_that.quantity,_that.totalPrice);case _:
  return null;

}
}

}

/// @nodoc


class _CartState implements CartState {
   _CartState({this.status = CartStatus.close, this.error = const ErrorResponse(), this.productInfo = const ProductInfo(productId: '', title: '', subtitle: '', imageUrl: '', price: -1, originalPrice: -1, discountRate: -1, reviewCount: -1), this.quantity = 1, this.totalPrice = 0});
  

@override@JsonKey() final  CartStatus status;
@override@JsonKey() final  ErrorResponse error;
@override@JsonKey() final  ProductInfo productInfo;
@override@JsonKey() final  int quantity;
@override@JsonKey() final  int totalPrice;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartStateCopyWith<_CartState> get copyWith => __$CartStateCopyWithImpl<_CartState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartState&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&(identical(other.productInfo, productInfo) || other.productInfo == productInfo)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}


@override
int get hashCode => Object.hash(runtimeType,status,error,productInfo,quantity,totalPrice);

@override
String toString() {
  return 'CartState(status: $status, error: $error, productInfo: $productInfo, quantity: $quantity, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(_CartState value, $Res Function(_CartState) _then) = __$CartStateCopyWithImpl;
@override @useResult
$Res call({
 CartStatus status, ErrorResponse error, ProductInfo productInfo, int quantity, int totalPrice
});


@override $ProductInfoCopyWith<$Res> get productInfo;

}
/// @nodoc
class __$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(this._self, this._then);

  final _CartState _self;
  final $Res Function(_CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? error = null,Object? productInfo = null,Object? quantity = null,Object? totalPrice = null,}) {
  return _then(_CartState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CartStatus,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorResponse,productInfo: null == productInfo ? _self.productInfo : productInfo // ignore: cast_nullable_to_non_nullable
as ProductInfo,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductInfoCopyWith<$Res> get productInfo {
  
  return $ProductInfoCopyWith<$Res>(_self.productInfo, (value) {
    return _then(_self.copyWith(productInfo: value));
  });
}
}

// dart format on
