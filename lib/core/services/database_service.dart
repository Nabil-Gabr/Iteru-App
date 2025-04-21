abstract class DatabaseService {
  // getData
  Future<dynamic> getData({
    required String url,
    String? token,
  });

  // getData
  Future<dynamic> post({
    required String url,
    required dynamic body,
    String? token,
  });

  Future<dynamic> put({
    required String url,
    required dynamic body,
    String? token,
  });

  Future<dynamic> delete({
    required String url,
    String? token,
  });
}
