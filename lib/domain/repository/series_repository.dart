import '../entity/model/series.dart';
import '../entity/model/series_id.dart';
import '../entity/model/series_list.dart';

abstract class SeriesRepository {
  Future<SeriesList> getAllSeries();
  Future<Series> getSeries(SeriesId id);
  Future<Series> createSeries({
    required String title,
    required String description,
  });
  Future<void> updateSeries(Series series);
  Future<void> deleteSeries(SeriesId id);
}
