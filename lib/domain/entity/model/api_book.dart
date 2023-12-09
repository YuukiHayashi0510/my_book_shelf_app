import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_book.freezed.dart';
part 'api_book.g.dart';

@freezed
class ApiBook with _$ApiBook {
  const factory ApiBook({
    required String title,
    required List<String> authors,
    required String publisher,
    required String publishedDate,
    required String description,
    required List<IndustryIdentifiers> industryIdentifiers,
    required ReadingModes readingModes,
    required int pageCount,
    required String printType,
    required List<String> categories,
    required String maturityRating,
    required bool allowAnonLogging,
    required String contentVersion,
    required PanelizationSummary panelizationSummary,
    required ImageLinks imageLinks,
    required String language,
    required String previewLink,
    required String infoLink,
    required String canonicalVolumeLink,
  }) = _ApiBook;

  factory ApiBook.fromJson(Map<String, dynamic> json) =>
      _$ApiBookFromJson(json);
}

@freezed
class IndustryIdentifiers with _$IndustryIdentifiers {
  const factory IndustryIdentifiers({
    required String type,
    required String identifier,
  }) = _IndustryIdentifiers;

  factory IndustryIdentifiers.fromJson(Map<String, dynamic> json) =>
      _$IndustryIdentifiersFromJson(json);
}

@freezed
class ReadingModes with _$ReadingModes {
  const factory ReadingModes({
    required bool text,
    required bool image,
  }) = _ReadingModes;

  factory ReadingModes.fromJson(Map<String, dynamic> json) =>
      _$ReadingModesFromJson(json);
}

@freezed
class PanelizationSummary with _$PanelizationSummary {
  const factory PanelizationSummary({
    required bool containsEpubBubbles,
    required bool containsImageBubbles,
  }) = _PanelizationSummary;

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) =>
      _$PanelizationSummaryFromJson(json);
}

@freezed
class ImageLinks with _$ImageLinks {
  const factory ImageLinks({
    required String smallThumbnail,
    required String thumbnail,
  }) = _ImageLinks;

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);
}
