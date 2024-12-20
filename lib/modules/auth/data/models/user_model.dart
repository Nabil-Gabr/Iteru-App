import 'package:iteru_app/modules/auth/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.userData, required super.token});

  // Factory to create UserModel from JSON
  factory UserModel.fromJson(Map<String, dynamic> json) {
    // Ensure the 'user' key exists and is a Map
    final userJson = json['user'];
    if (userJson is! Map<String, dynamic>) {
      throw ArgumentError('Invalid or missing "user" data in JSON.');
    }

    return UserModel(
      userData: UserData.fromJson(userJson),
      token: json['token'] ?? '',
    );
  }
}
