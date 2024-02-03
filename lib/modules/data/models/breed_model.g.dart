// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Breed _$BreedFromJson(Map<String, dynamic> json) => Breed(
      weight: Weight.fromJson(json['weight'] as Map<String, dynamic>),
      id: json['id'] as String,
      name: json['name'] as String,
      temperament: json['temperament'] as String,
      origin: json['origin'] as String,
      adaptability: json['adaptability'] as int,
      hypoallergenic: json['hypoallergenic'] as int,
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

Map<String, dynamic> _$BreedToJson(Breed instance) => <String, dynamic>{
      'weight': instance.weight,
      'id': instance.id,
      'name': instance.name,
      'cfaUrl': instance.cfaUrl,
      'image': instance.image,
      'vetstreetUrl': instance.vetstreetUrl,
      'vcahospitalsUrl': instance.vcahospitalsUrl,
      'temperament': instance.temperament,
      'origin': instance.origin,
      'countryCodes': instance.countryCodes,
      'countryCode': instance.countryCode,
      'description': instance.description,
      'lifeSpan': instance.lifeSpan,
      'indoor': instance.indoor,
      'lap': instance.lap,
      'altNames': instance.altNames,
      'adaptability': instance.adaptability,
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
      'hypoallergenic': instance.hypoallergenic,
      'referenceImageId': instance.referenceImageId,
      'catFriendly': instance.catFriendly,
      'bidability': instance.bidability,
    };

Weight _$WeightFromJson(Map<String, dynamic> json) => Weight(
      imperial: json['imperial'] as String,
      metric: json['metric'] as String,
    );

Map<String, dynamic> _$WeightToJson(Weight instance) => <String, dynamic>{
      'imperial': instance.imperial,
      'metric': instance.metric,
    };
