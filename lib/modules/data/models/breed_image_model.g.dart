// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreedImage _$BreedImageFromJson(Map<String, dynamic> json) => BreedImage(
      id: json['id'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      url: json['url'] as String?,
      breedsInfo: (json['breedsInfo'] as List<dynamic>?)
          ?.map((e) => BreedInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BreedImageToJson(BreedImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'breedsInfo': instance.breedsInfo,
    };

BreedInfo _$BreedInfoFromJson(Map<String, dynamic> json) => BreedInfo(
      json['id'] as String?,
      json['name'] as String?,
    );

Map<String, dynamic> _$BreedInfoToJson(BreedInfo instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
