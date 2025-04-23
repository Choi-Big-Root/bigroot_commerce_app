import 'package:flutter/material.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/menu/menu.model.dart';

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
        children: List.generate(
          menus.length,
          (index) => Column(
            children: [
              Text('mallType : $mallType'),
              Text('title : ${menus[index].title}'),
            ],
          ),
        ),
      ),
    );
  }
}
