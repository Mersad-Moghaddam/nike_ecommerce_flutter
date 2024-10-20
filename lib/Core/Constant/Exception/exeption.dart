class AppException {
  final String message;
  final int? statusCode;
  AppException(
      {required this.statusCode, this.message = 'Something went wrong :'});
}
