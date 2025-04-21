import '../../repository/repository.dart';

//T 는 반드시 Repository를 상속받거나 구현하고 있는 타입이어야 한다.
abstract class RemoteUsecase<T extends Repository, R> {
  Future<R> call(T repository);
}
