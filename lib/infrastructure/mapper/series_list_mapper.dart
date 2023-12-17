import '../../domain/entity/model/series_list.dart';
import '../entity/series_entity.dart';
import 'series_mapper.dart';

class SeriesListMapper {
  static SeriesList transformToModel(SeriesListEntity entities) {
    var values = entities
        .map((entity) => SeriesMapper.transformToModel(entity))
        .toList();
    return SeriesList(values: values);
  }

  static SeriesListEntity transformToMap(SeriesList model) =>
      model.values.map((value) => SeriesMapper.transformToMap(value)).toList();
}
