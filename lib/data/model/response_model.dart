class ResponseModel {
  final String message;
  final int status;
  final List<dynamic> result;
  final String description;

  ResponseModel(this.message, this.status, this.result, this.description);

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
        json['message'], json['status'], json['result'], json['description']);
  }
}
