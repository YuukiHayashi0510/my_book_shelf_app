import '../../entity/model/series_list.dart';
import '../../repository/series_repository.dart';
import 'get_all_series_usecase.dart';

class GetAllSeriesUseCaseImpl implements GetAllSeriesUseCase {
  final SeriesRepository _repository;

  GetAllSeriesUseCaseImpl(this._repository);

  @override
  Future<SeriesList> execute() {
    return _repository.getAllSeries();
  }
}
