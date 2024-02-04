// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreedImpl _$$BreedImplFromJson(Map<String, dynamic> json) => _$BreedImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      origin: json['origin'] as String,
      temperament: json['temperament'] as String,
      adaptability: json['adaptability'] as int,
      hypoallergenic: json['hypoallergenic'] as int,
      weight: json['weight'] == null
          ? null
          : Weight.fromJson(json['weight'] as Map<String, dynamic>),
      cfaUrl: json['cfa_url'] as String?,
      vetstreetUrl: json['vetstreet_url'] as String?,
      vcahospitalsUrl: json['vcahospitals_url'] as String?,
      countryCodes: json['country_codes'] as String?,
      countryCode: json['country_code'] as String?,
      description: json['description'] as String?,
      lifeSpan: json['life_span'] as String?,
      indoor: json['indoor'] as int?,
      lap: json['lap'] as int?,
      altNames: json['alt_names'] as String?,
      affectionLevel: json['affection_level'] as int?,
      childFriendly: json['child_friendly'] as int?,
      dogFriendly: json['dog_friendly'] as int?,
      energyLevel: json['energy_level'] as int?,
      grooming: json['grooming'] as int?,
      healthIssues: json['health_issues'] as int?,
      intelligence: json['intelligence'] as int?,
      sheddingLevel: json['shedding_level'] as int?,
      socialNeeds: json['social_needs'] as int?,
      strangerFriendly: json['stranger_friendly'] as int?,
      vocalisation: json['vocalisation'] as int?,
      experimental: json['experimental'] as int?,
      hairless: json['hairless'] as int?,
      natural: json['natural'] as int?,
      rare: json['rare'] as int?,
      rex: json['rex'] as int?,
      suppressedTail: json['suppressed_tail'] as int?,
      shortLegs: json['short_legs'] as int?,
      wikipediaUrl: json['wikipedia_url'] as String?,
      referenceImageId: json['reference_image_id'] as String?,
      catFriendly: json['cat_friendly'] as int?,
      bidability: json['bidability'] as int?,
    );

Map<String, dynamic> _$$BreedImplToJson(_$BreedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'origin': instance.origin,
      'temperament': instance.temperament,
      'adaptability': instance.adaptability,
      'hypoallergenic': instance.hypoallergenic,
      'weight': instance.weight,
      'cfa_url': instance.cfaUrl,
      'vetstreet_url': instance.vetstreetUrl,
      'vcahospitals_url': instance.vcahospitalsUrl,
      'country_codes': instance.countryCodes,
      'country_code': instance.countryCode,
      'description': instance.description,
      'life_span': instance.lifeSpan,
      'indoor': instance.indoor,
      'lap': instance.lap,
      'alt_names': instance.altNames,
      'affection_level': instance.affectionLevel,
      'child_friendly': instance.childFriendly,
      'dog_friendly': instance.dogFriendly,
      'energy_level': instance.energyLevel,
      'grooming': instance.grooming,
      'health_issues': instance.healthIssues,
      'intelligence': instance.intelligence,
      'shedding_level': instance.sheddingLevel,
      'social_needs': instance.socialNeeds,
      'stranger_friendly': instance.strangerFriendly,
      'vocalisation': instance.vocalisation,
      'experimental': instance.experimental,
      'hairless': instance.hairless,
      'natural': instance.natural,
      'rare': instance.rare,
      'rex': instance.rex,
      'suppressed_tail': instance.suppressedTail,
      'short_legs': instance.shortLegs,
      'wikipedia_url': instance.wikipediaUrl,
      'reference_image_id': instance.referenceImageId,
      'cat_friendly': instance.catFriendly,
      'bidability': instance.bidability,
    };

_$WeightImpl _$$WeightImplFromJson(Map<String, dynamic> json) => _$WeightImpl(
      imperial: json['imperial'] as String,
      metric: json['metric'] as String,
    );

Map<String, dynamic> _$$WeightImplToJson(_$WeightImpl instance) =>
    <String, dynamic>{
      'imperial': instance.imperial,
      'metric': instance.metric,
    };
