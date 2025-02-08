import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/core/repos/museum_repo/museum_repo.dart';
import 'package:iteru_app/core/services/api/api_database_service.dart';
import 'package:iteru_app/modules/home/data/models/museum_item_model.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';

class MuseumRepoImpl extends MuseumRepo {
  final ApiDatabaseService apiDatabaseService;

  MuseumRepoImpl({required this.apiDatabaseService});
  @override
  Future<Either<Failure, List<MuseumItemEntity>>> getMuseum() async {
    try {
      var result = await apiDatabaseService.getData(url: 'url');
      // تحويل كل عنصر في القائمة إلى كائن MuseumItemModel
      List<MuseumItemEntity> museums = (result as List<dynamic>)
          .map((item) => MuseumItemModel.fromJson(item as Map<String, dynamic>))
          .toList();

      return right(museums);
    } catch (e) {
      log('Error occurred: ${e.toString()}');
      if (e is DioException) {
        log('DioException data: ${e.response?.data}');
        return left(ServerFailuer.fromDioExeption(e));
      }
      return left(ServerFailuer(errMessag: e.toString()));
    }}}
