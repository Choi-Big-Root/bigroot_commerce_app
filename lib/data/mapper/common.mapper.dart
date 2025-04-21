import '../dto/common/response_wrapper/response_wrapper.dart';

extension ResponseWrapperX<T> on ResponseWrapper<T> {
  ResponseWrapper<R> toModel<R>(R data) {
    return ResponseWrapper<R>(
      status: status,
      code: code,
      message: message,
      data: data,
    );
  }
}
