import 'package:dio/dio.dart';
import 'package:iteru_app/core/services/database_service.dart';

class ApiDatabaseService implements DatabaseService {
  final Dio dio;
  ApiDatabaseService({Dio? dioClient}) : dio = dioClient ?? Dio();
  @override
  Future<Map<String, dynamic>> getData(
      {required String url, String? token}) async {
    final Map<String, String> headers = {};

    // إضافة Authorization إذا كان الـ token موجودًا
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }

    // إرسال الطلب باستخدام Dio
    final response = await dio.get(
      url,
      options: Options(headers: headers),
    );

    if (response.data is Map<String, dynamic>) {
      return response.data as Map<String, dynamic>;
    } else {
      throw Exception("Invalid response format");
    }
  }
}
