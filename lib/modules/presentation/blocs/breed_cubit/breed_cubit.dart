import 'package:bloc/bloc.dart';
import 'package:catbreeds/core/usecase/usecase.dart';
import 'package:catbreeds/modules/data/models/breed_image_model.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';
import 'package:catbreeds/modules/domain/repositories/breed_repository.dart';
import 'package:catbreeds/modules/domain/usecases/breed_usecases/get_breeds_usecase.dart';
import 'package:catbreeds/modules/domain/usecases/breed_usecases/get_images_by_ids_usecase.dart';
import 'package:equatable/equatable.dart';

part 'breed_state.dart';

class BreedCubit extends Cubit<BreedState> {
  BreedCubit(
    this._getBreedsUseCase,
    this._getImagesByIdsUseCase,
  ) : super(const BreedState(breeds: []));

  final GetBreedsUseCase _getBreedsUseCase;
  final GetImagesByIdsUseCase _getImagesByIdsUseCase;

  Future<void> getBreeds() async {
    try {
      final response = await _getBreedsUseCase.call(NoParams());
      response.fold(
        (failure) => {
          print("ERROR"),
        },
        (data) => {
          emit(BreedState(breeds: data)),
        },
      );
    } catch (e, stackTrace) {
      print("ERROR CATCH ${e} ${stackTrace}");
    }
  }

  Future<void> getImagesByIds() async {
    final breedIds = state.breeds.map((e) => e.id).toList();
    print('breedIds ${breedIds.length}');
    try {
      final response = await _getImagesByIdsUseCase.call(breedIds);

      response.fold(
        (failure) => {
          print("ERROR"),
        },
        (data) => {
          print('lenght ${data.length}'),
          emit(BreedState(breeds: addBreedImages(data))),
        },
      );
    } catch (e, stackTrace) {
      print("ERROR CATCH ${e} ${stackTrace}");
    }
  }

  List<Breed> addBreedImages(List<BreedImage> images) {
    final breedImagesMap = <String?, BreedImage>{};

    images.map((image) {
      image.breedsInfo?.map((breedInfo) {
        breedImagesMap[breedInfo.id] = image;
      });
    });

    final combinedBreeds = state.breeds.map(
      (e) {
        return e.copyWith(image: breedImagesMap[e.id]);
      },
    );

    return combinedBreeds.toList();
  }
}
