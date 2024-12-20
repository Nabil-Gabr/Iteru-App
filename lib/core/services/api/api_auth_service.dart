import 'package:dio/dio.dart';

class ApiAuthService {
  final Dio dio;

  ApiAuthService({Dio? dioClient}) : dio = dioClient ?? Dio();

  Future<Map<String, dynamic>> post({
    required String url,
    required dynamic body,
    String? token,
  }) async {
    final Map<String, String> headers = {};

    // إضافة Authorization إذا كان الـ token موجودًا
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }

    // إرسال الطلب باستخدام Dio
    final response = await dio.post(
      url,
      data: body,
      options: Options(headers: headers),
    );

    // إرجاع بيانات الرد مباشرة
    return response.data as Map<String, dynamic>;
  }
}
