import 'package:dartz/dartz.dart';
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';

abstract class MuseumRepo {
  Future<Either<Failure, List<MuseumItemEntity>>> getMuseum();
}
