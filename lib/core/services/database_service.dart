abstract class DatabaseService {
  //getData
  Future<Map<String, dynamic>> getData({
    required String url,
    String? token,
  });
}
