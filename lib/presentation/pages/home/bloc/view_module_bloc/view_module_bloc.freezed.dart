// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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

 Status get status; int get tabId; List<ViewModule> get viewModules; ErrorResponse get error;
/// Create a copy of ViewModuleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewModuleStateCopyWith<ViewModuleState> get copyWith => _$ViewModuleStateCopyWithImpl<ViewModuleState>(this as ViewModuleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewModuleState&&(identical(other.status, status) || other.status == status)&&(identical(other.tabId, tabId) || other.tabId == tabId)&&const DeepCollectionEquality().equals(other.viewModules, viewModules)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,tabId,const DeepCollectionEquality().hash(viewModules),error);

@override
String toString() {
  return 'ViewModuleState(status: $status, tabId: $tabId, viewModules: $viewModules, error: $error)';
}


}

/// @nodoc
abstract mixin class $ViewModuleStateCopyWith<$Res>  {
  factory $ViewModuleStateCopyWith(ViewModuleState value, $Res Function(ViewModuleState) _then) = _$ViewModuleStateCopyWithImpl;
@useResult
$Res call({
 Status status, int tabId, List<ViewModule> viewModules, ErrorResponse error
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
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? tabId = null,Object? viewModules = null,Object? error = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,tabId: null == tabId ? _self.tabId : tabId // ignore: cast_nullable_to_non_nullable
as int,viewModules: null == viewModules ? _self.viewModules : viewModules // ignore: cast_nullable_to_non_nullable
as List<ViewModule>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorResponse,
  ));
}

}


/// @nodoc


class _ViewModuleState implements ViewModuleState {
   _ViewModuleState({this.status = Status.initial, this.tabId = 10001, final  List<ViewModule> viewModules = const <ViewModule>[], this.error = const ErrorResponse()}): _viewModules = viewModules;
  

@override@JsonKey() final  Status status;
@override@JsonKey() final  int tabId;
 final  List<ViewModule> _viewModules;
@override@JsonKey() List<ViewModule> get viewModules {
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewModuleState&&(identical(other.status, status) || other.status == status)&&(identical(other.tabId, tabId) || other.tabId == tabId)&&const DeepCollectionEquality().equals(other._viewModules, _viewModules)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,tabId,const DeepCollectionEquality().hash(_viewModules),error);

@override
String toString() {
  return 'ViewModuleState(status: $status, tabId: $tabId, viewModules: $viewModules, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ViewModuleStateCopyWith<$Res> implements $ViewModuleStateCopyWith<$Res> {
  factory _$ViewModuleStateCopyWith(_ViewModuleState value, $Res Function(_ViewModuleState) _then) = __$ViewModuleStateCopyWithImpl;
@override @useResult
$Res call({
 Status status, int tabId, List<ViewModule> viewModules, ErrorResponse error
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
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? tabId = null,Object? viewModules = null,Object? error = null,}) {
  return _then(_ViewModuleState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,tabId: null == tabId ? _self.tabId : tabId // ignore: cast_nullable_to_non_nullable
as int,viewModules: null == viewModules ? _self._viewModules : viewModules // ignore: cast_nullable_to_non_nullable
as List<ViewModule>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorResponse,
  ));
}


}

// dart format on
