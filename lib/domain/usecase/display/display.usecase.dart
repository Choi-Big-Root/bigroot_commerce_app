import '../../repository/display.repository.dart';
import '../base/remote.usecase.dart';

class DisplayUsecase {
  DisplayUsecase(this._displayRepository);

  final DisplayRepository _displayRepository;

  Future<T> excute<T>({
    required RemoteUsecase<DisplayRepository, T> usecase,
  }) async {
    return usecase(_displayRepository);
  }
}
