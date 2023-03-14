class StepOneModel {
  int? otp;
  String? token;

  StepOneModel({this.otp, this.token});

  StepOneModel.fromJson(Map<String, dynamic> json) {
    otp = json['otp'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['otp'] = this.otp;
    data['token'] = this.token;
    return data;
  }
}
