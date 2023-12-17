import '../../domain/entity/model/series.dart';
import '../../domain/entity/model/series_id.dart';
import '../../domain/entity/model/series_list.dart';
import '../../domain/repository/series_repository.dart';
import '../datasource/database/series_database.dart';
import '../mapper/series_list_mapper.dart';
import '../mapper/series_mapper.dart';

class SeriesRepositoryImpl implements SeriesRepository {
  final SeriesDatabase database;

  const SeriesRepositoryImpl(this.database);

  @override
  Future<SeriesList> getAllSeries() async {
    var entityList = await database.getAllSeries();
    return SeriesListMapper.transformToModel(entityList);
  }

  @override
  Future<Series> getSeries(SeriesId id) async {
    var entity = await database.getSeries(id.value);
    return SeriesMapper.transformToModel(entity);
  }

  @override
  Future<Series> createSeries({
    required String title,
    required String description,
  }) async {
    var entity = await database.insertSeries(
      SeriesMapper.transformToNewEntityMap(
        title: title,
        description: description,
      ),
    );
    return SeriesMapper.transformToModel(entity);
  }

  @override
  Future<void> updateSeries(Series series) async {
    await database.updateSeries(
      SeriesMapper.transformToMap(series),
    );
  }

  @override
  Future<void> deleteSeries(SeriesId id) async {
    await database.deleteSeries(id.value);
  }
}
