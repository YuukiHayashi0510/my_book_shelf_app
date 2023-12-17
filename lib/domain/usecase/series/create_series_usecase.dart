import '../../entity/model/series.dart';

abstract class CreateSeriesUsecase {
  Future<Series> execute({
    required String title,
    required String description,
  });
}
