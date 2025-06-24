import '../../domain/model/display/display.model.dart';
import '../../domain/model/display/product_info/product_info.model.dart';
import '../dto/display/display.dto.dart';
import '../dto/display/product_info/product_info.dto.dart';

extension MenuX on MenuDto {
  Menu toModel() {
    return Menu(title: title, tabId: tabId);
  }
}

extension ViewModuleX on ViewModuleDto {
  ViewModule toModel() {
    return ViewModule(
      type: type,
      title: title,
      subtitle: subtitle,
      imageUrl: imageUrl,
      products: products.map((product) => product.toModel()).toList(),
    );
  }
}

extension ProductInfoX on ProductInfoDto {
  ProductInfo toModel() {
    return ProductInfo(
      productId: productId,
      title: title,
      subtitle: subtitle,
      imageUrl: imageUrl,
      price: price,
      originalPrice: originalPrice,
      discountRate: discountRate,
      reviewCount: reviewCount,
    );
  }
}
