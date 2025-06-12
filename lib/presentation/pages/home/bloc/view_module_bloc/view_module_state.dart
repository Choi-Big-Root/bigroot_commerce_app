part of 'view_module_bloc.dart';

@freezed
abstract class ViewModuleState with _$ViewModuleState {
  factory ViewModuleState({
    @Default(Status.initial) Status status,
    @Default(0) int tabId,
    @Default(1) int currentPage,
    @Default(false) bool isEndOfPage,
    @Default(<Widget>[]) List<Widget> viewModules,
    @Default(ErrorResponse()) ErrorResponse error,
  }) = _ViewModuleState;
}
