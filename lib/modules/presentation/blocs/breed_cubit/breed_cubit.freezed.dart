// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breed_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BreedState {
  List<Breed> get breeds => throw _privateConstructorUsedError;
  Breed? get selectedBreed => throw _privateConstructorUsedError;
  List<Breed> get filteredBreeds => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        initial,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        loading,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        success,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        initial,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        loading,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        success,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        initial,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        loading,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        success,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BreedStateCopyWith<BreedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedStateCopyWith<$Res> {
  factory $BreedStateCopyWith(
          BreedState value, $Res Function(BreedState) then) =
      _$BreedStateCopyWithImpl<$Res, BreedState>;
  @useResult
  $Res call(
      {List<Breed> breeds, Breed? selectedBreed, List<Breed> filteredBreeds});

  $BreedCopyWith<$Res>? get selectedBreed;
}

/// @nodoc
class _$BreedStateCopyWithImpl<$Res, $Val extends BreedState>
    implements $BreedStateCopyWith<$Res> {
  _$BreedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breeds = null,
    Object? selectedBreed = freezed,
    Object? filteredBreeds = null,
  }) {
    return _then(_value.copyWith(
      breeds: null == breeds
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
      selectedBreed: freezed == selectedBreed
          ? _value.selectedBreed
          : selectedBreed // ignore: cast_nullable_to_non_nullable
              as Breed?,
      filteredBreeds: null == filteredBreeds
          ? _value.filteredBreeds
          : filteredBreeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BreedCopyWith<$Res>? get selectedBreed {
    if (_value.selectedBreed == null) {
      return null;
    }

    return $BreedCopyWith<$Res>(_value.selectedBreed!, (value) {
      return _then(_value.copyWith(selectedBreed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $BreedStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Breed> breeds, Breed? selectedBreed, List<Breed> filteredBreeds});

  @override
  $BreedCopyWith<$Res>? get selectedBreed;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BreedStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breeds = null,
    Object? selectedBreed = freezed,
    Object? filteredBreeds = null,
  }) {
    return _then(_$InitialImpl(
      breeds: null == breeds
          ? _value._breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
      selectedBreed: freezed == selectedBreed
          ? _value.selectedBreed
          : selectedBreed // ignore: cast_nullable_to_non_nullable
              as Breed?,
      filteredBreeds: null == filteredBreeds
          ? _value._filteredBreeds
          : filteredBreeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<Breed> breeds = const [],
      this.selectedBreed,
      final List<Breed> filteredBreeds = const []})
      : _breeds = breeds,
        _filteredBreeds = filteredBreeds;

  final List<Breed> _breeds;
  @override
  @JsonKey()
  List<Breed> get breeds {
    if (_breeds is EqualUnmodifiableListView) return _breeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breeds);
  }

  @override
  final Breed? selectedBreed;
  final List<Breed> _filteredBreeds;
  @override
  @JsonKey()
  List<Breed> get filteredBreeds {
    if (_filteredBreeds is EqualUnmodifiableListView) return _filteredBreeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredBreeds);
  }

  @override
  String toString() {
    return 'BreedState.initial(breeds: $breeds, selectedBreed: $selectedBreed, filteredBreeds: $filteredBreeds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._breeds, _breeds) &&
            (identical(other.selectedBreed, selectedBreed) ||
                other.selectedBreed == selectedBreed) &&
            const DeepCollectionEquality()
                .equals(other._filteredBreeds, _filteredBreeds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_breeds),
      selectedBreed,
      const DeepCollectionEquality().hash(_filteredBreeds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        initial,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        loading,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        success,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)
        error,
  }) {
    return initial(breeds, selectedBreed, filteredBreeds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        initial,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        loading,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        success,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)?
        error,
  }) {
    return initial?.call(breeds, selectedBreed, filteredBreeds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        initial,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        loading,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        success,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(breeds, selectedBreed, filteredBreeds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BreedState {
  const factory _Initial(
      {final List<Breed> breeds,
      final Breed? selectedBreed,
      final List<Breed> filteredBreeds}) = _$InitialImpl;

  @override
  List<Breed> get breeds;
  @override
  Breed? get selectedBreed;
  @override
  List<Breed> get filteredBreeds;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $BreedStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Breed> breeds, Breed? selectedBreed, List<Breed> filteredBreeds});

  @override
  $BreedCopyWith<$Res>? get selectedBreed;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BreedStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breeds = null,
    Object? selectedBreed = freezed,
    Object? filteredBreeds = null,
  }) {
    return _then(_$LoadingImpl(
      breeds: null == breeds
          ? _value._breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
      selectedBreed: freezed == selectedBreed
          ? _value.selectedBreed
          : selectedBreed // ignore: cast_nullable_to_non_nullable
              as Breed?,
      filteredBreeds: null == filteredBreeds
          ? _value._filteredBreeds
          : filteredBreeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(
      {final List<Breed> breeds = const [],
      this.selectedBreed,
      final List<Breed> filteredBreeds = const []})
      : _breeds = breeds,
        _filteredBreeds = filteredBreeds;

  final List<Breed> _breeds;
  @override
  @JsonKey()
  List<Breed> get breeds {
    if (_breeds is EqualUnmodifiableListView) return _breeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breeds);
  }

  @override
  final Breed? selectedBreed;
  final List<Breed> _filteredBreeds;
  @override
  @JsonKey()
  List<Breed> get filteredBreeds {
    if (_filteredBreeds is EqualUnmodifiableListView) return _filteredBreeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredBreeds);
  }

  @override
  String toString() {
    return 'BreedState.loading(breeds: $breeds, selectedBreed: $selectedBreed, filteredBreeds: $filteredBreeds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._breeds, _breeds) &&
            (identical(other.selectedBreed, selectedBreed) ||
                other.selectedBreed == selectedBreed) &&
            const DeepCollectionEquality()
                .equals(other._filteredBreeds, _filteredBreeds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_breeds),
      selectedBreed,
      const DeepCollectionEquality().hash(_filteredBreeds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        initial,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        loading,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        success,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)
        error,
  }) {
    return loading(breeds, selectedBreed, filteredBreeds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        initial,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        loading,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        success,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)?
        error,
  }) {
    return loading?.call(breeds, selectedBreed, filteredBreeds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        initial,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        loading,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        success,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(breeds, selectedBreed, filteredBreeds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BreedState {
  const factory _Loading(
      {final List<Breed> breeds,
      final Breed? selectedBreed,
      final List<Breed> filteredBreeds}) = _$LoadingImpl;

  @override
  List<Breed> get breeds;
  @override
  Breed? get selectedBreed;
  @override
  List<Breed> get filteredBreeds;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $BreedStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Breed> breeds, Breed? selectedBreed, List<Breed> filteredBreeds});

  @override
  $BreedCopyWith<$Res>? get selectedBreed;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$BreedStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breeds = null,
    Object? selectedBreed = freezed,
    Object? filteredBreeds = null,
  }) {
    return _then(_$SuccessImpl(
      breeds: null == breeds
          ? _value._breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
      selectedBreed: freezed == selectedBreed
          ? _value.selectedBreed
          : selectedBreed // ignore: cast_nullable_to_non_nullable
              as Breed?,
      filteredBreeds: null == filteredBreeds
          ? _value._filteredBreeds
          : filteredBreeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {final List<Breed> breeds = const [],
      this.selectedBreed,
      final List<Breed> filteredBreeds = const []})
      : _breeds = breeds,
        _filteredBreeds = filteredBreeds;

  final List<Breed> _breeds;
  @override
  @JsonKey()
  List<Breed> get breeds {
    if (_breeds is EqualUnmodifiableListView) return _breeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breeds);
  }

  @override
  final Breed? selectedBreed;
  final List<Breed> _filteredBreeds;
  @override
  @JsonKey()
  List<Breed> get filteredBreeds {
    if (_filteredBreeds is EqualUnmodifiableListView) return _filteredBreeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredBreeds);
  }

  @override
  String toString() {
    return 'BreedState.success(breeds: $breeds, selectedBreed: $selectedBreed, filteredBreeds: $filteredBreeds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._breeds, _breeds) &&
            (identical(other.selectedBreed, selectedBreed) ||
                other.selectedBreed == selectedBreed) &&
            const DeepCollectionEquality()
                .equals(other._filteredBreeds, _filteredBreeds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_breeds),
      selectedBreed,
      const DeepCollectionEquality().hash(_filteredBreeds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        initial,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        loading,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        success,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)
        error,
  }) {
    return success(breeds, selectedBreed, filteredBreeds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        initial,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        loading,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        success,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)?
        error,
  }) {
    return success?.call(breeds, selectedBreed, filteredBreeds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        initial,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        loading,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        success,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(breeds, selectedBreed, filteredBreeds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements BreedState {
  const factory _Success(
      {final List<Breed> breeds,
      final Breed? selectedBreed,
      final List<Breed> filteredBreeds}) = _$SuccessImpl;

  @override
  List<Breed> get breeds;
  @override
  Breed? get selectedBreed;
  @override
  List<Breed> get filteredBreeds;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $BreedStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Breed> breeds,
      Breed? selectedBreed,
      List<Breed> filteredBreeds,
      String? errorMessage});

  @override
  $BreedCopyWith<$Res>? get selectedBreed;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$BreedStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breeds = null,
    Object? selectedBreed = freezed,
    Object? filteredBreeds = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ErrorImpl(
      breeds: null == breeds
          ? _value._breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
      selectedBreed: freezed == selectedBreed
          ? _value.selectedBreed
          : selectedBreed // ignore: cast_nullable_to_non_nullable
              as Breed?,
      filteredBreeds: null == filteredBreeds
          ? _value._filteredBreeds
          : filteredBreeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(
      {final List<Breed> breeds = const [],
      this.selectedBreed,
      final List<Breed> filteredBreeds = const [],
      this.errorMessage})
      : _breeds = breeds,
        _filteredBreeds = filteredBreeds;

  final List<Breed> _breeds;
  @override
  @JsonKey()
  List<Breed> get breeds {
    if (_breeds is EqualUnmodifiableListView) return _breeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breeds);
  }

  @override
  final Breed? selectedBreed;
  final List<Breed> _filteredBreeds;
  @override
  @JsonKey()
  List<Breed> get filteredBreeds {
    if (_filteredBreeds is EqualUnmodifiableListView) return _filteredBreeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredBreeds);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'BreedState.error(breeds: $breeds, selectedBreed: $selectedBreed, filteredBreeds: $filteredBreeds, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality().equals(other._breeds, _breeds) &&
            (identical(other.selectedBreed, selectedBreed) ||
                other.selectedBreed == selectedBreed) &&
            const DeepCollectionEquality()
                .equals(other._filteredBreeds, _filteredBreeds) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_breeds),
      selectedBreed,
      const DeepCollectionEquality().hash(_filteredBreeds),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        initial,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        loading,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)
        success,
    required TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)
        error,
  }) {
    return error(breeds, selectedBreed, filteredBreeds, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        initial,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        loading,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        success,
    TResult? Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)?
        error,
  }) {
    return error?.call(breeds, selectedBreed, filteredBreeds, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        initial,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        loading,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds)?
        success,
    TResult Function(List<Breed> breeds, Breed? selectedBreed,
            List<Breed> filteredBreeds, String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(breeds, selectedBreed, filteredBreeds, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BreedState {
  const factory _Error(
      {final List<Breed> breeds,
      final Breed? selectedBreed,
      final List<Breed> filteredBreeds,
      final String? errorMessage}) = _$ErrorImpl;

  @override
  List<Breed> get breeds;
  @override
  Breed? get selectedBreed;
  @override
  List<Breed> get filteredBreeds;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
