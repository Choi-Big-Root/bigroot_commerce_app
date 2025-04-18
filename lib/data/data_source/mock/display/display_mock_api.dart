import 'dart:convert';

import '../../../dto/display/menu/menu.dto.dart';
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
  Future<List<MenuDto>> getMenusByMallType(String mallType) {
    return Future(
      () =>
          (mallType == 'market')
              ? _menuParser(DisplayMockData.menusByMarket)
              : _menuParser(DisplayMockData.menusByBeauty),
    );
  }
}
