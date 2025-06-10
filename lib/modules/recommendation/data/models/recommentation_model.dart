import 'package:iteru_app/modules/recommendation/domain/entity/recommentation_entity.dart';

class RecommendationModel extends RecommentationEntity {
  RecommendationModel({required super.recommendation});
  
  factory RecommendationModel.fromJson(String recommendation) {
    return RecommendationModel(
      recommendation: recommendation,
    );
  }
  
}