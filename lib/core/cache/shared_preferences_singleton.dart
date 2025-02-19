import 'package:shared_preferences/shared_preferences.dart';

class CacheHelpe {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  String? getDataString({required String key}) {
    return _instance.getString(key);
  }

//! this method to put data in local database using key

  static Future<bool> saveData(
      {required String key, required dynamic value}) async {
    if (value is bool) {
      return await _instance.setBool(key, value);
    }

    if (value is String) {
      return await _instance.setString(key, value);
    }

    if (value is int) {
      return await _instance.setInt(key, value);
    } else {
      return await _instance.setDouble(key, value);
    }
  }

//! this method to get data already saved in local database

  static dynamic getData({required String key}) {
    return _instance.get(key);
  }
//! remove data using specific key

  static Future<bool> removeData({required String key}) async {
    return await _instance.remove(key);
  }

//! this method to check if local database contains {key}
  static Future<bool> containsKey({required String key}) async {
    return _instance.containsKey(key);
  }

  static Future<bool> clearData({required String key}) async {
    return _instance.clear();
  }

//! this fun to put data in local data base using key
  static Future<dynamic> put({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) {
      return await _instance.setString(key, value);
    } else if (value is bool) {
      return await _instance.setBool(key, value);
    } else {
      return await _instance.setInt(key, value);
    }
  }
}
