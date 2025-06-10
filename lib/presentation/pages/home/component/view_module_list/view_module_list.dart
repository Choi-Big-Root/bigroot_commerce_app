import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constant.dart';
import '../../bloc/view_module_bloc/view_module_bloc.dart';

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
            return ListView.separated(
              // viewModules 각 영역별 widget
              itemBuilder: (_, index) => state.viewModules[index],
              // 구분선 추가
              separatorBuilder: (_, index) => Divider(thickness: 4.w),
              itemCount: state.viewModules.length,
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
