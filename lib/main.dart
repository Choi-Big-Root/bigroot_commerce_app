import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/theme/theme_data.dart';
import 'data/data_source/mock/display/display_mock_api.dart';
import 'data/data_source/remote/display.api.dart';
import 'data/repository_impl/display.repository_impl.dart';
import 'domain/usecase/display/display.usecase.dart';
import 'domain/usecase/display/menu/get_menus.usecase.dart';
import 'presentation/main/cubit/mall_type_cubit.dart';
import 'presentation/routes/routes.dart';

void main() async {
  final displayUsecase = DisplayUsecase(
    DisplayRepositoryImpl(DisplayMockApi()),
  );
  final result = await displayUsecase.excute(
    usecase: GetMenusUsecase(MallType.market),
  );
  print(result);

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
