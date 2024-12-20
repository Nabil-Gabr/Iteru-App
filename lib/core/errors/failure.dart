import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessag;

  Failure({required this.errMessag});
}

class ServerFailuer extends Failure {
  ServerFailuer({required super.errMessag});

  factory ServerFailuer.fromDioExeption(DioException dioExeption) {
    switch (dioExeption.type) {
      //الايرور بيرجع على هيئة Enum //=> تتعامل معاها بسهولة باستخدم سويتش

      case DioExceptionType.connectionTimeout:
        return ServerFailuer(errMessag: "connection Timeout with Api Sever");

      case DioExceptionType.sendTimeout:
        return ServerFailuer(errMessag: "send Timeout with Api Server");
      case DioExceptionType.receiveTimeout:
        return ServerFailuer(errMessag: "receive Timeout with Api Server");
      case DioExceptionType.badCertificate:
        return ServerFailuer(
            errMessag:
                "Connection Error: Untrusted server certificate. Please try again later.");
      case DioExceptionType.badResponse:
        return ServerFailuer.fromResponse(
            dioExeption.response!.statusCode!, dioExeption.response!.data);
      case DioExceptionType.cancel:
        return ServerFailuer(
            errMessag: "Oops The Request was canceld,try again");
      case DioExceptionType.connectionError:
        //هنا لو مكنش مفيش اتصال بالنت ==> error of type SocketExeption
        return ServerFailuer(errMessag: "conect to the internet and try again");

      case DioExceptionType.unknown:
        return ServerFailuer(errMessag: "Ooops UnExepected Error");
      default:
        return ServerFailuer(errMessag: "Ooops UnExepected Error");

//كدا انت بتنهدل كل حاجة
      //هنا لو الايرور مش معروف
    }
  }
  factory ServerFailuer.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400) {
      return ServerFailuer(errMessag: "Email already exists");
    } else if (statusCode == 401) {
      return ServerFailuer(errMessag: 'Wrong password');
    } else if (statusCode == 500) {
      return ServerFailuer(
          errMessag: "There Was an Error In the Server,please try again");
    } else {
      return ServerFailuer(errMessag: "Ooops UnExepected Error");
    }
  }
}
