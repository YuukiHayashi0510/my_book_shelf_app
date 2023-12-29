import 'package:freezed_annotation/freezed_annotation.dart';

import 'book.dart';
import 'series_id.dart';

part 'series.freezed.dart';
part 'series.g.dart';

@freezed
class Series with _$Series {
  const factory Series({
    required SeriesId id,
    required String title,
    required String description,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default([]) List<Book> books,
  }) = _Series;

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);
}
