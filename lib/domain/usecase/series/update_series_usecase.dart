import '../../entity/model/series.dart';

abstract class UpdateSeriesUseCase {
  Future<void> execute(Series series);
}
