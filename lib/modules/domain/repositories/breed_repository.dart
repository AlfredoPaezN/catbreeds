import 'package:catbreeds/core/errors/failures.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';
import 'package:dartz/dartz.dart';

abstract class BreedRepository {
  Future<Either<Failure, List<Breed>>> getBreeds();
}
