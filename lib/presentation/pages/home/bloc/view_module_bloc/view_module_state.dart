part of 'view_module_bloc.dart';

@freezed
abstract class ViewModuleState with _$ViewModuleState {
  factory ViewModuleState({
    @Default(Status.initial) Status status,
    @Default(-1) int tabId,
    @Default(<ViewModule>[]) List<ViewModule> viewModules,
    @Default(ErrorResponse()) ErrorResponse error,
  }) = _ViewModuleState;
}
