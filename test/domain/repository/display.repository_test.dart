import 'package:bigroot_commerce_app/data/data_source/mock/display/display_mock_api.dart';
import 'package:bigroot_commerce_app/data/data_source/remote/display.api.dart';
import 'package:bigroot_commerce_app/data/mapper/common.mapper.dart';
import 'package:bigroot_commerce_app/data/mapper/display.mapper.dart';
import 'package:bigroot_commerce_app/data/repository_impl/display.repository_impl.dart';
import 'package:bigroot_commerce_app/domain/model/display/menu/menu.model.dart';
import 'package:bigroot_commerce_app/domain/repository/display.repository.dart';
import 'package:bigroot_commerce_app/presentation/main/cubit/mall_type_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDisplayApi extends Mock implements DisplayApi {}

void main() {
  late DisplayApi displayApi;
  late DisplayRepository displayRepsitory;

  // 메인 안에서 진행할 모든 테스트에 setupAll에 세팅 값을 사용하겠다.
  setUpAll(() {
    displayApi = MockDisplayApi();
    displayRepsitory = DisplayRepositoryImpl(displayApi);
  });

  //의존성 주입 및 객체 생성 완료 테스트
  test(
    'Dependency injection and object creation completion tests',
    () => expect(displayRepsitory, isNotNull),
  );
  //메뉴 리스트 불러오기
  group('Load menu list', () {
    //API 호출 성공
    test('API call completed', () async {
      try {
        // repository 에서 displayApi를 의존성 주입을 했고 displayApi는 MockDisPlayApi() 이기에
        // MockDisplayApi() 의 호출 테스트를 진행.
        await displayRepsitory.getMenusByMallType(mallType: MallType.market);
      } catch (error) {}

      //verify :특정 메서드가 호출되었는지 확인 함수
      //any : 어떤 파라미터든.
      //called: [정수] 만큼 호출 되었는지.
      verify(() => displayApi.getMenusByMallType(any())).called(1);
    });

    //API 호출 실패
    test('API call Failure', () async {
      final exception = Exception('error');
      // [테스트할 내용].[응답] = when
      when(() => displayApi.getMenusByMallType(any())).thenThrow(exception);

      // displayRepsitory.getMenusByMallType(mallType: any()), 실행.
      // throwsA : 비동기 예외 검사. , exception 발생 에러 변수를 동일하게 넣어 맞는지 확인.
      expect(
        () => displayRepsitory.getMenusByMallType(mallType: MallType.market),
        throwsA(exception),
      );
    });

    //API 성공적으로 불러옴.
    test('API call completed2', () async {
      const mallType = MallType.market;
      final mockingData = await DisplayMockApi().getMenusByMallType(
        mallType.name,
      );
      when(
        () => displayApi.getMenusByMallType(any()),
      ).thenAnswer((_) async => mockingData);

      final actual = await displayRepsitory.getMenusByMallType(
        mallType: mallType,
      );
      final expected = mockingData.toModel<List<Menu>>(
        mockingData.data?.map((menuDto) => menuDto.toModel()).toList() ?? [],
      );

      expect(actual, expected);
    });
  });
}
