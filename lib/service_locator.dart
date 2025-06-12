import 'package:get_it/get_it.dart';

import 'data/data_source/mock/display/display_mock_api.dart';
import 'data/data_source/remote/display.api.dart';
import 'data/repository_impl/display.repository_impl.dart';
import 'domain/repository/display.repository.dart';
import 'domain/usecase/display/display.usecase.dart';
import 'presentation/pages/home/bloc/menu_bloc/menu_bloc.dart';
import 'presentation/pages/home/bloc/view_module_bloc/view_module_bloc.dart';

final locator = GetIt.instance;

void setLocator() {
  _data();
  _domain();
  _presentation();
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

void _presentation() {
  // locator : 냉장고
  // registerFactory : 내가 냉장고에서 MenuBloc 찾을때마다 계속 생성.
  // MenuBloc를 만드려면 DisplayUsecase 가 있어야하고
  // DisplayUsecase는 냉장고[locator]에 이미 넣어둔 상태.
  locator.registerFactory(() => MenuBloc(locator<DisplayUsecase>()));

  // get_it 패키지를 사용하여 DI 구성.
  // locator : 의존성을 등록하고 꺼내는 DI 컨테이너
  // registerFactory(()=> ...) : factory는 호출할 때마다 새 인스턴스를 생성, ViewModuleBloc 필요할 때마다 새로운 객체가 생성된다.
  // ViewModuleBloc(...) : 생성되는 객체, DisplayUsecase를 의존성으로 필요로 한다.
  // locator<DisplayUsecase>() : locator에서 이미 등록된 DisplayUsecase 인스턴를 가져온다.
  // ViewModuleBloc는 생성될 때 내부에서 DisplayUsecase를 DI로주입 받는다.
  locator.registerFactory(() => ViewModuleBloc(locator<DisplayUsecase>()));
}
