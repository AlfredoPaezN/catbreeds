part of 'breed_cubit.dart';

class BreedState extends Equatable {
  const BreedState({required this.breeds});

  final List<Breed> breeds;

  @override
  List<Object> get props => [breeds];
}

// final class BreedInitial extends BreedState {}
