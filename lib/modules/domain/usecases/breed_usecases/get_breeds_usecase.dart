import 'package:catbreeds/core/errors/failures.dart';
import 'package:catbreeds/core/usecase/usecase.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';
import 'package:catbreeds/modules/domain/repositories/breed_repository.dart';
import 'package:dartz/dartz.dart';

class GetBreedsUseCase implements UseCase<List<Breed>, NoParams> {
  GetBreedsUseCase(this._breedRepository);

  final BreedRepository _breedRepository;

  @override
  Future<Either<Failure, List<Breed>>> call(NoParams params) async {
    return _breedRepository.getBreeds();
  }
}
