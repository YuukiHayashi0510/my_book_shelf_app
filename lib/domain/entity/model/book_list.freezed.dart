// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookList {
  List<Book> get values => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookListCopyWith<BookList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookListCopyWith<$Res> {
  factory $BookListCopyWith(BookList value, $Res Function(BookList) then) =
      _$BookListCopyWithImpl<$Res, BookList>;
  @useResult
  $Res call({List<Book> values});
}

/// @nodoc
class _$BookListCopyWithImpl<$Res, $Val extends BookList>
    implements $BookListCopyWith<$Res> {
  _$BookListCopyWithImpl(this._value, this._then);

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
              as List<Book>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookListImplCopyWith<$Res>
    implements $BookListCopyWith<$Res> {
  factory _$$BookListImplCopyWith(
          _$BookListImpl value, $Res Function(_$BookListImpl) then) =
      __$$BookListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Book> values});
}

/// @nodoc
class __$$BookListImplCopyWithImpl<$Res>
    extends _$BookListCopyWithImpl<$Res, _$BookListImpl>
    implements _$$BookListImplCopyWith<$Res> {
  __$$BookListImplCopyWithImpl(
      _$BookListImpl _value, $Res Function(_$BookListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$BookListImpl(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$BookListImpl extends _BookList {
  const _$BookListImpl({required final List<Book> values})
      : _values = values,
        super._();

  final List<Book> _values;
  @override
  List<Book> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'BookList(values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookListImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookListImplCopyWith<_$BookListImpl> get copyWith =>
      __$$BookListImplCopyWithImpl<_$BookListImpl>(this, _$identity);
}

abstract class _BookList extends BookList {
  const factory _BookList({required final List<Book> values}) = _$BookListImpl;
  const _BookList._() : super._();

  @override
  List<Book> get values;
  @override
  @JsonKey(ignore: true)
  _$$BookListImplCopyWith<_$BookListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
