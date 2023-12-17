import '../../entity/model/series_id.dart';
import '../../repository/series_repository.dart';
import 'delete_series_usecase.dart';

class DeleteSeriesUseCaseImpl implements DeleteSeriesUseCase {
  final SeriesRepository _repository;

  DeleteSeriesUseCaseImpl(this._repository);

  @override
  Future<void> execute(SeriesId id) {
    return _repository.deleteSeries(id);
  }
}
