import 'package:flutter/material.dart';

import '../../../../../domain/model/display/view_module/view_module.model.dart';
import 'view_module_factory/view_module_widget.dart';
import 'widget/product_card.component.dart';

class ScrollViewModule extends StatelessWidget with ViewModuleWidget {
  const ScrollViewModule({required this.info, super.key});

  final ViewModule info;

  @override
  Widget build(BuildContext context) {
    return LargeProdictCard(context: context,productInfo: info.products[0],);
  }
}
