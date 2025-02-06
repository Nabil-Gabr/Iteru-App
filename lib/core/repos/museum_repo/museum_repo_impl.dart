import 'package:dartz/dartz.dart';
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/core/repos/museum_repo/museum_repo.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';

class MuseumRepoImpl extends MuseumRepo {
  @override
  Future<Either<Failure, List<MuseumItemEntity>>> getMuseum() {
    throw UnimplementedError();
  }
}
