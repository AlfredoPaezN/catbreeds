// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breed_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BreedImage _$BreedImageFromJson(Map<String, dynamic> json) {
  return _BreedImage.fromJson(json);
}

/// @nodoc
mixin _$BreedImage {
  String? get id => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  List<BreedInfo>? get breedsInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedImageCopyWith<BreedImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedImageCopyWith<$Res> {
  factory $BreedImageCopyWith(
          BreedImage value, $Res Function(BreedImage) then) =
      _$BreedImageCopyWithImpl<$Res, BreedImage>;
  @useResult
  $Res call(
      {String? id,
      int? width,
      int? height,
      String? url,
      List<BreedInfo>? breedsInfo});
}

/// @nodoc
class _$BreedImageCopyWithImpl<$Res, $Val extends BreedImage>
    implements $BreedImageCopyWith<$Res> {
  _$BreedImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
    Object? breedsInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      breedsInfo: freezed == breedsInfo
          ? _value.breedsInfo
          : breedsInfo // ignore: cast_nullable_to_non_nullable
              as List<BreedInfo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreedImageImplCopyWith<$Res>
    implements $BreedImageCopyWith<$Res> {
  factory _$$BreedImageImplCopyWith(
          _$BreedImageImpl value, $Res Function(_$BreedImageImpl) then) =
      __$$BreedImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? width,
      int? height,
      String? url,
      List<BreedInfo>? breedsInfo});
}

/// @nodoc
class __$$BreedImageImplCopyWithImpl<$Res>
    extends _$BreedImageCopyWithImpl<$Res, _$BreedImageImpl>
    implements _$$BreedImageImplCopyWith<$Res> {
  __$$BreedImageImplCopyWithImpl(
      _$BreedImageImpl _value, $Res Function(_$BreedImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
    Object? breedsInfo = freezed,
  }) {
    return _then(_$BreedImageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      breedsInfo: freezed == breedsInfo
          ? _value._breedsInfo
          : breedsInfo // ignore: cast_nullable_to_non_nullable
              as List<BreedInfo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreedImageImpl implements _BreedImage {
  const _$BreedImageImpl(
      {this.id,
      this.width,
      this.height,
      this.url,
      final List<BreedInfo>? breedsInfo})
      : _breedsInfo = breedsInfo;

  factory _$BreedImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreedImageImplFromJson(json);

  @override
  final String? id;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? url;
  final List<BreedInfo>? _breedsInfo;
  @override
  List<BreedInfo>? get breedsInfo {
    final value = _breedsInfo;
    if (value == null) return null;
    if (_breedsInfo is EqualUnmodifiableListView) return _breedsInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BreedImage(id: $id, width: $width, height: $height, url: $url, breedsInfo: $breedsInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other._breedsInfo, _breedsInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, width, height, url,
      const DeepCollectionEquality().hash(_breedsInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedImageImplCopyWith<_$BreedImageImpl> get copyWith =>
      __$$BreedImageImplCopyWithImpl<_$BreedImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreedImageImplToJson(
      this,
    );
  }
}

abstract class _BreedImage implements BreedImage {
  const factory _BreedImage(
      {final String? id,
      final int? width,
      final int? height,
      final String? url,
      final List<BreedInfo>? breedsInfo}) = _$BreedImageImpl;

  factory _BreedImage.fromJson(Map<String, dynamic> json) =
      _$BreedImageImpl.fromJson;

  @override
  String? get id;
  @override
  int? get width;
  @override
  int? get height;
  @override
  String? get url;
  @override
  List<BreedInfo>? get breedsInfo;
  @override
  @JsonKey(ignore: true)
  _$$BreedImageImplCopyWith<_$BreedImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BreedInfo _$BreedInfoFromJson(Map<String, dynamic> json) {
  return _BreedInfo.fromJson(json);
}

/// @nodoc
mixin _$BreedInfo {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedInfoCopyWith<BreedInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedInfoCopyWith<$Res> {
  factory $BreedInfoCopyWith(BreedInfo value, $Res Function(BreedInfo) then) =
      _$BreedInfoCopyWithImpl<$Res, BreedInfo>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$BreedInfoCopyWithImpl<$Res, $Val extends BreedInfo>
    implements $BreedInfoCopyWith<$Res> {
  _$BreedInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreedInfoImplCopyWith<$Res>
    implements $BreedInfoCopyWith<$Res> {
  factory _$$BreedInfoImplCopyWith(
          _$BreedInfoImpl value, $Res Function(_$BreedInfoImpl) then) =
      __$$BreedInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$BreedInfoImplCopyWithImpl<$Res>
    extends _$BreedInfoCopyWithImpl<$Res, _$BreedInfoImpl>
    implements _$$BreedInfoImplCopyWith<$Res> {
  __$$BreedInfoImplCopyWithImpl(
      _$BreedInfoImpl _value, $Res Function(_$BreedInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$BreedInfoImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreedInfoImpl implements _BreedInfo {
  const _$BreedInfoImpl(this.id, this.name);

  factory _$BreedInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreedInfoImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'BreedInfo(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedInfoImplCopyWith<_$BreedInfoImpl> get copyWith =>
      __$$BreedInfoImplCopyWithImpl<_$BreedInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreedInfoImplToJson(
      this,
    );
  }
}

abstract class _BreedInfo implements BreedInfo {
  const factory _BreedInfo(final String? id, final String? name) =
      _$BreedInfoImpl;

  factory _BreedInfo.fromJson(Map<String, dynamic> json) =
      _$BreedInfoImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$BreedInfoImplCopyWith<_$BreedInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
