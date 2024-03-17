class LogoutResponse {
  final dynamic data;
  final String message;
  final bool status;

  LogoutResponse({
    required this.data,
    required this.message,
    required this.status,
  });

  factory LogoutResponse.fromJson(Map<String, dynamic> json) {
    return LogoutResponse(
      data: json['data'],
      message: json['message'],
      status: json['status'],
    );
  }
}
