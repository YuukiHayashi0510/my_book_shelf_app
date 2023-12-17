import '../../entity/model/series.dart';

abstract class CreateSeriesUseCase {
  Future<Series> execute({
    required String title,
    required String description,
  });
}
