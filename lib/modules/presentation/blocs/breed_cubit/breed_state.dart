part of 'breed_cubit.dart';

@freezed
class BreedState with _$BreedState {
  const factory BreedState.initial({
    @Default([]) List<Breed> breeds,
    Breed? selectedBreed,
    @Default([]) List<Breed> filteredBreeds,
  }) = _Initial;
  const factory BreedState.loading({
    @Default([]) List<Breed> breeds,
    Breed? selectedBreed,
    @Default([]) List<Breed> filteredBreeds,
  }) = _Loading;
  const factory BreedState.success({
    @Default([]) List<Breed> breeds,
    Breed? selectedBreed,
    @Default([]) List<Breed> filteredBreeds,
  }) = _Success;
  const factory BreedState.error({
    @Default([]) List<Breed> breeds,
    Breed? selectedBreed,
    @Default([]) List<Breed> filteredBreeds,
    String? errorMessage,
  }) = _Error;
}
