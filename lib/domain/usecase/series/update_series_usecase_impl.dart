import '../../entity/model/series.dart';
import '../../repository/series_repository.dart';
import 'update_series_usecase.dart';

class UpdateSeriesUseCaseImpl implements UpdateSeriesUseCase {
  final SeriesRepository _repository;

  UpdateSeriesUseCaseImpl(this._repository);

  @override
  Future<void> execute(Series series) {
    return _repository.updateSeries(series);
  }
}
