import 'package:flutter/cupertino.dart';

import '../../../../../domain/model/display/view_module/view_module.model.dart';
import 'factory/view_module_widget.dart';

class BannerViewModule extends StatelessWidget with ViewModuleWidget {
  const BannerViewModule({required this.info, super.key});

  final ViewModule info;

  @override
  Widget build(BuildContext context) {
    // [배너] 서버에서 이미지가 내려오지 않았을 경우도 처리가 필요.
    return info.imageUrl.isNotEmpty
        ? AspectRatio(
          aspectRatio: 375 / 79,
          child: Image.network(info.imageUrl, fit: BoxFit.fitWidth),
        )
        : const SizedBox.shrink();
  }
}
