// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      id: BookId.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      authors:
          (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
      isbn: json['isbn'] as String,
      progress: $enumDecode(_$ProgressEnumMap, json['progress']),
      publisher: json['publisher'] as String,
      publishedDate: DateTime.parse(json['publishedDate'] as String),
      thumbnail: json['thumbnail'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'authors': instance.authors,
      'description': instance.description,
      'isbn': instance.isbn,
      'progress': _$ProgressEnumMap[instance.progress]!,
      'publisher': instance.publisher,
      'publishedDate': instance.publishedDate.toIso8601String(),
      'thumbnail': instance.thumbnail,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$ProgressEnumMap = {
  Progress.yet: 'yet',
  Progress.doing: 'doing',
  Progress.pending: 'pending',
  Progress.done: 'done',
};
