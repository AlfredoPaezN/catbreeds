import 'package:catbreeds/core/constants/constants.dart';
import 'package:catbreeds/core/http/dio_client.dart';
import 'package:catbreeds/modules/data/datasources/remote/breeds_api.dart';
import 'package:catbreeds/modules/data/repositories/breed_repository.dart';
import 'package:catbreeds/modules/domain/repositories/breed_repository.dart';
import 'package:catbreeds/modules/domain/usecases/breed_usecases/get_breeds_usecase.dart';
import 'package:catbreeds/modules/domain/usecases/breed_usecases/get_image_by_id_usecase.dart';
import 'package:catbreeds/modules/presentation/blocs/breed_cubit/breed_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
// API Client
  locator.registerLazySingleton<Dio>(() => dioClient);

// Core
  locator.registerSingleton(() => Constants());

// DataSources
  locator.registerLazySingleton<BreedsApi>(() => BreedsApi(locator()));

// Repositories
  locator.registerLazySingleton<BreedRepository>(
      () => BreedRepositoryImpl(breedsApi: locator()));

// UseCases
  locator.registerLazySingleton<GetBreedsUseCase>(
      () => GetBreedsUseCase(locator()));

  locator.registerLazySingleton<GetImageByIdsUseCase>(
      () => GetImageByIdsUseCase(locator()));

// Cubits
  locator.registerFactory(() => BreedCubit(locator(), locator()));
}
