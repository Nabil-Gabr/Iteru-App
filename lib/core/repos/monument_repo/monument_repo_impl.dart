import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/core/repos/monument_repo/monument_repo.dart';
import 'package:iteru_app/core/services/api/api_database_service.dart';
import 'package:iteru_app/modules/home/data/models/monument_item_model.dart';
import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';

class MonumentRepoImpl extends MonumentRepo {
  final ApiDatabaseService apiDatabaseService;

  MonumentRepoImpl({required this.apiDatabaseService});

  @override
  Future<Either<Failure, List<MonumentEntity>>> getMonument() async {
    try {
      var result = await apiDatabaseService.getData(
        url: 'https://iteru-clone-e8l9.vercel.app/api/monuments-with-weather',
      );

      if (result is Map<String, dynamic> && result.containsKey('data')) {
        var data = result['data'];
        if (data is List) {
          List<MonumentEntity> monuments = data
              .map((item) =>
                  MonumentModel.fromJson(item as Map<String, dynamic>))
              .toList();
          return right(monuments);
        } else {
          return left(ServerFailuer(errMessag: 'Data is not a list.'));
        }
      } else if (result is List) {
        List<MonumentEntity> monuments = result
            .map((item) =>
                MonumentModel.fromJson(item as Map<String, dynamic>))
            .toList();
        return right(monuments);
      } else {
        return left(ServerFailuer(
            errMessag: 'Unexpected response format from the server.'));
      }
    } catch (e) {
      log('Error occurred: ${e.toString()}');
      if (e is DioException) {
        log('DioException data: ${e.response?.data}');
        return left(ServerFailuer.fromDioExeption(e));
      }
      return left(ServerFailuer(errMessag: 'Something went wrong. Please check your internet connection or try again later'));
    }
  }
}

