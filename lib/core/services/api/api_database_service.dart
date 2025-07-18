import 'package:dio/dio.dart';
import 'package:iteru_app/core/services/database_service.dart';

class ApiDatabaseService implements DatabaseService {
  final Dio dio;

  ApiDatabaseService({Dio? dioClient}) : dio = dioClient ?? Dio();

  @override
  Future<dynamic> getData({required String url, String? token}) async {
    try {
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

      // التحقق من حالة الـ Response
      if (response.statusCode == 200) {
        // التحقق من نوع الـ Response
        if (response.data is Map<String, dynamic>) {
          return response.data as Map<String, dynamic>;
        } else if (response.data is List) {
          return response.data as List;
        } else {
          throw Exception("Invalid response format");
        }
      } else {
        throw Exception(
            "Failed to load data. Status code: ${response.statusCode}");
      }
    } on DioException catch (e) {
      // التعامل مع أخطاء Dio
      throw Exception("DioException: ${e.message}");
    } catch (e) {
      // التعامل مع الأخطاء العامة
      throw Exception("Unexpected error: $e");
    }
  }

  @override
Future<dynamic> post({
  required String url,
  required dynamic body,
  String? token,
}) async {
  try {
    final Map<String, String> headers = {};

    // إضافة Authorization إذا كان الـ token موجودًا
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }

    // تهيئة Content-Type بناءً على نوع البيانات
    if (body is FormData) {
      headers['Content-Type'] = 'multipart/form-data';
    } else {
      headers['Content-Type'] = 'application/json';
    }

    // إرسال الطلب باستخدام Dio
    final response = await dio.post(
      url,
      data: body,
      options: Options(headers: headers),
    );

    // التحقق من حالة الـ Response
    if (response.statusCode == 200 || response.statusCode == 201) {
      if (response.data is Map<String, dynamic>) {
        return response.data as Map<String, dynamic>;
      } else if (response.data is List) {
        return response.data as List;
      } else {
        throw Exception("Invalid response format");
      }
    } else {
      throw Exception(
          "Failed to post data. Status code: ${response.statusCode}");
    }
  } on DioException catch (e) {
    throw Exception("DioException: ${e.message}");
  } catch (e) {
    throw Exception("Unexpected error: $e");
  }
}


  @override
Future<dynamic> delete({
  required String url,
  String? token,
}) async {
  try {
    final Map<String, String> headers = {};

    // إضافة Authorization إذا كان الـ token موجودًا
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }

    final response = await dio.delete(
      url,
      options: Options(headers: headers),
    );

    if (response.statusCode == 200 || response.statusCode == 204) {
      // قد لا تحتوي الاستجابة على بيانات عند الحذف
      return response.data;
    } else {
      throw Exception(
          "Failed to delete data. Status code: ${response.statusCode}");
    }
  } on DioException catch (e) {
    throw Exception("DioException: ${e.message}");
  } catch (e) {
    throw Exception("Unexpected error: $e");
  }
}


  @override
  Future put({required String url, required body, String? token}) {
    throw UnimplementedError();
  }

  postWithFormData({required String url, required FormData formData, required String token}) {}
}
