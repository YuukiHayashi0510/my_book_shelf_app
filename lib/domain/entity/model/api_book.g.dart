// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiBookImpl _$$ApiBookImplFromJson(Map<String, dynamic> json) =>
    _$ApiBookImpl(
      title: json['title'] as String,
      authors:
          (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
      publisher: json['publisher'] as String,
      publishedDate: json['publishedDate'] as String,
      description: json['description'] as String,
      industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>)
          .map((e) => IndustryIdentifiers.fromJson(e as Map<String, dynamic>))
          .toList(),
      readingModes:
          ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>),
      pageCount: json['pageCount'] as int,
      printType: json['printType'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      maturityRating: json['maturityRating'] as String,
      allowAnonLogging: json['allowAnonLogging'] as bool,
      contentVersion: json['contentVersion'] as String,
      panelizationSummary: PanelizationSummary.fromJson(
          json['panelizationSummary'] as Map<String, dynamic>),
      imageLinks:
          ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
      language: json['language'] as String,
      previewLink: json['previewLink'] as String,
      infoLink: json['infoLink'] as String,
      canonicalVolumeLink: json['canonicalVolumeLink'] as String,
    );

Map<String, dynamic> _$$ApiBookImplToJson(_$ApiBookImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'publishedDate': instance.publishedDate,
      'description': instance.description,
      'industryIdentifiers': instance.industryIdentifiers,
      'readingModes': instance.readingModes,
      'pageCount': instance.pageCount,
      'printType': instance.printType,
      'categories': instance.categories,
      'maturityRating': instance.maturityRating,
      'allowAnonLogging': instance.allowAnonLogging,
      'contentVersion': instance.contentVersion,
      'panelizationSummary': instance.panelizationSummary,
      'imageLinks': instance.imageLinks,
      'language': instance.language,
      'previewLink': instance.previewLink,
      'infoLink': instance.infoLink,
      'canonicalVolumeLink': instance.canonicalVolumeLink,
    };

_$IndustryIdentifiersImpl _$$IndustryIdentifiersImplFromJson(
        Map<String, dynamic> json) =>
    _$IndustryIdentifiersImpl(
      type: json['type'] as String,
      identifier: json['identifier'] as String,
    );

Map<String, dynamic> _$$IndustryIdentifiersImplToJson(
        _$IndustryIdentifiersImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'identifier': instance.identifier,
    };

_$ReadingModesImpl _$$ReadingModesImplFromJson(Map<String, dynamic> json) =>
    _$ReadingModesImpl(
      text: json['text'] as bool,
      image: json['image'] as bool,
    );

Map<String, dynamic> _$$ReadingModesImplToJson(_$ReadingModesImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'image': instance.image,
    };

_$PanelizationSummaryImpl _$$PanelizationSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$PanelizationSummaryImpl(
      containsEpubBubbles: json['containsEpubBubbles'] as bool,
      containsImageBubbles: json['containsImageBubbles'] as bool,
    );

Map<String, dynamic> _$$PanelizationSummaryImplToJson(
        _$PanelizationSummaryImpl instance) =>
    <String, dynamic>{
      'containsEpubBubbles': instance.containsEpubBubbles,
      'containsImageBubbles': instance.containsImageBubbles,
    };

_$ImageLinksImpl _$$ImageLinksImplFromJson(Map<String, dynamic> json) =>
    _$ImageLinksImpl(
      smallThumbnail: json['smallThumbnail'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$$ImageLinksImplToJson(_$ImageLinksImpl instance) =>
    <String, dynamic>{
      'smallThumbnail': instance.smallThumbnail,
      'thumbnail': instance.thumbnail,
    };
