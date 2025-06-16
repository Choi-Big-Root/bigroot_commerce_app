import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../dependency_injection.dart';
import '../../../../../domain/model/display/menu/menu.model.dart';
import '../../bloc/view_module_bloc/view_module_bloc.dart';
import '../view_module_list/view_module_list.dart';

/// 글로벌 네비게이션 바 뷰 위젯
/// [mallType]: 쇼핑몰 타입 (예: 일반몰, 브랜드몰 등)
/// [menus]: 네비게이션에 표시될 메뉴 리스트
class GlobalNavBarView extends StatelessWidget {
  const GlobalNavBarView({
    required this.mallType,
    required this.menus,
    super.key,
  });

  final MallType mallType;
  final List<Menu> menus;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        // menus 길이만큼 탭 뷰를 생성
        children: List.generate(menus.length, (index) {
          // 각 탭마다 새로운 BlocProvider 생성
          // 주의: 메모리 사용량이 증가할 수 있음
          return BlocProvider(
            create:
                (_) =>
                    getIt<ViewModuleBloc>() // DI를 통해 UseCase 주입
                      ..add(
                        ViewModuleInitialized(menus[index].tabId),
                      ), // 블록 생성 즉시 초기화 이벤트 발생
            child: const ViewModuleList(), // 실제 뷰 모듈 리스트 표시
          );
        }),
      ),
    );
  }
}
