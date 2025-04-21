import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu.model.freezed.dart';
part 'menu.model.g.dart';

@freezed
abstract class Menu with _$Menu {
  const factory Menu({required String title, required int tabId}) = _Menu;

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
}
