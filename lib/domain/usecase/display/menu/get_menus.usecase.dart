import '../../../../core/utils/constant.dart';
import '../../../../core/utils/error/error_response.dart';
import '../../../model/common/result.dart';
import '../../../model/display/menu/menu.model.dart';
import '../../../repository/display.repository.dart';
import '../../base/remote.usecase.dart';

class GetMenusUsecase
    extends RemoteUsecase<DisplayRepository, Result<List<Menu>>> {
  GetMenusUsecase(this.mallType);

  final MallType mallType;

  @override
  Future<Result<List<Menu>>> call(DisplayRepository repository) async {
    final result = await repository.getMenusByMallType(mallType: mallType);
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
