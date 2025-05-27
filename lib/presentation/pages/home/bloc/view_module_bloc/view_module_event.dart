part of 'view_module_bloc.dart';

abstract class ViewModuleEvent {
  const ViewModuleEvent();
}

class ViewModuleInitialized extends ViewModuleEvent {
  ViewModuleInitialized(this.tabId);
  final int tabId;
}
