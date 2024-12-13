import 'package:dio/dio.dart';
import 'package:iteru_app/core/errors/failure.dart';

class ApiAuthService {
  //signIn User With Email And Password Method
  Future<dynamic> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final response =
          await Dio().post("http://10.0.2.2:3000/api/auth/login", data: {
        "email": email,
        "password": password,
      });
      return response.data;
    } catch (e) {
      // print(e.toString());
      if (e is DioException) {
        return ServerFailuer.fromDioExeption(e);
      }

      return ServerFailuer(e.toString());
    }
  }
}
