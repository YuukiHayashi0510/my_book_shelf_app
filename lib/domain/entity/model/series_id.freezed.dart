// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeriesId _$SeriesIdFromJson(Map<String, dynamic> json) {
  return _SeriesId.fromJson(json);
}

/// @nodoc
mixin _$SeriesId {
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriesIdCopyWith<SeriesId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesIdCopyWith<$Res> {
  factory $SeriesIdCopyWith(SeriesId value, $Res Function(SeriesId) then) =
      _$SeriesIdCopyWithImpl<$Res, SeriesId>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$SeriesIdCopyWithImpl<$Res, $Val extends SeriesId>
    implements $SeriesIdCopyWith<$Res> {
  _$SeriesIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeriesIdImplCopyWith<$Res>
    implements $SeriesIdCopyWith<$Res> {
  factory _$$SeriesIdImplCopyWith(
          _$SeriesIdImpl value, $Res Function(_$SeriesIdImpl) then) =
      __$$SeriesIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$SeriesIdImplCopyWithImpl<$Res>
    extends _$SeriesIdCopyWithImpl<$Res, _$SeriesIdImpl>
    implements _$$SeriesIdImplCopyWith<$Res> {
  __$$SeriesIdImplCopyWithImpl(
      _$SeriesIdImpl _value, $Res Function(_$SeriesIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SeriesIdImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeriesIdImpl implements _SeriesId {
  const _$SeriesIdImpl({required this.value});

  factory _$SeriesIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeriesIdImplFromJson(json);

  @override
  final int value;

  @override
  String toString() {
    return 'SeriesId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesIdImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesIdImplCopyWith<_$SeriesIdImpl> get copyWith =>
      __$$SeriesIdImplCopyWithImpl<_$SeriesIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeriesIdImplToJson(
      this,
    );
  }
}

abstract class _SeriesId implements SeriesId {
  const factory _SeriesId({required final int value}) = _$SeriesIdImpl;

  factory _SeriesId.fromJson(Map<String, dynamic> json) =
      _$SeriesIdImpl.fromJson;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$SeriesIdImplCopyWith<_$SeriesIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
