// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiBook _$ApiBookFromJson(Map<String, dynamic> json) {
  return _ApiBook.fromJson(json);
}

/// @nodoc
mixin _$ApiBook {
  String get title => throw _privateConstructorUsedError;
  List<String> get authors => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  String get publishedDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<IndustryIdentifiers> get industryIdentifiers =>
      throw _privateConstructorUsedError;
  ReadingModes get readingModes => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  String get printType => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  String get maturityRating => throw _privateConstructorUsedError;
  bool get allowAnonLogging => throw _privateConstructorUsedError;
  String get contentVersion => throw _privateConstructorUsedError;
  PanelizationSummary get panelizationSummary =>
      throw _privateConstructorUsedError;
  ImageLinks get imageLinks => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get previewLink => throw _privateConstructorUsedError;
  String get infoLink => throw _privateConstructorUsedError;
  String get canonicalVolumeLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiBookCopyWith<ApiBook> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiBookCopyWith<$Res> {
  factory $ApiBookCopyWith(ApiBook value, $Res Function(ApiBook) then) =
      _$ApiBookCopyWithImpl<$Res, ApiBook>;
  @useResult
  $Res call(
      {String title,
      List<String> authors,
      String publisher,
      String publishedDate,
      String description,
      List<IndustryIdentifiers> industryIdentifiers,
      ReadingModes readingModes,
      int pageCount,
      String printType,
      List<String> categories,
      String maturityRating,
      bool allowAnonLogging,
      String contentVersion,
      PanelizationSummary panelizationSummary,
      ImageLinks imageLinks,
      String language,
      String previewLink,
      String infoLink,
      String canonicalVolumeLink});

  $ReadingModesCopyWith<$Res> get readingModes;
  $PanelizationSummaryCopyWith<$Res> get panelizationSummary;
  $ImageLinksCopyWith<$Res> get imageLinks;
}

/// @nodoc
class _$ApiBookCopyWithImpl<$Res, $Val extends ApiBook>
    implements $ApiBookCopyWith<$Res> {
  _$ApiBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? authors = null,
    Object? publisher = null,
    Object? publishedDate = null,
    Object? description = null,
    Object? industryIdentifiers = null,
    Object? readingModes = null,
    Object? pageCount = null,
    Object? printType = null,
    Object? categories = null,
    Object? maturityRating = null,
    Object? allowAnonLogging = null,
    Object? contentVersion = null,
    Object? panelizationSummary = null,
    Object? imageLinks = null,
    Object? language = null,
    Object? previewLink = null,
    Object? infoLink = null,
    Object? canonicalVolumeLink = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      publishedDate: null == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      industryIdentifiers: null == industryIdentifiers
          ? _value.industryIdentifiers
          : industryIdentifiers // ignore: cast_nullable_to_non_nullable
              as List<IndustryIdentifiers>,
      readingModes: null == readingModes
          ? _value.readingModes
          : readingModes // ignore: cast_nullable_to_non_nullable
              as ReadingModes,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      printType: null == printType
          ? _value.printType
          : printType // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maturityRating: null == maturityRating
          ? _value.maturityRating
          : maturityRating // ignore: cast_nullable_to_non_nullable
              as String,
      allowAnonLogging: null == allowAnonLogging
          ? _value.allowAnonLogging
          : allowAnonLogging // ignore: cast_nullable_to_non_nullable
              as bool,
      contentVersion: null == contentVersion
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as String,
      panelizationSummary: null == panelizationSummary
          ? _value.panelizationSummary
          : panelizationSummary // ignore: cast_nullable_to_non_nullable
              as PanelizationSummary,
      imageLinks: null == imageLinks
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as ImageLinks,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      previewLink: null == previewLink
          ? _value.previewLink
          : previewLink // ignore: cast_nullable_to_non_nullable
              as String,
      infoLink: null == infoLink
          ? _value.infoLink
          : infoLink // ignore: cast_nullable_to_non_nullable
              as String,
      canonicalVolumeLink: null == canonicalVolumeLink
          ? _value.canonicalVolumeLink
          : canonicalVolumeLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReadingModesCopyWith<$Res> get readingModes {
    return $ReadingModesCopyWith<$Res>(_value.readingModes, (value) {
      return _then(_value.copyWith(readingModes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PanelizationSummaryCopyWith<$Res> get panelizationSummary {
    return $PanelizationSummaryCopyWith<$Res>(_value.panelizationSummary,
        (value) {
      return _then(_value.copyWith(panelizationSummary: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageLinksCopyWith<$Res> get imageLinks {
    return $ImageLinksCopyWith<$Res>(_value.imageLinks, (value) {
      return _then(_value.copyWith(imageLinks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiBookImplCopyWith<$Res> implements $ApiBookCopyWith<$Res> {
  factory _$$ApiBookImplCopyWith(
          _$ApiBookImpl value, $Res Function(_$ApiBookImpl) then) =
      __$$ApiBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      List<String> authors,
      String publisher,
      String publishedDate,
      String description,
      List<IndustryIdentifiers> industryIdentifiers,
      ReadingModes readingModes,
      int pageCount,
      String printType,
      List<String> categories,
      String maturityRating,
      bool allowAnonLogging,
      String contentVersion,
      PanelizationSummary panelizationSummary,
      ImageLinks imageLinks,
      String language,
      String previewLink,
      String infoLink,
      String canonicalVolumeLink});

  @override
  $ReadingModesCopyWith<$Res> get readingModes;
  @override
  $PanelizationSummaryCopyWith<$Res> get panelizationSummary;
  @override
  $ImageLinksCopyWith<$Res> get imageLinks;
}

/// @nodoc
class __$$ApiBookImplCopyWithImpl<$Res>
    extends _$ApiBookCopyWithImpl<$Res, _$ApiBookImpl>
    implements _$$ApiBookImplCopyWith<$Res> {
  __$$ApiBookImplCopyWithImpl(
      _$ApiBookImpl _value, $Res Function(_$ApiBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? authors = null,
    Object? publisher = null,
    Object? publishedDate = null,
    Object? description = null,
    Object? industryIdentifiers = null,
    Object? readingModes = null,
    Object? pageCount = null,
    Object? printType = null,
    Object? categories = null,
    Object? maturityRating = null,
    Object? allowAnonLogging = null,
    Object? contentVersion = null,
    Object? panelizationSummary = null,
    Object? imageLinks = null,
    Object? language = null,
    Object? previewLink = null,
    Object? infoLink = null,
    Object? canonicalVolumeLink = null,
  }) {
    return _then(_$ApiBookImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      publishedDate: null == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      industryIdentifiers: null == industryIdentifiers
          ? _value._industryIdentifiers
          : industryIdentifiers // ignore: cast_nullable_to_non_nullable
              as List<IndustryIdentifiers>,
      readingModes: null == readingModes
          ? _value.readingModes
          : readingModes // ignore: cast_nullable_to_non_nullable
              as ReadingModes,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      printType: null == printType
          ? _value.printType
          : printType // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maturityRating: null == maturityRating
          ? _value.maturityRating
          : maturityRating // ignore: cast_nullable_to_non_nullable
              as String,
      allowAnonLogging: null == allowAnonLogging
          ? _value.allowAnonLogging
          : allowAnonLogging // ignore: cast_nullable_to_non_nullable
              as bool,
      contentVersion: null == contentVersion
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as String,
      panelizationSummary: null == panelizationSummary
          ? _value.panelizationSummary
          : panelizationSummary // ignore: cast_nullable_to_non_nullable
              as PanelizationSummary,
      imageLinks: null == imageLinks
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as ImageLinks,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      previewLink: null == previewLink
          ? _value.previewLink
          : previewLink // ignore: cast_nullable_to_non_nullable
              as String,
      infoLink: null == infoLink
          ? _value.infoLink
          : infoLink // ignore: cast_nullable_to_non_nullable
              as String,
      canonicalVolumeLink: null == canonicalVolumeLink
          ? _value.canonicalVolumeLink
          : canonicalVolumeLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiBookImpl implements _ApiBook {
  const _$ApiBookImpl(
      {required this.title,
      required final List<String> authors,
      required this.publisher,
      required this.publishedDate,
      required this.description,
      required final List<IndustryIdentifiers> industryIdentifiers,
      required this.readingModes,
      required this.pageCount,
      required this.printType,
      required final List<String> categories,
      required this.maturityRating,
      required this.allowAnonLogging,
      required this.contentVersion,
      required this.panelizationSummary,
      required this.imageLinks,
      required this.language,
      required this.previewLink,
      required this.infoLink,
      required this.canonicalVolumeLink})
      : _authors = authors,
        _industryIdentifiers = industryIdentifiers,
        _categories = categories;

  factory _$ApiBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiBookImplFromJson(json);

  @override
  final String title;
  final List<String> _authors;
  @override
  List<String> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  @override
  final String publisher;
  @override
  final String publishedDate;
  @override
  final String description;
  final List<IndustryIdentifiers> _industryIdentifiers;
  @override
  List<IndustryIdentifiers> get industryIdentifiers {
    if (_industryIdentifiers is EqualUnmodifiableListView)
      return _industryIdentifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_industryIdentifiers);
  }

  @override
  final ReadingModes readingModes;
  @override
  final int pageCount;
  @override
  final String printType;
  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String maturityRating;
  @override
  final bool allowAnonLogging;
  @override
  final String contentVersion;
  @override
  final PanelizationSummary panelizationSummary;
  @override
  final ImageLinks imageLinks;
  @override
  final String language;
  @override
  final String previewLink;
  @override
  final String infoLink;
  @override
  final String canonicalVolumeLink;

  @override
  String toString() {
    return 'ApiBook(title: $title, authors: $authors, publisher: $publisher, publishedDate: $publishedDate, description: $description, industryIdentifiers: $industryIdentifiers, readingModes: $readingModes, pageCount: $pageCount, printType: $printType, categories: $categories, maturityRating: $maturityRating, allowAnonLogging: $allowAnonLogging, contentVersion: $contentVersion, panelizationSummary: $panelizationSummary, imageLinks: $imageLinks, language: $language, previewLink: $previewLink, infoLink: $infoLink, canonicalVolumeLink: $canonicalVolumeLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiBookImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._industryIdentifiers, _industryIdentifiers) &&
            (identical(other.readingModes, readingModes) ||
                other.readingModes == readingModes) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.printType, printType) ||
                other.printType == printType) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.maturityRating, maturityRating) ||
                other.maturityRating == maturityRating) &&
            (identical(other.allowAnonLogging, allowAnonLogging) ||
                other.allowAnonLogging == allowAnonLogging) &&
            (identical(other.contentVersion, contentVersion) ||
                other.contentVersion == contentVersion) &&
            (identical(other.panelizationSummary, panelizationSummary) ||
                other.panelizationSummary == panelizationSummary) &&
            (identical(other.imageLinks, imageLinks) ||
                other.imageLinks == imageLinks) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.previewLink, previewLink) ||
                other.previewLink == previewLink) &&
            (identical(other.infoLink, infoLink) ||
                other.infoLink == infoLink) &&
            (identical(other.canonicalVolumeLink, canonicalVolumeLink) ||
                other.canonicalVolumeLink == canonicalVolumeLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        title,
        const DeepCollectionEquality().hash(_authors),
        publisher,
        publishedDate,
        description,
        const DeepCollectionEquality().hash(_industryIdentifiers),
        readingModes,
        pageCount,
        printType,
        const DeepCollectionEquality().hash(_categories),
        maturityRating,
        allowAnonLogging,
        contentVersion,
        panelizationSummary,
        imageLinks,
        language,
        previewLink,
        infoLink,
        canonicalVolumeLink
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiBookImplCopyWith<_$ApiBookImpl> get copyWith =>
      __$$ApiBookImplCopyWithImpl<_$ApiBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiBookImplToJson(
      this,
    );
  }
}

abstract class _ApiBook implements ApiBook {
  const factory _ApiBook(
      {required final String title,
      required final List<String> authors,
      required final String publisher,
      required final String publishedDate,
      required final String description,
      required final List<IndustryIdentifiers> industryIdentifiers,
      required final ReadingModes readingModes,
      required final int pageCount,
      required final String printType,
      required final List<String> categories,
      required final String maturityRating,
      required final bool allowAnonLogging,
      required final String contentVersion,
      required final PanelizationSummary panelizationSummary,
      required final ImageLinks imageLinks,
      required final String language,
      required final String previewLink,
      required final String infoLink,
      required final String canonicalVolumeLink}) = _$ApiBookImpl;

  factory _ApiBook.fromJson(Map<String, dynamic> json) = _$ApiBookImpl.fromJson;

  @override
  String get title;
  @override
  List<String> get authors;
  @override
  String get publisher;
  @override
  String get publishedDate;
  @override
  String get description;
  @override
  List<IndustryIdentifiers> get industryIdentifiers;
  @override
  ReadingModes get readingModes;
  @override
  int get pageCount;
  @override
  String get printType;
  @override
  List<String> get categories;
  @override
  String get maturityRating;
  @override
  bool get allowAnonLogging;
  @override
  String get contentVersion;
  @override
  PanelizationSummary get panelizationSummary;
  @override
  ImageLinks get imageLinks;
  @override
  String get language;
  @override
  String get previewLink;
  @override
  String get infoLink;
  @override
  String get canonicalVolumeLink;
  @override
  @JsonKey(ignore: true)
  _$$ApiBookImplCopyWith<_$ApiBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IndustryIdentifiers _$IndustryIdentifiersFromJson(Map<String, dynamic> json) {
  return _IndustryIdentifiers.fromJson(json);
}

/// @nodoc
mixin _$IndustryIdentifiers {
  String get type => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndustryIdentifiersCopyWith<IndustryIdentifiers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustryIdentifiersCopyWith<$Res> {
  factory $IndustryIdentifiersCopyWith(
          IndustryIdentifiers value, $Res Function(IndustryIdentifiers) then) =
      _$IndustryIdentifiersCopyWithImpl<$Res, IndustryIdentifiers>;
  @useResult
  $Res call({String type, String identifier});
}

/// @nodoc
class _$IndustryIdentifiersCopyWithImpl<$Res, $Val extends IndustryIdentifiers>
    implements $IndustryIdentifiersCopyWith<$Res> {
  _$IndustryIdentifiersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? identifier = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndustryIdentifiersImplCopyWith<$Res>
    implements $IndustryIdentifiersCopyWith<$Res> {
  factory _$$IndustryIdentifiersImplCopyWith(_$IndustryIdentifiersImpl value,
          $Res Function(_$IndustryIdentifiersImpl) then) =
      __$$IndustryIdentifiersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String identifier});
}

/// @nodoc
class __$$IndustryIdentifiersImplCopyWithImpl<$Res>
    extends _$IndustryIdentifiersCopyWithImpl<$Res, _$IndustryIdentifiersImpl>
    implements _$$IndustryIdentifiersImplCopyWith<$Res> {
  __$$IndustryIdentifiersImplCopyWithImpl(_$IndustryIdentifiersImpl _value,
      $Res Function(_$IndustryIdentifiersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? identifier = null,
  }) {
    return _then(_$IndustryIdentifiersImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndustryIdentifiersImpl implements _IndustryIdentifiers {
  const _$IndustryIdentifiersImpl(
      {required this.type, required this.identifier});

  factory _$IndustryIdentifiersImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndustryIdentifiersImplFromJson(json);

  @override
  final String type;
  @override
  final String identifier;

  @override
  String toString() {
    return 'IndustryIdentifiers(type: $type, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndustryIdentifiersImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndustryIdentifiersImplCopyWith<_$IndustryIdentifiersImpl> get copyWith =>
      __$$IndustryIdentifiersImplCopyWithImpl<_$IndustryIdentifiersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndustryIdentifiersImplToJson(
      this,
    );
  }
}

abstract class _IndustryIdentifiers implements IndustryIdentifiers {
  const factory _IndustryIdentifiers(
      {required final String type,
      required final String identifier}) = _$IndustryIdentifiersImpl;

  factory _IndustryIdentifiers.fromJson(Map<String, dynamic> json) =
      _$IndustryIdentifiersImpl.fromJson;

  @override
  String get type;
  @override
  String get identifier;
  @override
  @JsonKey(ignore: true)
  _$$IndustryIdentifiersImplCopyWith<_$IndustryIdentifiersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadingModes _$ReadingModesFromJson(Map<String, dynamic> json) {
  return _ReadingModes.fromJson(json);
}

/// @nodoc
mixin _$ReadingModes {
  bool get text => throw _privateConstructorUsedError;
  bool get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadingModesCopyWith<ReadingModes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingModesCopyWith<$Res> {
  factory $ReadingModesCopyWith(
          ReadingModes value, $Res Function(ReadingModes) then) =
      _$ReadingModesCopyWithImpl<$Res, ReadingModes>;
  @useResult
  $Res call({bool text, bool image});
}

/// @nodoc
class _$ReadingModesCopyWithImpl<$Res, $Val extends ReadingModes>
    implements $ReadingModesCopyWith<$Res> {
  _$ReadingModesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingModesImplCopyWith<$Res>
    implements $ReadingModesCopyWith<$Res> {
  factory _$$ReadingModesImplCopyWith(
          _$ReadingModesImpl value, $Res Function(_$ReadingModesImpl) then) =
      __$$ReadingModesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool text, bool image});
}

/// @nodoc
class __$$ReadingModesImplCopyWithImpl<$Res>
    extends _$ReadingModesCopyWithImpl<$Res, _$ReadingModesImpl>
    implements _$$ReadingModesImplCopyWith<$Res> {
  __$$ReadingModesImplCopyWithImpl(
      _$ReadingModesImpl _value, $Res Function(_$ReadingModesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image = null,
  }) {
    return _then(_$ReadingModesImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingModesImpl implements _ReadingModes {
  const _$ReadingModesImpl({required this.text, required this.image});

  factory _$ReadingModesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingModesImplFromJson(json);

  @override
  final bool text;
  @override
  final bool image;

  @override
  String toString() {
    return 'ReadingModes(text: $text, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingModesImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingModesImplCopyWith<_$ReadingModesImpl> get copyWith =>
      __$$ReadingModesImplCopyWithImpl<_$ReadingModesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingModesImplToJson(
      this,
    );
  }
}

abstract class _ReadingModes implements ReadingModes {
  const factory _ReadingModes(
      {required final bool text,
      required final bool image}) = _$ReadingModesImpl;

  factory _ReadingModes.fromJson(Map<String, dynamic> json) =
      _$ReadingModesImpl.fromJson;

  @override
  bool get text;
  @override
  bool get image;
  @override
  @JsonKey(ignore: true)
  _$$ReadingModesImplCopyWith<_$ReadingModesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PanelizationSummary _$PanelizationSummaryFromJson(Map<String, dynamic> json) {
  return _PanelizationSummary.fromJson(json);
}

/// @nodoc
mixin _$PanelizationSummary {
  bool get containsEpubBubbles => throw _privateConstructorUsedError;
  bool get containsImageBubbles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PanelizationSummaryCopyWith<PanelizationSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PanelizationSummaryCopyWith<$Res> {
  factory $PanelizationSummaryCopyWith(
          PanelizationSummary value, $Res Function(PanelizationSummary) then) =
      _$PanelizationSummaryCopyWithImpl<$Res, PanelizationSummary>;
  @useResult
  $Res call({bool containsEpubBubbles, bool containsImageBubbles});
}

/// @nodoc
class _$PanelizationSummaryCopyWithImpl<$Res, $Val extends PanelizationSummary>
    implements $PanelizationSummaryCopyWith<$Res> {
  _$PanelizationSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? containsEpubBubbles = null,
    Object? containsImageBubbles = null,
  }) {
    return _then(_value.copyWith(
      containsEpubBubbles: null == containsEpubBubbles
          ? _value.containsEpubBubbles
          : containsEpubBubbles // ignore: cast_nullable_to_non_nullable
              as bool,
      containsImageBubbles: null == containsImageBubbles
          ? _value.containsImageBubbles
          : containsImageBubbles // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PanelizationSummaryImplCopyWith<$Res>
    implements $PanelizationSummaryCopyWith<$Res> {
  factory _$$PanelizationSummaryImplCopyWith(_$PanelizationSummaryImpl value,
          $Res Function(_$PanelizationSummaryImpl) then) =
      __$$PanelizationSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool containsEpubBubbles, bool containsImageBubbles});
}

/// @nodoc
class __$$PanelizationSummaryImplCopyWithImpl<$Res>
    extends _$PanelizationSummaryCopyWithImpl<$Res, _$PanelizationSummaryImpl>
    implements _$$PanelizationSummaryImplCopyWith<$Res> {
  __$$PanelizationSummaryImplCopyWithImpl(_$PanelizationSummaryImpl _value,
      $Res Function(_$PanelizationSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? containsEpubBubbles = null,
    Object? containsImageBubbles = null,
  }) {
    return _then(_$PanelizationSummaryImpl(
      containsEpubBubbles: null == containsEpubBubbles
          ? _value.containsEpubBubbles
          : containsEpubBubbles // ignore: cast_nullable_to_non_nullable
              as bool,
      containsImageBubbles: null == containsImageBubbles
          ? _value.containsImageBubbles
          : containsImageBubbles // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PanelizationSummaryImpl implements _PanelizationSummary {
  const _$PanelizationSummaryImpl(
      {required this.containsEpubBubbles, required this.containsImageBubbles});

  factory _$PanelizationSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PanelizationSummaryImplFromJson(json);

  @override
  final bool containsEpubBubbles;
  @override
  final bool containsImageBubbles;

  @override
  String toString() {
    return 'PanelizationSummary(containsEpubBubbles: $containsEpubBubbles, containsImageBubbles: $containsImageBubbles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PanelizationSummaryImpl &&
            (identical(other.containsEpubBubbles, containsEpubBubbles) ||
                other.containsEpubBubbles == containsEpubBubbles) &&
            (identical(other.containsImageBubbles, containsImageBubbles) ||
                other.containsImageBubbles == containsImageBubbles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, containsEpubBubbles, containsImageBubbles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PanelizationSummaryImplCopyWith<_$PanelizationSummaryImpl> get copyWith =>
      __$$PanelizationSummaryImplCopyWithImpl<_$PanelizationSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PanelizationSummaryImplToJson(
      this,
    );
  }
}

abstract class _PanelizationSummary implements PanelizationSummary {
  const factory _PanelizationSummary(
      {required final bool containsEpubBubbles,
      required final bool containsImageBubbles}) = _$PanelizationSummaryImpl;

  factory _PanelizationSummary.fromJson(Map<String, dynamic> json) =
      _$PanelizationSummaryImpl.fromJson;

  @override
  bool get containsEpubBubbles;
  @override
  bool get containsImageBubbles;
  @override
  @JsonKey(ignore: true)
  _$$PanelizationSummaryImplCopyWith<_$PanelizationSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageLinks _$ImageLinksFromJson(Map<String, dynamic> json) {
  return _ImageLinks.fromJson(json);
}

/// @nodoc
mixin _$ImageLinks {
  String get smallThumbnail => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageLinksCopyWith<ImageLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageLinksCopyWith<$Res> {
  factory $ImageLinksCopyWith(
          ImageLinks value, $Res Function(ImageLinks) then) =
      _$ImageLinksCopyWithImpl<$Res, ImageLinks>;
  @useResult
  $Res call({String smallThumbnail, String thumbnail});
}

/// @nodoc
class _$ImageLinksCopyWithImpl<$Res, $Val extends ImageLinks>
    implements $ImageLinksCopyWith<$Res> {
  _$ImageLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallThumbnail = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      smallThumbnail: null == smallThumbnail
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageLinksImplCopyWith<$Res>
    implements $ImageLinksCopyWith<$Res> {
  factory _$$ImageLinksImplCopyWith(
          _$ImageLinksImpl value, $Res Function(_$ImageLinksImpl) then) =
      __$$ImageLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String smallThumbnail, String thumbnail});
}

/// @nodoc
class __$$ImageLinksImplCopyWithImpl<$Res>
    extends _$ImageLinksCopyWithImpl<$Res, _$ImageLinksImpl>
    implements _$$ImageLinksImplCopyWith<$Res> {
  __$$ImageLinksImplCopyWithImpl(
      _$ImageLinksImpl _value, $Res Function(_$ImageLinksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallThumbnail = null,
    Object? thumbnail = null,
  }) {
    return _then(_$ImageLinksImpl(
      smallThumbnail: null == smallThumbnail
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageLinksImpl implements _ImageLinks {
  const _$ImageLinksImpl(
      {required this.smallThumbnail, required this.thumbnail});

  factory _$ImageLinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageLinksImplFromJson(json);

  @override
  final String smallThumbnail;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageLinksImpl &&
            (identical(other.smallThumbnail, smallThumbnail) ||
                other.smallThumbnail == smallThumbnail) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, smallThumbnail, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageLinksImplCopyWith<_$ImageLinksImpl> get copyWith =>
      __$$ImageLinksImplCopyWithImpl<_$ImageLinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageLinksImplToJson(
      this,
    );
  }
}

abstract class _ImageLinks implements ImageLinks {
  const factory _ImageLinks(
      {required final String smallThumbnail,
      required final String thumbnail}) = _$ImageLinksImpl;

  factory _ImageLinks.fromJson(Map<String, dynamic> json) =
      _$ImageLinksImpl.fromJson;

  @override
  String get smallThumbnail;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$ImageLinksImplCopyWith<_$ImageLinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
