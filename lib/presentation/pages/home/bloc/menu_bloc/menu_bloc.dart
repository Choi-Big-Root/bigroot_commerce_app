import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/common/result.dart';
import '../../../../../domain/model/display/menu/menu.model.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';
import '../../../../../domain/usecase/display/menu/get_menus.usecase.dart';

part 'menu_event.dart';
part 'menu_state.dart';
part 'menu_bloc.freezed.dart';

class MenuBlock extends Bloc<MenuEvent, MenuState> {
  MenuBlock(this._displayUsecase) : super(MenuState());

  final DisplayUsecase _displayUsecase;

  Future<void> _onMenuInitialized(
    MenuInitialized event,
    Emitter<MenuState> emit,
  ) async {
    final mallType = event.mallType;

    emit(state.copyWith(status: Status.loading));
    try {
      final response = await _fetch(mallType);
      switch (response) {
        case Success(:final data):
          print("성공: $data");
        case Failure(:final error):
          print("실패: ${error.message}");
      }
      //response.
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(state.copyWith(status: Status.error));
    }
  }

  Future<Result<List<Menu>>> _fetch(MallType mallType) async {
    return _displayUsecase.execute(usecase: GetMenusUsecase(mallType));
  }
}
