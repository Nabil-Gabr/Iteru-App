class UserEntity {
  final UserData userData;
  final String token;

  UserEntity({required this.userData, required this.token});
}

class UserData {
  final String userName;
  final String userEmail;
  final String userPassword;
  final String userPhone;

  UserData({
    required this.userName,
    required this.userEmail,
    required this.userPassword,
    required this.userPhone,
  });

  // Factory to create UserData from JSON
  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      userName: json['name'] ?? '',
      userEmail: json['email'] ?? '',
      userPassword: json['password'] ?? '',
      userPhone: json['phone'] ?? '',
    );
  }
}
