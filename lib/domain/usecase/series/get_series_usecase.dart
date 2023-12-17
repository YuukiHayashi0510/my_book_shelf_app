import '../../entity/model/series.dart';
import '../../entity/model/series_id.dart';

abstract class GetSeriesUseCase {
  Future<Series> execute(SeriesId id);
}
