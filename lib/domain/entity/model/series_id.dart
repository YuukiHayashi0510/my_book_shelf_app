import 'package:freezed_annotation/freezed_annotation.dart';

part 'series_id.freezed.dart';

@freezed
class SeriesId with _$SeriesId {
  const factory SeriesId({required int value}) = _SeriesId;
}
