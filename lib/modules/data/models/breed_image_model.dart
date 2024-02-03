import 'package:freezed_annotation/freezed_annotation.dart';

part 'breed_image_model.freezed.dart';
part 'breed_image_model.g.dart';

@freezed
class BreedImage with _$BreedImage {
  const factory BreedImage({
    String? id,
    int? width,
    int? height,
    String? url,
    List<BreedInfo>? breedsInfo,
  }) = _BreedImage;

  factory BreedImage.fromJson(Map<String, dynamic> json) =>
      _$BreedImageFromJson(json);
}

@freezed
class BreedInfo with _$BreedInfo {
  const factory BreedInfo(String? id, String? name) = _BreedInfo;

  factory BreedInfo.fromJson(Map<String, dynamic> json) =>
      _$BreedInfoFromJson(json);
}
