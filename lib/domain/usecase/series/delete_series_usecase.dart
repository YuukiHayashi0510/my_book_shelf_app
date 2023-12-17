import '../../entity/model/series_id.dart';

abstract class DeleteSeriesUseCase {
  Future<void> execute(SeriesId id);
}
