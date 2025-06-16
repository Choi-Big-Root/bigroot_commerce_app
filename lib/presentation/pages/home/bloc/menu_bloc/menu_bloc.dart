import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/exception/common_exception.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/common/result.dart';
import '../../../../../domain/model/display/menu/menu.model.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';
import '../../../../../domain/usecase/display/menu/get_menus.usecase.dart';

part 'menu_event.dart';
part 'menu_state.dart';
part 'menu_bloc.freezed.dart';

@injectable
class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc(this._displayUsecase) : super(MenuState()) {
    // bloc에서 이벤트를 받으면 상태 업데이트는 on<EventType>((event, emit) => ...)
    // MenuInitialized 이벤트 발생시  _onMenuInitialized를 호출.
    on<MenuInitialized>(_onMenuInitialized);
  }

  final DisplayUsecase _displayUsecase;

  Future<void> _onMenuInitialized(
    MenuInitialized event,
    Emitter<MenuState> emit,
  ) async {
    final mallType = event.mallType;

    emit(state.copyWith(status: Status.loading));
    //해당 린트는 무시.
    await Future.delayed(const Duration(seconds: 1));
    try {
      final response = await _fetch(mallType);
      switch (response) {
        case Success(:final data):
          emit(
            state.copyWith(
              status: Status.success,
              mallType: mallType,
              menus: data,
            ),
          );
        case Failure(:final error):
          emit(state.copyWith(status: Status.error, error: error));
      }
      //response.
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(
        state.copyWith(
          status: Status.error,
          error: CommonException.setError(error),
        ),
      );
    }
  }

  Future<Result<List<Menu>>> _fetch(MallType mallType) async {
    return _displayUsecase.execute(usecase: GetMenusUsecase(mallType));
  }
}
