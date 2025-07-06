import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/theme/constant/app_colors.dart';
import '../../../../../../core/theme/constant/app_icons.dart';

class AddCartButton extends StatelessWidget {
  const AddCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 8,
      bottom: 8,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(
            context,
          ).colorScheme.primary.withAlpha((0.47 * 255).round()),
          shape: BoxShape.circle,
        ),
        width: 32,
        height: 32,
        child: Center(
          child: SvgPicture.asset(
            AppIcons.cart,
            width: 20,
            height: 17,
            colorFilter: const ColorFilter.mode(
              AppColors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
