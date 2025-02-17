abstract class DatabaseService {
  // getData
  Future<dynamic> getData({
    required String url,
    String? token,
  });
}
