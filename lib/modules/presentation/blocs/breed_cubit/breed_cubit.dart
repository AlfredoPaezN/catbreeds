import 'package:bloc/bloc.dart';
import 'package:catbreeds/core/usecase/usecase.dart';
import 'package:catbreeds/modules/data/models/breed_image_model.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';
import 'package:catbreeds/modules/domain/usecases/breed_usecases/get_breeds_usecase.dart';
import 'package:catbreeds/modules/domain/usecases/breed_usecases/get_images_by_ids_usecase.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'breed_state.dart';
part 'breed_cubit.freezed.dart';

class BreedCubit extends Cubit<BreedState> {
  BreedCubit(
    this._getBreedsUseCase,
    this._getImagesByIdsUseCase,
  ) : super(const BreedState.initial());

  final GetBreedsUseCase _getBreedsUseCase;
  final GetImagesByIdsUseCase _getImagesByIdsUseCase;

  Future<void> getBreeds() async {
    emit(const BreedState.loading());
    try {
      final response = await _getBreedsUseCase.call(NoParams());
      response.fold(
        (failure) => {
          emit(const BreedState.error(
              errorMessage: 'Error fetching breeds cats')),
          print('${failure}')
        },
        (data) => {
          emit(BreedState.success(breeds: data)),
        },
      );
    } catch (e, stackTrace) {
      emit(const BreedState.error(errorMessage: 'Error fetching breeds cats'));
      print("ERROR CATCH ${e} ${stackTrace}");
    }
  }

  Future<void> getImagesByIds() async {
    emit(const BreedState.loading());
    final breedIds = state.breeds.toList().map((e) => e.id).toList();

    try {
      final response = await _getImagesByIdsUseCase.call(breedIds);

      response.fold(
        (failure) => {
          emit(BreedState.error(
              breeds: state.breeds,
              selectedBreed: state.selectedBreed,
              searchText: state.searchText,
              errorMessage: 'Error fetching breed images')),
          print(failure),
        },
        (data) => {
          emit(BreedState.success(breeds: addBreedImages(data))),
        },
      );
    } catch (e, stackTrace) {
      emit(BreedState.error(
          breeds: state.breeds,
          selectedBreed: state.selectedBreed,
          searchText: state.searchText,
          errorMessage: 'Error fetching breed images'));
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

  void setSelectedBreed(Breed breed) {
    emit(BreedState.success(breeds: state.breeds, selectedBreed: breed));
  }

  void filterBreeds(String value) {
    final breedsFiltered = state.breeds
        .where((bred) => bred.name.toLowerCase().contains(value.toLowerCase()))
        .toList();
    emit(BreedState.success(breeds: breedsFiltered));
  }
}
