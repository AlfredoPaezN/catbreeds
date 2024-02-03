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
      cfaUrl: json['cfaUrl'] as String?,
      image: json['image'] == null
          ? null
          : BreedImage.fromJson(json['image'] as Map<String, dynamic>),
      vetstreetUrl: json['vetstreetUrl'] as String?,
      vcahospitalsUrl: json['vcahospitalsUrl'] as String?,
      countryCodes: json['countryCodes'] as String?,
      countryCode: json['countryCode'] as String?,
      description: json['description'] as String?,
      lifeSpan: json['lifeSpan'] as String?,
      indoor: json['indoor'] as int?,
      lap: json['lap'] as int?,
      altNames: json['altNames'] as String?,
      affectionLevel: json['affectionLevel'] as int?,
      childFriendly: json['childFriendly'] as int?,
      dogFriendly: json['dogFriendly'] as int?,
      energyLevel: json['energyLevel'] as int?,
      grooming: json['grooming'] as int?,
      healthIssues: json['healthIssues'] as int?,
      intelligence: json['intelligence'] as int?,
      sheddingLevel: json['sheddingLevel'] as int?,
      socialNeeds: json['socialNeeds'] as int?,
      strangerFriendly: json['strangerFriendly'] as int?,
      vocalisation: json['vocalisation'] as int?,
      experimental: json['experimental'] as int?,
      hairless: json['hairless'] as int?,
      natural: json['natural'] as int?,
      rare: json['rare'] as int?,
      rex: json['rex'] as int?,
      suppressedTail: json['suppressedTail'] as int?,
      shortLegs: json['shortLegs'] as int?,
      wikipediaUrl: json['wikipediaUrl'] as String?,
      referenceImageId: json['referenceImageId'] as String?,
      catFriendly: json['catFriendly'] as int?,
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
      'cfaUrl': instance.cfaUrl,
      'image': instance.image,
      'vetstreetUrl': instance.vetstreetUrl,
      'vcahospitalsUrl': instance.vcahospitalsUrl,
      'countryCodes': instance.countryCodes,
      'countryCode': instance.countryCode,
      'description': instance.description,
      'lifeSpan': instance.lifeSpan,
      'indoor': instance.indoor,
      'lap': instance.lap,
      'altNames': instance.altNames,
      'affectionLevel': instance.affectionLevel,
      'childFriendly': instance.childFriendly,
      'dogFriendly': instance.dogFriendly,
      'energyLevel': instance.energyLevel,
      'grooming': instance.grooming,
      'healthIssues': instance.healthIssues,
      'intelligence': instance.intelligence,
      'sheddingLevel': instance.sheddingLevel,
      'socialNeeds': instance.socialNeeds,
      'strangerFriendly': instance.strangerFriendly,
      'vocalisation': instance.vocalisation,
      'experimental': instance.experimental,
      'hairless': instance.hairless,
      'natural': instance.natural,
      'rare': instance.rare,
      'rex': instance.rex,
      'suppressedTail': instance.suppressedTail,
      'shortLegs': instance.shortLegs,
      'wikipediaUrl': instance.wikipediaUrl,
      'referenceImageId': instance.referenceImageId,
      'catFriendly': instance.catFriendly,
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
