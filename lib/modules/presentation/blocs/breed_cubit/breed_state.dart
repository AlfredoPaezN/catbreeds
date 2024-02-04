part of 'breed_cubit.dart';

@freezed
class BreedState with _$BreedState {
  const factory BreedState.initial(
      {@Default([]) List<Breed> breeds,
      Breed? selectedBreed,
      String? searchText}) = _Initial;
  const factory BreedState.loading(
      {@Default([]) List<Breed> breeds,
      Breed? selectedBreed,
      String? searchText}) = _Loading;
  const factory BreedState.success(
      {@Default([]) List<Breed> breeds,
      Breed? selectedBreed,
      String? searchText}) = _Success;
  const factory BreedState.error({
    @Default([]) List<Breed> breeds,
    Breed? selectedBreed,
    String? searchText,
    String? errorMessage,
  }) = _Error;
}
