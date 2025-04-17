import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SvgIconButton extends StatelessWidget {
  final String icon;
  final Color color;
  final double? paddingV;
  final double? paddingH;

  const SvgIconButton({
    super.key,
    required this.icon,
    required this.color,
    this.paddingV,
    this.paddingH,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: paddingV ?? 4.h,
        horizontal: paddingH ?? 4.w,
      ),
      child: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      ),
    );
  }
}
