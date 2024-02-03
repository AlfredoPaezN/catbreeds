import 'package:catbreeds/modules/data/models/breed_image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'breed_model.freezed.dart';
part 'breed_model.g.dart';

@freezed
class Breed with _$Breed {
  const factory Breed({
    required String id,
    required String name,
    required String origin,
    required String temperament,
    required int adaptability,
    required int hypoallergenic,
    Weight? weight,
    String? cfaUrl,
    BreedImage? image,
    String? vetstreetUrl,
    String? vcahospitalsUrl,
    String? countryCodes,
    String? countryCode,
    String? description,
    String? lifeSpan,
    int? indoor,
    int? lap,
    String? altNames,
    int? affectionLevel,
    int? childFriendly,
    int? dogFriendly,
    int? energyLevel,
    int? grooming,
    int? healthIssues,
    int? intelligence,
    int? sheddingLevel,
    int? socialNeeds,
    int? strangerFriendly,
    int? vocalisation,
    int? experimental,
    int? hairless,
    int? natural,
    int? rare,
    int? rex,
    int? suppressedTail,
    int? shortLegs,
    String? wikipediaUrl,
    String? referenceImageId,
    int? catFriendly,
    int? bidability,
  }) = _Breed;

  factory Breed.fromJson(Map<String, dynamic> json) => _$BreedFromJson(json);
}

@freezed
class Weight with _$Weight {
  const factory Weight({
    required String imperial,
    required String metric,
  }) = _Weight;

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
}
