// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookId _$BookIdFromJson(Map<String, dynamic> json) {
  return _BookId.fromJson(json);
}

/// @nodoc
mixin _$BookId {
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookIdCopyWith<BookId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookIdCopyWith<$Res> {
  factory $BookIdCopyWith(BookId value, $Res Function(BookId) then) =
      _$BookIdCopyWithImpl<$Res, BookId>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$BookIdCopyWithImpl<$Res, $Val extends BookId>
    implements $BookIdCopyWith<$Res> {
  _$BookIdCopyWithImpl(this._value, this._then);

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
abstract class _$$BookIdImplCopyWith<$Res> implements $BookIdCopyWith<$Res> {
  factory _$$BookIdImplCopyWith(
          _$BookIdImpl value, $Res Function(_$BookIdImpl) then) =
      __$$BookIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$BookIdImplCopyWithImpl<$Res>
    extends _$BookIdCopyWithImpl<$Res, _$BookIdImpl>
    implements _$$BookIdImplCopyWith<$Res> {
  __$$BookIdImplCopyWithImpl(
      _$BookIdImpl _value, $Res Function(_$BookIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$BookIdImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookIdImpl implements _BookId {
  const _$BookIdImpl({required this.value});

  factory _$BookIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookIdImplFromJson(json);

  @override
  final int value;

  @override
  String toString() {
    return 'BookId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookIdImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookIdImplCopyWith<_$BookIdImpl> get copyWith =>
      __$$BookIdImplCopyWithImpl<_$BookIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookIdImplToJson(
      this,
    );
  }
}

abstract class _BookId implements BookId {
  const factory _BookId({required final int value}) = _$BookIdImpl;

  factory _BookId.fromJson(Map<String, dynamic> json) = _$BookIdImpl.fromJson;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$BookIdImplCopyWith<_$BookIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
