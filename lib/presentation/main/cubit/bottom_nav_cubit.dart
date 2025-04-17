import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/constant/app_icons.dart';

enum BottomNav { home, category, search, user }

extension BottomNavX on BottomNav {
  String get label {
    switch (this) {
      case BottomNav.home:
        return '홈';
      case BottomNav.category:
        return '카테고리';
      case BottomNav.search:
        return '검색';
      case BottomNav.user:
        return '마이페이지';
    }
  }

  SvgPicture get icon {
    switch (this) {
      case BottomNav.home:
        return SvgPicture.asset(AppIcons.navHome);
      case BottomNav.category:
        return SvgPicture.asset(AppIcons.navCategory);
      case BottomNav.search:
        return SvgPicture.asset(AppIcons.navSearch);
      case BottomNav.user:
        return SvgPicture.asset(AppIcons.navUser);
    }
  }

  SvgPicture get activeIcon {
    switch (this) {
      case BottomNav.home:
        return SvgPicture.asset(AppIcons.navHomeOn);
      case BottomNav.category:
        return SvgPicture.asset(AppIcons.navCategoryOn);
      case BottomNav.search:
        return SvgPicture.asset(AppIcons.navSearchOn);
      case BottomNav.user:
        return SvgPicture.asset(AppIcons.navUserOn);
    }
  }
}

class BottomNavCubit extends Cubit<BottomNav> {
  BottomNavCubit() : super(BottomNav.home);

  /// emit :  Bloc or Cubic 의 상태를 내보내는 역할.
  void changeIndex(int index) => emit(BottomNav.values[index]);
}
