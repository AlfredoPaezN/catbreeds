import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'breed_image_model.g.dart';

@JsonSerializable()
class BreedImage extends Equatable {
  const BreedImage({
    this.id,
    this.width,
    this.height,
    this.url,
    this.breedsInfo,
  });

  factory BreedImage.fromJson(Map<String, dynamic> json) =>
      _$BreedImageFromJson(json);

  Map<String, dynamic> toJson() => _$BreedImageToJson(this);

  final String? id;
  final int? width;
  final int? height;
  final String? url;
  final List<BreedInfo>? breedsInfo;

  BreedImage copyWith({
    String? id,
    int? width,
    int? height,
    String? url,
  }) =>
      BreedImage(
        id: id ?? this.id,
        width: width ?? this.width,
        height: height ?? this.height,
        url: url ?? this.url,
      );

  @override
  List<Object?> get props => [id, width, height, url];
}

@JsonSerializable()
class BreedInfo extends Equatable {
  const BreedInfo(this.id, this.name);

  factory BreedInfo.fromJson(Map<String, dynamic> json) =>
      _$BreedInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BreedInfoToJson(this);

  final String? id;
  final String? name;

  @override
  List<Object?> get props => [id, name];
}
