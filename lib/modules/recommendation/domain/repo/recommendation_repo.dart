import 'package:dartz/dartz.dart';
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/modules/recommendation/domain/entity/recommentation_entity.dart';

abstract class RecommendationRepo {
  Future<Either<Failure, List<RecommentationEntity>>> sendRecommendation({
    required int location,
    required int christian,
    required int grecoRoman,
    required int bislamic,
    required int modernEgypt,
    required int ancientEgypt,
  });
}
