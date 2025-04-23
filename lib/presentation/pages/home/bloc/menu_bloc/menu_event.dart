part of 'menu_bloc.dart';

abstract class MenuEvent {
  const MenuEvent();
}

class MenuInitialized extends MenuEvent {
  MenuInitialized(this.mallType);

  final MallType mallType;
}
