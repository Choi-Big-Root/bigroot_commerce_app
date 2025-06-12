import 'dart:convert';

import '../../../dto/common/response_wrapper/response_wrapper.dart';
import '../../../dto/display/menu/menu.dto.dart';
import '../../../dto/display/view_module/view_module.dto.dart';
import '../../remote/display.api.dart';
import 'display_mock_data.dart';

class DisplayMockApi implements DisplayApi {
  List<MenuDto> _menuParser(String source) {
    final dynamic json = jsonDecode(source);

    // json이 List 타입일 때만 처리하고, 각 요소가 Map<String, dynamic>인지 확인
    if (json is List) {
      return json
          .map(
            (e) =>
                e is Map<String, dynamic>
                    ? MenuDto.fromJson(e)
                    : throw Exception('Invalid data format'),
          )
          .toList();
    } else {
      // 예외 처리: List가 아닌 경우 빈 리스트 반환
      return [];
    }
  }

  @override
  Future<ResponseWrapper<List<MenuDto>>> getMenusByMallType(String mallType) {
    return Future(
      () => ResponseWrapper(
        // status: 'fail',
        // code: 'GNB-0000',
        // message: '서비스 에러가 발생했습니다.',
        status: 'SUCCESS',
        code: '0000',
        message: '',
        data:
            (mallType == 'market')
                ? _menuParser(DisplayMockData.menusByMarket)
                : _menuParser(DisplayMockData.menusByBeauty),
      ),
    );
  }

  List<ViewModuleDto> _viewModuleParser(String source) {
    final dynamic json = jsonDecode(source);

    // json이 List 타입일 때만 처리하고, 각 요소가 Map<String, dynamic>인지 확인
    if (json is List) {
      return json
          .map(
            (e) =>
                e is Map<String, dynamic>
                    ? ViewModuleDto.fromJson(e)
                    : throw Exception('Invalid data format'),
          )
          .toList();
    } else {
      // 예외 처리: List가 아닌 경우 빈 리스트 반환
      return [];
    }
  }

  @override
  Future<ResponseWrapper<List<ViewModuleDto>>> getViewModulesByTabId(
    int tabId,
    int page,
  ) {
    if (page == 4) {
      return Future(
        () => ResponseWrapper(
          status: 'SUCCESS',
          code: '0000',
          message: '',
          data: [],
        ),
      );
    }
    late String source;
    final endOfTabId = tabId % 10;
    switch (endOfTabId) {
      case 1:
        source = DisplayMockData.viewModulesByTabIdCaseOne;
      case 2:
        source = DisplayMockData.viewModulesByTabIdCaseTwo;
      case 3:
        source = DisplayMockData.viewModulesByTabIdCaseThree;
      case 4:
        source = DisplayMockData.viewModulesByTabIdCaseFour;
      case 5:
        source = DisplayMockData.viewModulesByTabIdCaseFive;
    }
    return Future(
      () => ResponseWrapper(
        status: 'SUCCESS',
        code: '0000',
        message: '',
        data: _viewModuleParser(source),
      ),
    );
  }
}
