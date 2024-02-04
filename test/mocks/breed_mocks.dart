import 'package:catbreeds/modules/domain/usecases/breed_usecases/get_breeds_usecase.dart';
import 'package:catbreeds/modules/presentation/blocs/breed_cubit/breed_cubit.dart';

import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBreedCubit extends MockCubit<BreedState> implements BreedCubit {}

class MockGetBreedsUseCase extends Mock implements GetBreedsUseCase {}

class MockBreedState extends Fake implements BreedState {}
