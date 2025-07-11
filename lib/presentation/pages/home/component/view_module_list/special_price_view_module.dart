import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../domain/model/display/display.model.dart';
import '../../../../../domain/model/display/product_info/product_info.model.dart';
import 'view_module_factory/view_module_widget.dart';
import 'widget/add_cart_button.dart';
import 'widget/timer_widget.dart';
import 'widget/view_module_padding.dart';
import 'widget/view_module_subtitle.dart';
import 'widget/view_module_title.dart';

class SpecialPriceViewModule extends StatelessWidget with ViewModuleWidget {
  const SpecialPriceViewModule({required this.info, super.key});

  final ViewModule info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ViewModulePadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ViewModuleTitle(title: info.title),
            ViewModuleSubtitle(subTitle: info.subtitle),
            if (info.time > 0)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Lottie.asset(
                      AppIcons.lottie_clock,
                      width: 20,
                      delegates: LottieDelegates(
                        values: [
                          ValueDelegate.color(
                            ['Oval', 'Oval', 'Fill 1'],
                            value: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5,),
                    TimerWidget(
                      endTime: DateTime.fromMillisecondsSinceEpoch(info.time),
                    ),
                  ],
                ),
              ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (_, index) {
                return _SpecialPriceProduct(productInfo: info.products[index]);
              },
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemCount: info.products.length,
            ),
          ],
        ),
      ),
    );
  }
}

class _SpecialPriceProduct extends StatelessWidget {
  const _SpecialPriceProduct({required this.productInfo, super.key});

  final ProductInfo productInfo;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            AspectRatio(
              aspectRatio: 343 / 174,
              child: Image.network(productInfo.imageUrl, fit: BoxFit.cover),
            ),
            const AddCartButton(),
          ],
        ),
        const SizedBox(height: 9),
        Text(
          productInfo.subtitle,
          style:
              textTheme.labelLarge
                  ?.copyWith(color: colorScheme.contentTertiary)
                  .regular,
        ),
        Text(
          productInfo.title,
          style: textTheme.titleMedium?.titleCopyWith(),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Text(
              '${productInfo.discountRate}%',
              style: textTheme.titleLarge?.discountRateCopyWith(),
            ),
            const SizedBox(height: 4),
            Text(
              productInfo.price.toWon(),
              style: textTheme.titleLarge?.priceCopyWith(),
            ),
            const SizedBox(height: 4),
            Text(
              productInfo.originalPrice.toWon(),
              style: textTheme.titleSmall?.originalCopyWith(),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            SvgPicture.asset(
              AppIcons.chat,
              width: 13,
              height: 13,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.contentTertiary,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 3),
            Text(
              '후기 ${productInfo.reviewCount.toReview()}',
              style: textTheme.labelMedium?.reviewCountCopyWith(),
            ),
          ],
        ),
      ],
    );
  }
}
