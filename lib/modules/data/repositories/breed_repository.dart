import 'package:catbreeds/core/errors/exception.dart';
import 'package:catbreeds/core/errors/failures.dart';
import 'package:catbreeds/modules/data/datasources/remote/breeds_api.dart';
import 'package:catbreeds/modules/data/models/breed_image_model.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';
import 'package:catbreeds/modules/domain/repositories/breed_repository.dart';
import 'package:dartz/dartz.dart';

class BreedRepositoryImpl implements BreedRepository {
  BreedRepositoryImpl({
    required this.breedsApi,
  });

  final BreedsApi breedsApi;

  @override
  Future<Either<Failure, List<Breed>>> getBreeds() async {
    try {
      final response = await breedsApi.getBreeds();
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BreedImage>>> getImagesByIds(
    List<String> breedIds,
  ) async {
    try {
      final response = await breedsApi.getImagesByIds(breedIds.join(','));
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
