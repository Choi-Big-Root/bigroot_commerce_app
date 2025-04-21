import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/theme/theme_data.dart';
import 'domain/usecase/display/display.usecase.dart';
import 'domain/usecase/display/menu/get_menus.usecase.dart';
import 'presentation/main/cubit/mall_type_cubit.dart';
import 'presentation/routes/routes.dart';
import 'service_locator.dart';

void main() async {
  setLocator();
  // final menus = await DisplayUsecase(
  //   DisplayRepositoryImpl(DisplayMockApi()),
  // ).excute(usecase: GetMenusUsecase(MallType.market));

  // 의존성 주입을 통해, 직접 인스턴스를 생성하는 대신
  // locator에서 이미 등록된 DisplayUsecase 인스턴스를 가져와 사용함.
  // 이로 인해 객체 생성 및 의존성 관리가 간편해지고,
  // 코드가 더 깔끔하고 유지보수하기 쉬워짐.
  final menus = await locator<DisplayUsecase>().excute(
    usecase: GetMenusUsecase(MallType.market),
  );
  print(menus);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:
          (context, child) => MaterialApp.router(
            routerConfig: router,
            theme: CustomThemeData.themeData,
            debugShowCheckedModeBanner: false,
          ),
      designSize: const Size(375, 812),
    );
  }
}
