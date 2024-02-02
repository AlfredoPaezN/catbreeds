import 'package:bloc/bloc.dart';
import 'package:catbreeds/core/usecase/usecase.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';
import 'package:catbreeds/modules/domain/usecases/breed_usecases/get_breeds_usecase.dart';
import 'package:catbreeds/modules/domain/usecases/breed_usecases/get_image_by_id_usecase.dart';
import 'package:equatable/equatable.dart';

part 'breed_state.dart';

class BreedCubit extends Cubit<BreedState> {
  BreedCubit(
    this.getBreedsUseCase,
    this.getImageByIdsUseCase,
  ) : super(const BreedState(breeds: []));

  final GetBreedsUseCase getBreedsUseCase;
  final GetImageByIdsUseCase getImageByIdsUseCase;

  Future<void> getBreeds() async {
    try {
      final response = await getBreedsUseCase.call(NoParams());
      response.fold(
        (failure) => {
          print("ERROR"),
        },
        (data) => {
          emit(BreedState(breeds: data)),
          getImageById("beng"),
        },
      );
    } catch (e, stackTrace) {
      print("ERROR CATCH ${e} ${stackTrace}");
    }
  }

  Future<void> getImageById(id) async {
    try {
      final response = await getBreedsUseCase.call(NoParams());
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
}
