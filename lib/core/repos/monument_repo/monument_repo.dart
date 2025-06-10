import 'package:dartz/dartz.dart';
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';

abstract class MonumentRepo {
  Future<Either<Failure, List<MonumentEntity>>> getMonument();
}