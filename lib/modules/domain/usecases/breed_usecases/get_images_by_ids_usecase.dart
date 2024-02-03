import 'package:catbreeds/core/errors/failures.dart';
import 'package:catbreeds/core/usecase/usecase.dart';
import 'package:catbreeds/modules/data/models/breed_image_model.dart';
import 'package:catbreeds/modules/domain/repositories/breed_repository.dart';
import 'package:dartz/dartz.dart';

class GetImagesByIdsUseCase implements UseCase<List<BreedImage>, List<String>> {
  GetImagesByIdsUseCase(this._breedRepository);

  final BreedRepository _breedRepository;

  @override
  Future<Either<Failure, List<BreedImage>>> call(List<String> params) async {
    return _breedRepository.getImagesByIds(params);
  }
}
