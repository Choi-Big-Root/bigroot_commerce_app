import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/menu/menu.model.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';
import '../../../../../service_locator.dart';
import '../../bloc/view_module_bloc/view_module_bloc.dart';

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
                (_) => ViewModuleBloc(
                  locator<DisplayUsecase>(),
                ) // DI를 통해 UseCase 주입
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

/// 뷰 모듈 리스트를 표시하는 위젯
/// BlocBuilder를 사용하여 상태 변화에 따라 UI 업데이트
class ViewModuleList extends StatelessWidget {
  const ViewModuleList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewModuleBloc, ViewModuleState>(
      builder: (_, state) {
        // 상태에 따른 UI 분기 처리
        switch (state.status) {
          case Status.initial:
          case Status.loading:
            // 초기 상태나 로딩 중일 때 로딩 인디케이터 표시
            return const Center(child: CircularProgressIndicator());
          case Status.success:
            // 성공 상태일 때 실제 컨텐츠 표시
            return Column(
              children: [
                // 상단 탭 ID 표시 영역
                Container(
                  height: 50.h, // ScreenUtil을 사용한 반응형 높이
                  color: Colors.deepOrange,
                  child: Center(child: Text('${state.tabId}')),
                ),
                // 뷰 모듈 리스트 영역
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (_, index) {
                      return SizedBox(
                        height: 200.h, // 각 아이템의 높이
                        child: Center(
                          child: Text(state.viewModules[index].type),
                        ),
                      );
                    },
                    // 구분선 추가
                    separatorBuilder: (_, index) => Divider(thickness: 4.w),
                    itemCount: state.viewModules.length,
                  ),
                ),
              ],
            );
          case Status.error:
            // 에러 상태일 때 간단한 에러 메시지 표시
            // 개선 필요: 구체적인 에러 메시지와 재시도 옵션 추가 필요
            return const Center(child: Text('error'));
        }
      },
    );
  }
}
