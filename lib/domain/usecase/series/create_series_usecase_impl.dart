import '../../entity/model/series.dart';
import '../../repository/series_repository.dart';
import 'create_series_usecase.dart';

class CreateSeriesUseCaseImpl implements CreateSeriesUseCase {
  final SeriesRepository _repository;

  CreateSeriesUseCaseImpl(this._repository);

  @override
  Future<Series> execute({
    required String title,
    required String description,
  }) {
    return _repository.createSeries(
      title: title,
      description: description,
    );
  }
}
