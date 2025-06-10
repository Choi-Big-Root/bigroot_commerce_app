import 'package:flutter/material.dart';

import '../../../../../../core/utils/extensions.dart';
import '../../../../../../domain/model/display/view_module/view_module.model.dart';
import '../view_module_A.dart';
import '../view_module_B.dart';
import '../view_module_C.dart';
import '../view_module_D.dart';
import '../view_module_E.dart';
import '../view_module_NONE.dart';
import 'view_module_widget.dart';

/// 앱에서 사용되는 여러 화면[모듈]을 Enum으로 정의
/// 각각의 값은 특정 화면[View] 를 나타낸다.
enum Modules { viewModuleA, viewModuleB, viewModuleC, viewModuleD, viewModuleE }

class ViewModuleFactory {
  /// ViewModule의 type값을 기반으로 해당하 Modules enum을 찾아
  /// 매칭되는 위젯(Widget)을 반환하는 Factory 클래스이다.
  Widget textToWidget(ViewModule viewModule) {
    // enum name이나 type이 camelCase 또는 snake_case일 수 있으므로
    // 비교를 위해 snake_case로 통일
    final type = viewModule.type.toSnakeCase();
    for (final module in Modules.values) {
      final name = module.name.toSnakeCase();
      // ViewModule의 type이 Module 이름에 포함되어 있으면 해당 위젯 반환
      if (name.contains(type)) {
        return module.toWidget() as Widget;
      }
    }
    // 일치하는 Module이 없으면 기본 위젯 반환
    return const ViewModuleNone();
  }
}

/// [Modules] enum 에 대응하는 실제 화면 위젯을 반환하는 확장 함수
/// 예: Modules.viewModuleA.toWidget() -> ViewModuleA 위젯 반환
extension ModulesX on Modules {
  /// 각 Enum 값에 해당하는 위젯을 반환.
  /// 추후 모듈이 추가되면 해당 switch 문에 새로운 케이스를 추가해 확장 가능하다.
  ViewModuleWidget toWidget() {
    switch (this) {
      case Modules.viewModuleA:
        return const ViewModuleA();
      case Modules.viewModuleB:
        return const ViewModuleB();
      case Modules.viewModuleC:
        return const ViewModuleC();
      case Modules.viewModuleD:
        return const ViewModuleD();
      case Modules.viewModuleE:
        return const ViewModuleE();
    }
  }
}
