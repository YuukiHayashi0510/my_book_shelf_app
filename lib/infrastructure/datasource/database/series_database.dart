import '../../entity/series_entity.dart';

abstract class SeriesDatabase {
  Future<SeriesListEntity> getAllSeries();
  Future<SeriesEntity> getSeries(int id);
  Future<SeriesEntity> insertSeries(SeriesEntity series);
  Future<void> updateSeries(SeriesEntity series);
  Future<void> deleteSeries(int id);
}
