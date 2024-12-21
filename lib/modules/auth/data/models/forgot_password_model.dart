import 'package:iteru_app/modules/auth/domain/entity/forgot_password_entity.dart';

class ForgotPasswordModel extends ForgotPasswordEntity {
  ForgotPasswordModel({required super.message});

  factory ForgotPasswordModel.fromJson(Map<String, dynamic> json) {
    
    return ForgotPasswordModel(message: json["message"]);
  }
}
