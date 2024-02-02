part of 'breed_cubit.dart';

class BreedState extends Equatable {
  final List<Breed> breeds;

  const BreedState({
    required this.breeds,
  });

  @override
  List<Object> get props => [breeds];
}

// final class BreedInitial extends BreedState {}
