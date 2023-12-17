import '../../entity/model/series_list.dart';

abstract class GetAllSeriesUseCase {
  Future<SeriesList> execute();
}
