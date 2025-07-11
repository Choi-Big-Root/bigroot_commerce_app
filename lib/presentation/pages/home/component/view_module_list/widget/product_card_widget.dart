import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/theme/constant/app_icons.dart';
import '../../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../../core/utils/extensions.dart';
import '../../../../../../domain/model/display/product_info/product_info.model.dart';
import 'add_cart_button.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    required this.productInfo,
    required this.imageAspect,
    required this.needShowReviewCount,
    this.titleStyle,
    this.priceStyle,
    this.originalPriceStyle,
    this.reviewStyle,
    super.key,
  });

  final ProductInfo productInfo;
  final double imageAspect;
  final TextStyle? titleStyle;
  final TextStyle? priceStyle;
  final TextStyle? originalPriceStyle;
  final TextStyle? reviewStyle;
  final bool needShowReviewCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            AspectRatio(
              aspectRatio: imageAspect,
              child: Image.network(productInfo.imageUrl, fit: BoxFit.cover),
            ),
            const AddCartButton(),
          ],
        ),
        const SizedBox(height: 9),
        // Text(
        //   productInfo.subtitle,
        //   overflow: TextOverflow.ellipsis,
        //   style: Theme.of(context).textTheme.labelLarge?.copyWith(
        //     color: Theme.of(context).colorScheme.contentTertiary,
        //   ),
        // ),
        Text(
          productInfo.title,
          style: titleStyle?.titleCopyWith(),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        const SizedBox(height: 1),
        Row(
          children: [
            Text(
              '${productInfo.discountRate}%',
              style: priceStyle?.discountRateCopyWith(),
            ),
            const SizedBox(width: 6),
            Text(productInfo.price.toWon(), style: priceStyle?.priceCopyWith()),
          ],
        ),
        const SizedBox(height: 3),
        Text(
          productInfo.originalPrice.toWon(),
          style: originalPriceStyle?.originalCopyWith(),
        ),
        if (needShowReviewCount)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
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
                  style: reviewStyle?.reviewCountCopyWith(),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
