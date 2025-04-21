class ErrorResponse {
  ErrorResponse({
    this.status = 'SUCCESS',
    this.code = '0000',
    this.message = '',
  });

  final String? status;
  final String? code;
  final String? message;
}
