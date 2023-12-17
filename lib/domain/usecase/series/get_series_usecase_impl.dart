import '../../entity/model/series.dart';
import '../../entity/model/series_id.dart';
import '../../repository/series_repository.dart';
import 'get_series_usecase.dart';

class GetSeriesUseCaseImpl implements GetSeriesUseCase {
  final SeriesRepository _repository;

  GetSeriesUseCaseImpl(this._repository);

  @override
  Future<Series> execute(SeriesId id) {
    return _repository.getSeries(id);
  }
}
