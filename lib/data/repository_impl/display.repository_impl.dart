import 'package:injectable/injectable.dart';

import '../../core/utils/constant.dart';
import '../../domain/model/display/menu/menu.model.dart';
import '../../domain/model/display/view_module/view_module.model.dart';
import '../../domain/repository/display.repository.dart';
import '../data_source/remote/display.api.dart';
import '../dto/common/response_wrapper/response_wrapper.dart';
import '../mapper/common.mapper.dart';
import '../mapper/display.mapper.dart';

@Singleton(as: DisplayRepository)
class DisplayRepositoryImpl implements DisplayRepository {
  DisplayRepositoryImpl(this._displayApi);

  final DisplayApi _displayApi;
  @override
  Future<ResponseWrapper<List<Menu>>> getMenusByMallType({
    required MallType mallType,
  }) async {
    final response = await _displayApi.getMenusByMallType(mallType.name);

    final dtoList = response.data ?? [];
    final modelList = dtoList.map((dto) => dto.toModel()).toList();

    return response.toModel(modelList);
  }

  @override
  Future<ResponseWrapper<List<ViewModule>>> getViewModulesByTabId({
    required int tabId,
    required int page,
  }) async {
    final response = await _displayApi.getViewModulesByTabId(tabId, page);

    final dtoList = response.data ?? [];
    final modelList = dtoList.map((dto) => dto.toModel()).toList();

    return response.toModel(modelList);
  }
}
