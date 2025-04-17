import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/custom/custom_app_bar.dart';

enum MallType { market, beauty }

extension MallTypeX on MallType {
  String get toName {
    switch (this) {
      case MallType.market:
        return 'BIG 마켓';
      case MallType.beauty:
        return 'BIG 뷰티';
    }
  }

  bool get isMarket => this == MallType.market;
  bool get isBeauty => this == MallType.beauty;

  CustomAppBarTheme get theme {
    switch (this) {
      case MallType.market:
        return CustomAppBarTheme.market;
      case MallType.beauty:
        return CustomAppBarTheme.beauty;
    }
  }
}

class MallTypeCubit extends Cubit<MallType> {
  MallTypeCubit() : super(MallType.market);

  void changeIndex(int index) => emit(MallType.values[index]);
}
