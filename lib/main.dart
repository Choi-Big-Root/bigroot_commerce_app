import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/theme/theme_data.dart';
import 'presentation/routes/routes.dart';
import 'service_locator.dart';

void main() async {
  setLocator();

  // final data = await DisplayMockApi().getMenusByMallType(MallType.market.name);
  // CustomLogger.logger.d(data);
  // final repository = await DisplayRepositoryImpl(
  //   DisplayMockApi(),
  // ).getMenusByMallType(mallType: MallType.market);
  // CustomLogger.logger.d(repository);
  //
  // final usecase = await DisplayUsecase(
  //   DisplayRepositoryImpl(DisplayMockApi()),
  // ).execute(usecase: GetMenusUsecase(MallType.market));
  //
  // CustomLogger.logger.d(usecase);
  //
  // final menus = await GetMenusUsecase(
  //   MallType.market,
  // ).call(DisplayRepositoryImpl(DisplayMockApi()));
  //
  // CustomLogger.logger.d(menus);
  //
  // final locatorMenus = await locator<DisplayUsecase>().execute(
  //   usecase: GetMenusUsecase(MallType.market),
  // );
  // CustomLogger.logger.d(locatorMenus);

  final locatorMenus = await locator<DisplayUsecase>().execute(
    usecase: GetViewModulesUsecase(10001),
  );
  CustomLogger.logger.d(locatorMenus);

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
