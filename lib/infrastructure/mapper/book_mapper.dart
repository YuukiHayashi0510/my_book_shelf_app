import '../../domain/entity/enum/progress.dart';
import '../../domain/entity/model/book.dart';
import '../../domain/entity/model/book_id.dart';
import '../entity/books_entity.dart';

class BookMapper {
  static Book transformToModel(BookEntity entity) {
    return Book(
      id: BookId(value: entity['id']),
      title: entity['title'],
      description: entity['description'],
      isbn: entity['isbn'],
      progress: Progress.fromValue(entity['progress']),
      createdAt: DateTime.parse(entity['created_at']),
      updatedAt: DateTime.parse(entity['updated_at']),
    );
  }

  static BookEntity transformToMap(Book model) {
    return {
      'id': model.id.value,
      'title': model.title,
      'description': model.description,
      'isbn': model.isbn,
      'progress': model.progress.value,
      'created_at': model.createdAt.toIso8601String(),
      'updated_at': model.updatedAt.toIso8601String(),
    };
  }

  static BookEntity transformToNewEntityMap(
    String title,
    String description,
    String isbn,
  ) {
    return {
      'id': null,
      'title': title,
      'description': description,
      'isbn': isbn,
    };
  }
}
