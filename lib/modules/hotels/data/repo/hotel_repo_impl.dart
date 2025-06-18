import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/core/services/database_service.dart';
import 'package:iteru_app/modules/hotels/data/models/hotel_model.dart';
import 'package:iteru_app/modules/hotels/domain/entity/hotel_entity.dart';
import 'package:iteru_app/modules/hotels/domain/repo/hotel_repo.dart';

class HotelRepoImpl extends HotelRepo {
  final DatabaseService apiDatabaseService;

  HotelRepoImpl({required this.apiDatabaseService});

  @override
  Future<Either<Failure, List<HotelEntity>>> getHotelsByCity(
      String city) async {
    try {
      final result = await apiDatabaseService.getData(
        url: 'https://iteru-clone-e8l9.vercel.app/api/hotels?city=$city',
      );

      final List<HotelEntity> hotels = (result as List<dynamic>)
          .map((e) => HotelModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return right(hotels);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioExeption(e));
      }
      return left(ServerFailuer(errMessag: e.toString()));
    }
  }
}
