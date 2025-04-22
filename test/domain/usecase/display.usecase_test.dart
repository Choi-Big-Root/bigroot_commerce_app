import 'package:bigroot_commerce_app/core/utils/error/error_response.dart';
import 'package:bigroot_commerce_app/data/data_source/remote/display.api.dart';
import 'package:bigroot_commerce_app/data/repository_impl/display.repository_impl.dart';
import 'package:bigroot_commerce_app/domain/model/common/result.dart';
import 'package:bigroot_commerce_app/domain/model/display/menu/menu.model.dart';
import 'package:bigroot_commerce_app/domain/repository/display.repository.dart';
import 'package:bigroot_commerce_app/domain/usecase/display/display.usecase.dart';
import 'package:bigroot_commerce_app/domain/usecase/display/menu/get_menus.usecase.dart';
import 'package:bigroot_commerce_app/presentation/main/cubit/mall_type_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDisplayApi extends Mock implements DisplayApi {}

class MockDisplayRepository extends Mock implements DisplayRepository {}

class MockGetMenusUsecase extends Mock implements GetMenusUsecase {}

void main() {
  late DisplayRepository displayRepository;
  late DisplayUsecase displayUsecase;

  // 모든 테스트 실행 전에 한 번만 실행되며, displayApi와 displayRepository를 초기화합니다.
  setUpAll(() {
    displayRepository = DisplayRepositoryImpl(MockDisplayApi());
    displayUsecase = DisplayUsecase(displayRepository);
  });
  // 의존성 주입 및 객체생성 테스트
  test(
    'Dependency injection and object creation completion tests',
    () => expect(displayUsecase, isNotNull),
  );

  // usecase를 이용한 메뉴리스트를 성공적으로 가져오는지에 대한 테스트
  test(
    'Test whether the menu list is successfully retrieved using usecase',
    () async {
      // "성공적으로 이런 메뉴 하나를 받았다"는 가짜 응답(Mock 데이터)
      const result = Result.success([Menu(title: '메뉴테스트', tabId: -1)]);

      //  Mockito로 만든 가짜(Mock) UseCase 객체 생성
      final usecase = MockGetMenusUsecase();

      //  usecase.mallType이 호출되면 MallType.market을 리턴
      // → usecase가 어떤 MallType으로 동작하는지를 명시
      when(() => usecase.mallType).thenReturn(MallType.market);

      //  usecase.call(displayRepository)를 호출하면 result를 반환
      // → 실제 API 요청이 아닌, 테스트용으로 가짜 응답을 돌려주는 구조
      when(
        () => usecase.call(displayRepository),
      ).thenAnswer((_) async => result);

      //  DisplayUsecase의 execute 메서드를 호출해서 실제로 usecase 실행
      final actual = await displayUsecase.execute(usecase: usecase);

      //  기대값과 실제 결과가 동일한지 검증
      expect(actual, result);
    },
  );
  test(
    'Test whether the menu list fails to be retrieved using usecase',
    () async {
      // 실패 응답(Mock 데이터) 생성
      final result = Result<List<Menu>>.failure(ErrorResponse(status: 'error'));

      // 가짜 UseCase 객체 생성
      final usecase = MockGetMenusUsecase();

      // usecase.mallType이 호출되면 MallType.market을 리턴
      when(() => usecase.mallType).thenReturn(MallType.market);

      // usecase.call(displayRepository)를 호출하면 실패 응답을 리턴
      when(
        () => usecase.call(displayRepository),
      ).thenAnswer((_) async => result); // 실패값 result를 반환 usecase를 호출시.

      //왜 result가 fail이라고 .call 에서 까지 fail인지 확인을 해야한다.

      // 실제 DisplayUsecase의 execute 메서드를 실행
      //usecase 호출되니 result는 fali
      final actual = await displayUsecase.execute(usecase: usecase);

      // 결과가 실패 응답과 동일한지 검증
      expect(actual, result);
    },
  );
}
