import 'package:get_it/get_it.dart';

import 'data/data_source/mock/display/display_mock_api.dart';
import 'data/data_source/remote/display.api.dart';
import 'data/repository_impl/display.repository_impl.dart';
import 'domain/repository/display.repository.dart';
import 'domain/usecase/display/display.usecase.dart';

final locator = GetIt.instance;

void setLocator() {
  _data();
  _domain();
}

void _data() {
  locator.registerSingleton<DisplayApi>(DisplayMockApi());
}

void _domain() {
  // locator<DisplayApi>():GetIt instance에 등록된 객체 중에서 타입이 DisplayApi인 인스턴스를 반환
  // 체이닝 스타일로 locator를 여러 번 호출하는 대신, .. 연산자를 사용해 한 번에 처리
  locator
    //Repository
    ..registerSingleton<DisplayRepository>(
      DisplayRepositoryImpl(locator<DisplayApi>()),
    )
    //usecase
    ..registerSingleton<DisplayUsecase>(
      DisplayUsecase(locator<DisplayRepository>()),
    );

  //locator.registerSingleton<DisplayRepository>(
  //   DisplayRepositoryImpl(locator<DisplayApi>()),
  //);
  //locator.registerSingleton<DisplayUsecase>(
  //   DisplayUsecase(locator<DisplayRepository>()),
  //);
}
