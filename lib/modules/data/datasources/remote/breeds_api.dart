import 'package:catbreeds/modules/data/models/breed_image_model.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';
import 'package:catbreeds/core/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'breeds_api.g.dart';

@RestApi(baseUrl: Constants.baseURL)
abstract class BreedsApi {
  factory BreedsApi(Dio dio, {String baseUrl}) = _BreedsApi;

  @GET('/breeds')
  Future<List<Breed>> getBreeds();

  @GET('/images/search?limit=100')
  Future<List<BreedImage>> getImagesByIds(
    @Query('breed_ids') String breedIds,
  );
}
