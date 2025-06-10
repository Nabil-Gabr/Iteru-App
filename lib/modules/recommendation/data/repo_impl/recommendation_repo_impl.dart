import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' show DioException;
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/core/services/database_service.dart';
import 'package:iteru_app/modules/recommendation/data/models/recommentation_model.dart';
import 'package:iteru_app/modules/recommendation/domain/entity/recommentation_entity.dart';
import 'package:iteru_app/modules/recommendation/domain/repo/recommendation_repo.dart';

class RecommendationRepoImpl extends RecommendationRepo {
  final DatabaseService databaseService;

  RecommendationRepoImpl({required this.databaseService});
  @override
  Future<Either<Failure, List<RecommentationEntity>>> sendRecommendation(
      {required int location,
      required int christian,
      required int grecoRoman,
      required int bislamic,
      required int modernEgypt,
      required int ancientEgypt}) async {
    try {
      var response = await databaseService
          .post(url: "https://iteru-clone-e8l9.vercel.app/recommend", body: {
          'location':location,
          'christian':christian,
          'greco_roman':grecoRoman,
          'islamic':bislamic,
          'modern_egypt':modernEgypt,
          'ancient_egypt':ancientEgypt,
        });

      log("Recommendation_repo_impl.dart ${response.toString()}");

      final List<dynamic> data = response['recommendations'] ?? [];

      final recommendations = data.map((e) => RecommendationModel.fromJson(e.toString())).toList();

      return right(recommendations);
    } catch (e) {
      log("Exception in AuthRepoImpl  createUserWithEmailAndPassword==$e");
      if (e is DioException) {
        return left(ServerFailuer.fromDioExeption(e));
      } else {
        return left(ServerFailuer(errMessag: e.toString()));
      }
    }
  }
}
