import '../../domain/model/display/display.model.dart';
import '../dto/display/display.dto.dart';

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
    );
  }
}
