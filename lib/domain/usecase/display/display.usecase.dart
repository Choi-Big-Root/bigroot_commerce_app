import 'package:injectable/injectable.dart';

import '../../repository/display.repository.dart';
import '../base/remote.usecase.dart';

@singleton
class DisplayUsecase {
  DisplayUsecase(this._displayRepository);

  final DisplayRepository _displayRepository;

  Future<T> execute<T>({
    required RemoteUsecase<DisplayRepository, T> usecase,
  }) async {
    return usecase(_displayRepository);
  }
}
