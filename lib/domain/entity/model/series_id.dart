import 'package:freezed_annotation/freezed_annotation.dart';

part 'series_id.freezed.dart';
part 'series_id.g.dart';

@freezed
class SeriesId with _$SeriesId {
  const factory SeriesId({required int value}) = _SeriesId;

  factory SeriesId.fromJson(Map<String, dynamic> json) =>
      _$SeriesIdFromJson(json);
}
