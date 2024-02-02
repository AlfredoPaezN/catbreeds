import 'package:catbreeds/core/errors/failures.dart';
import 'package:catbreeds/core/usecase/usecase.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';
import 'package:catbreeds/modules/domain/repositories/breed_repository.dart';
import 'package:dartz/dartz.dart';

class GetImageByIdsUseCase implements UseCase<List<Breed>, NoParams> {
  final BreedRepository breedRepository;

  GetImageByIdsUseCase(this.breedRepository);

  @override
  Future<Either<Failure, List<Breed>>> call(NoParams params) async {
    return breedRepository.getImageById();
  }
}
