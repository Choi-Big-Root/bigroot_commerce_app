part of 'view_module_bloc.dart';

abstract class ViewModuleEvent {
  const ViewModuleEvent();
}

class ViewModuleInitialized extends ViewModuleEvent {
  ViewModuleInitialized({required this.tabId, this.isRefresh = false});
  final int tabId;
  final bool isRefresh;
}

class ViewModuleFetched extends ViewModuleEvent {
  ViewModuleFetched();
}
