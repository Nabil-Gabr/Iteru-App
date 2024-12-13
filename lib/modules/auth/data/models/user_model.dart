import 'package:iteru_app/modules/auth/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(
      {required super.userName,
      required super.userEmail,
      required super.userPassowrd,
      required super.userPhone,
      required super.userToken});

  factory UserModel.fromJson(jsonData) {
    return UserModel(
      userName: jsonData['name'] ?? '',
      userEmail: jsonData['email'] ?? '',
      userPassowrd: jsonData['password'] ?? '',
      userPhone: jsonData['phone'] ?? '',
      userToken: jsonData["token"] ?? "",

      // id:jsonData['id'],
      // title: jsonData['title'],
      // category: jsonData['category'],
      // price: jsonData['price'],
      // description: jsonData['description'],
      // image: jsonData['image'],
      // rating: jsonData['rating'] == null
      //     ? null
      //     : RatingModel.fromJson(jsonData['rating'])
    );
  }
}
