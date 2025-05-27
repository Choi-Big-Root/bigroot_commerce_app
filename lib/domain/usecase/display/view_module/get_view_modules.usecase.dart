import '../../../../core/utils/error/error_response.dart';
import '../../../model/common/result.dart';
import '../../../model/display/display.model.dart';
import '../../../repository/display.repository.dart';
import '../../base/remote.usecase.dart';

class GetViewModulesUsecase
    extends RemoteUsecase<DisplayRepository, Result<List<ViewModule>>> {
  GetViewModulesUsecase(this.tabId);

  final int tabId;

  @override
  Future<Result<List<ViewModule>>> call(DisplayRepository repository) async {
    final result = await repository.getViewModulesByTabId(tabId: tabId);
    return (result.status == 'SUCCESS')
        ? Result.success(result.data ?? [])
        : Result.failure(
          ErrorResponse(
            status: result.status,
            code: result.code,
            message: result.message,
          ),
        );
  }
}
