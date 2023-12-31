import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/viewmodel/series/series_sort_viewmodel.dart';
import 'series.dart';
import 'series_id.dart';

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

  SeriesList removeSeriesById(SeriesId id) =>
      copyWith(values: values.where((series) => series.id != id).toList());

  SeriesList searchByTitle(String title) => copyWith(
      values: values.where((series) => series.title.contains(title)).toList());

  SeriesList searchByDescription(String description) => copyWith(
      values: values
          .where((series) => series.description.contains(description))
          .toList());

  SeriesList sortByCreatedAt(Order order) => copyWith(
      values: values
        ..sort((a, b) => order == Order.desc
            ? b.createdAt.compareTo(a.createdAt)
            : a.createdAt.compareTo(b.createdAt)));

  SeriesList sortByUpdatedAt(Order order) => copyWith(
      values: values
        ..sort((a, b) => order == Order.desc
            ? b.updatedAt.compareTo(a.updatedAt)
            : a.updatedAt.compareTo(b.updatedAt)));
}
