import 'package:bloc/bloc.dart';
import 'package:catbreeds/core/usecase/usecase.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';
import 'package:catbreeds/modules/domain/usecases/breed_usecases/get_breeds_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'breed_state.dart';
part 'breed_cubit.freezed.dart';

class BreedCubit extends Cubit<BreedState> {
  BreedCubit(
    this._getBreedsUseCase,
  ) : super(const BreedState.initial());

  final GetBreedsUseCase _getBreedsUseCase;

  Future<void> getBreeds() async {
    emit(const BreedState.loading());
    try {
      final response = await _getBreedsUseCase.call(NoParams());
      response.fold(
        (failure) => {
          emit(
            const BreedState.error(
              errorMessage: 'Error fetching breeds cats',
            ),
          ),
        },
        (data) => {
          emit(BreedState.success(breeds: data, filteredBreeds: data)),
        },
      );
    } catch (e) {
      emit(const BreedState.error(errorMessage: 'Error fetching breeds cats'));
    }
  }

  void setSelectedBreed(Breed breed) {
    emit(
      BreedState.success(
        breeds: state.breeds,
        selectedBreed: breed,
        filteredBreeds: state.filteredBreeds,
      ),
    );
  }

  void filterBreeds(String value) {
    final breedsFiltered = state.breeds
        .where((bred) => bred.name.toLowerCase().contains(value.toLowerCase()))
        .toList();
    if (value.isEmpty) {
      emit(
        BreedState.success(
          breeds: state.breeds,
          filteredBreeds: state.breeds,
        ),
      );
    } else {
      emit(
        BreedState.success(
          breeds: state.breeds,
          filteredBreeds: breedsFiltered,
        ),
      );
    }
  }
}
