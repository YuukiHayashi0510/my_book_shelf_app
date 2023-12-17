import '../../domain/entity/model/series.dart';
import '../entity/series_entity.dart';

class SeriesMapper {
  static Series transformToModel(SeriesEntity entity) {
    return Series(
      id: entity['id'],
      title: entity['title'],
      description: entity['description'],
      books: entity['books'],
      createdAt: DateTime.parse(entity['created_at']),
      updatedAt: DateTime.parse(entity['updated_at']),
    );
  }

  static SeriesEntity transformToMap(Series model) {
    return {
      'id': model.id,
      'title': model.title,
      'description': model.description,
      'books': model.books,
      'created_at': model.createdAt.toIso8601String(),
      'updated_at': model.updatedAt.toIso8601String(),
    };
  }

  static SeriesEntity transformToNewEntityMap({
    required String title,
    required String description,
  }) {
    return {
      'id': null,
      'title': '',
      'description': '',
      'books': [],
      'created_at': DateTime.now().toIso8601String(),
      'updated_at': DateTime.now().toIso8601String(),
    };
  }
}
