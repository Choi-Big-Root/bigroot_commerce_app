import '../../domain/model/display/menu/menu.model.dart';
import '../dto/display/menu/menu.dto.dart';

extension MenuX on MenuDto {
  Menu toModel() {
    return Menu(title: title, tabId: tabId);
  }
}
