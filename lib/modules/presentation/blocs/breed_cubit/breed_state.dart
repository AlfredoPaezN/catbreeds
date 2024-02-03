part of 'breed_cubit.dart';

@freezed
class BreedState with _$BreedState {
  const factory BreedState.initial(List<Breed> breeds) = _Initial;
  const factory BreedState.loading() = _Loading;
  const factory BreedState.success(List<Breed> breeds) = _Success;
  const factory BreedState.error(String errorMessage) = _Error;
}
