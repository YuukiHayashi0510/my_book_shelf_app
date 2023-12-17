import 'package:freezed_annotation/freezed_annotation.dart';

import 'series.dart';

part 'series_list.freezed.dart';

@freezed
class SeriesList with _$SeriesList {
  const factory SeriesList({
    required List<Series> values,
  }) = _SeriesList;

  const SeriesList._();

  operator [](int index) => values[index];

  int get length => values.length;

  SeriesList addSeries(Series series) => copyWith(values: [...values, series]);

  SeriesList updateSeries(Series newSeries) {
    return copyWith(
        values: values
            .map((series) => newSeries.id == series.id ? newSeries : series)
            .toList());
  }

  SeriesList removeSeriesById(String id) =>
      copyWith(values: values.where((series) => series.id != id).toList());

  SeriesList searchByTitle(String title) => copyWith(
      values: values.where((series) => series.title.contains(title)).toList());
}
