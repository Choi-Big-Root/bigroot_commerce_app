// Flutter Bloc 패키지 - 상태 관리를 위한 핵심 패키지
import 'package:flutter_bloc/flutter_bloc.dart';
// Freezed 패키지 - 불변성 객체 생성을 위한 코드 생성기
import 'package:freezed_annotation/freezed_annotation.dart';

// 프로젝트 내부 의존성 임포트
import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/exception/common_exception.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/common/result.dart';
import '../../../../../domain/model/display/view_module/view_module.model.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';
import '../../../../../domain/usecase/display/view_module/get_view_modules.usecase.dart';

// 관련 파일들을 part 지시문으로 포함
part 'view_module_event.dart';
part 'view_module_state.dart';
part 'view_module_bloc.freezed.dart';

/// ViewModule 관련 비즈니스 로직을 처리하는 Bloc
/// [DisplayUsecase]를 통해 뷰 모듈 데이터를 가져오고 상태를 관리함
class ViewModuleBloc extends Bloc<ViewModuleEvent, ViewModuleState> {
  // 생성자: DisplayUsecase를 주입받고 초기 상태를 설정
  ViewModuleBloc(this._displayUsecase) : super(ViewModuleState()) {
    // 이벤트 핸들러 등록
    // ViewModuleInitialized 이벤트 발생 시 _onViewModelInitialized 메서드 실행
    on<ViewModuleInitialized>(_onViewModelInitialized);
  }
  
  // UseCase 인스턴스 - 데이터 fetching을 위해 사용
  final DisplayUsecase _displayUsecase;

  /// ViewModuleInitialized 이벤트 핸들러
  /// [event]: 초기화 이벤트 (탭 ID 포함)
  /// [emit]: 상태 업데이트를 위한 함수
  Future<void> _onViewModelInitialized(
    ViewModuleInitialized event,
    Emitter<ViewModuleState> emit,
  ) async {
    // 로딩 상태로 변경
    emit(state.copyWith(status: Status.loading));

    await Future.delayed(const Duration(seconds: 1));

    final tabId = event.tabId;

    try {
      // 데이터 fetch 시도
      final response = await _fetch(tabId);

      // Result 타입에 따른 분기 처리
      switch (response) {
        case Success(:final data):
          // 성공 시: 상태 업데이트 (성공 상태, 탭 ID, 뷰 모듈 데이터)
          emit(
            state.copyWith(
              status: Status.success,
              tabId: tabId,
              viewModules: data,
            ),
          );
        case Failure(:final error):
          // 실패 시: 에러 상태로 변경
          emit(state.copyWith(status: Status.error, error: error));
      }
    } catch (error) {
      // 예외 발생 시 로깅 및 에러 상태 처리
      CustomLogger.logger.e(error);
      emit(
        state.copyWith(
          status: Status.error,
          error: CommonException.setError(error),
        ),
      );
    }
  }

  /// 뷰 모듈 데이터를 가져오는 private 메서드
  /// [tabId]: 조회할 탭의 ID
  /// Returns: Result<List<ViewModule>> 타입으로 성공 또는 실패 결과 반환
  Future<Result<List<ViewModule>>> _fetch(int tabId) async {
    return _displayUsecase.execute(usecase: GetViewModulesUsecase(tabId));
  }
}
