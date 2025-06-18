import 'package:dartz/dartz.dart';
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/modules/hotels/domain/entity/hotel_entity.dart';

abstract class HotelRepo {
  Future<Either<Failure, List<HotelEntity>>> getHotelsByCity(String city);
}
