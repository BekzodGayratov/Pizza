class StepOneModel {
  int? otp;
  String? token;

  StepOneModel({this.otp, this.token});

  StepOneModel.fromJson(Map<String, dynamic> json) {
    otp = json['otp'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['otp'] = otp;
    data['token'] = token;
    return data;
  }
}
