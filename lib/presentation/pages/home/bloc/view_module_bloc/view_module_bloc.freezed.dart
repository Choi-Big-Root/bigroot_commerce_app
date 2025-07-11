// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_module_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ViewModuleState {

 Status get status; int get tabId; int get currentPage; bool get isEndOfPage; List<Widget> get viewModules; ErrorResponse get error;
/// Create a copy of ViewModuleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewModuleStateCopyWith<ViewModuleState> get copyWith => _$ViewModuleStateCopyWithImpl<ViewModuleState>(this as ViewModuleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewModuleState&&(identical(other.status, status) || other.status == status)&&(identical(other.tabId, tabId) || other.tabId == tabId)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.isEndOfPage, isEndOfPage) || other.isEndOfPage == isEndOfPage)&&const DeepCollectionEquality().equals(other.viewModules, viewModules)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,tabId,currentPage,isEndOfPage,const DeepCollectionEquality().hash(viewModules),error);

@override
String toString() {
  return 'ViewModuleState(status: $status, tabId: $tabId, currentPage: $currentPage, isEndOfPage: $isEndOfPage, viewModules: $viewModules, error: $error)';
}


}

/// @nodoc
abstract mixin class $ViewModuleStateCopyWith<$Res>  {
  factory $ViewModuleStateCopyWith(ViewModuleState value, $Res Function(ViewModuleState) _then) = _$ViewModuleStateCopyWithImpl;
@useResult
$Res call({
 Status status, int tabId, int currentPage, bool isEndOfPage, List<Widget> viewModules, ErrorResponse error
});




}
/// @nodoc
class _$ViewModuleStateCopyWithImpl<$Res>
    implements $ViewModuleStateCopyWith<$Res> {
  _$ViewModuleStateCopyWithImpl(this._self, this._then);

  final ViewModuleState _self;
  final $Res Function(ViewModuleState) _then;

/// Create a copy of ViewModuleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? tabId = null,Object? currentPage = null,Object? isEndOfPage = null,Object? viewModules = null,Object? error = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,tabId: null == tabId ? _self.tabId : tabId // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,isEndOfPage: null == isEndOfPage ? _self.isEndOfPage : isEndOfPage // ignore: cast_nullable_to_non_nullable
as bool,viewModules: null == viewModules ? _self.viewModules : viewModules // ignore: cast_nullable_to_non_nullable
as List<Widget>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorResponse,
  ));
}

}


/// Adds pattern-matching-related methods to [ViewModuleState].
extension ViewModuleStatePatterns on ViewModuleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ViewModuleState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ViewModuleState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ViewModuleState value)  $default,){
final _that = this;
switch (_that) {
case _ViewModuleState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ViewModuleState value)?  $default,){
final _that = this;
switch (_that) {
case _ViewModuleState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Status status,  int tabId,  int currentPage,  bool isEndOfPage,  List<Widget> viewModules,  ErrorResponse error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ViewModuleState() when $default != null:
return $default(_that.status,_that.tabId,_that.currentPage,_that.isEndOfPage,_that.viewModules,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Status status,  int tabId,  int currentPage,  bool isEndOfPage,  List<Widget> viewModules,  ErrorResponse error)  $default,) {final _that = this;
switch (_that) {
case _ViewModuleState():
return $default(_that.status,_that.tabId,_that.currentPage,_that.isEndOfPage,_that.viewModules,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Status status,  int tabId,  int currentPage,  bool isEndOfPage,  List<Widget> viewModules,  ErrorResponse error)?  $default,) {final _that = this;
switch (_that) {
case _ViewModuleState() when $default != null:
return $default(_that.status,_that.tabId,_that.currentPage,_that.isEndOfPage,_that.viewModules,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ViewModuleState implements ViewModuleState {
   _ViewModuleState({this.status = Status.initial, this.tabId = 0, this.currentPage = 1, this.isEndOfPage = false, final  List<Widget> viewModules = const <Widget>[], this.error = const ErrorResponse()}): _viewModules = viewModules;
  

@override@JsonKey() final  Status status;
@override@JsonKey() final  int tabId;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool isEndOfPage;
 final  List<Widget> _viewModules;
@override@JsonKey() List<Widget> get viewModules {
  if (_viewModules is EqualUnmodifiableListView) return _viewModules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_viewModules);
}

@override@JsonKey() final  ErrorResponse error;

/// Create a copy of ViewModuleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewModuleStateCopyWith<_ViewModuleState> get copyWith => __$ViewModuleStateCopyWithImpl<_ViewModuleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewModuleState&&(identical(other.status, status) || other.status == status)&&(identical(other.tabId, tabId) || other.tabId == tabId)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.isEndOfPage, isEndOfPage) || other.isEndOfPage == isEndOfPage)&&const DeepCollectionEquality().equals(other._viewModules, _viewModules)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,tabId,currentPage,isEndOfPage,const DeepCollectionEquality().hash(_viewModules),error);

@override
String toString() {
  return 'ViewModuleState(status: $status, tabId: $tabId, currentPage: $currentPage, isEndOfPage: $isEndOfPage, viewModules: $viewModules, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ViewModuleStateCopyWith<$Res> implements $ViewModuleStateCopyWith<$Res> {
  factory _$ViewModuleStateCopyWith(_ViewModuleState value, $Res Function(_ViewModuleState) _then) = __$ViewModuleStateCopyWithImpl;
@override @useResult
$Res call({
 Status status, int tabId, int currentPage, bool isEndOfPage, List<Widget> viewModules, ErrorResponse error
});




}
/// @nodoc
class __$ViewModuleStateCopyWithImpl<$Res>
    implements _$ViewModuleStateCopyWith<$Res> {
  __$ViewModuleStateCopyWithImpl(this._self, this._then);

  final _ViewModuleState _self;
  final $Res Function(_ViewModuleState) _then;

/// Create a copy of ViewModuleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? tabId = null,Object? currentPage = null,Object? isEndOfPage = null,Object? viewModules = null,Object? error = null,}) {
  return _then(_ViewModuleState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,tabId: null == tabId ? _self.tabId : tabId // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,isEndOfPage: null == isEndOfPage ? _self.isEndOfPage : isEndOfPage // ignore: cast_nullable_to_non_nullable
as bool,viewModules: null == viewModules ? _self._viewModules : viewModules // ignore: cast_nullable_to_non_nullable
as List<Widget>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorResponse,
  ));
}


}

// dart format on
