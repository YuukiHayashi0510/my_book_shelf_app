// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeriesList {
  List<Series> get values => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeriesListCopyWith<SeriesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesListCopyWith<$Res> {
  factory $SeriesListCopyWith(
          SeriesList value, $Res Function(SeriesList) then) =
      _$SeriesListCopyWithImpl<$Res, SeriesList>;
  @useResult
  $Res call({List<Series> values});
}

/// @nodoc
class _$SeriesListCopyWithImpl<$Res, $Val extends SeriesList>
    implements $SeriesListCopyWith<$Res> {
  _$SeriesListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Series>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeriesListImplCopyWith<$Res>
    implements $SeriesListCopyWith<$Res> {
  factory _$$SeriesListImplCopyWith(
          _$SeriesListImpl value, $Res Function(_$SeriesListImpl) then) =
      __$$SeriesListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Series> values});
}

/// @nodoc
class __$$SeriesListImplCopyWithImpl<$Res>
    extends _$SeriesListCopyWithImpl<$Res, _$SeriesListImpl>
    implements _$$SeriesListImplCopyWith<$Res> {
  __$$SeriesListImplCopyWithImpl(
      _$SeriesListImpl _value, $Res Function(_$SeriesListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$SeriesListImpl(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Series>,
    ));
  }
}

/// @nodoc

class _$SeriesListImpl extends _SeriesList {
  const _$SeriesListImpl({required final List<Series> values})
      : _values = values,
        super._();

  final List<Series> _values;
  @override
  List<Series> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'SeriesList(values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesListImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesListImplCopyWith<_$SeriesListImpl> get copyWith =>
      __$$SeriesListImplCopyWithImpl<_$SeriesListImpl>(this, _$identity);
}

abstract class _SeriesList extends SeriesList {
  const factory _SeriesList({required final List<Series> values}) =
      _$SeriesListImpl;
  const _SeriesList._() : super._();

  @override
  List<Series> get values;
  @override
  @JsonKey(ignore: true)
  _$$SeriesListImplCopyWith<_$SeriesListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
