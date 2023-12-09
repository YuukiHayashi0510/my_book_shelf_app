import '../../domain/entity/enum/progress.dart';
import '../../domain/entity/model/book.dart';
import '../../domain/entity/model/book_id.dart';
import '../entity/books_entity.dart';

class BookMapper {
  static Book transformToModel(BookEntity entity) {
    return Book(
      id: BookId(value: entity['id']),
      title: entity['title'],
      authors: entity['authors'].toString().split(','),
      description: entity['description'],
      isbn: entity['isbn'],
      progress: Progress.fromValue(entity['progress']),
      publishedDate: DateTime.parse(entity['published_date']),
      createdAt: DateTime.parse(entity['created_at']),
      updatedAt: DateTime.parse(entity['updated_at']),
    );
  }

  static BookEntity transformToMap(Book model) {
    return {
      'id': model.id.value,
      'title': model.title,
      'authors': model.authors.join(','),
      'description': model.description,
      'isbn': model.isbn,
      'progress': model.progress.value,
      'published_date': model.publishedDate.toIso8601String(),
      'created_at': model.createdAt.toIso8601String(),
      'updated_at': model.updatedAt.toIso8601String(),
    };
  }

  static BookEntity transformToNewEntityMap(
    String title,
    List<String> authors,
    String description,
    String isbn,
    String publishedDate,
  ) {
    return {
      'id': null,
      'title': title,
      'authors': authors.join(','),
      'description': description,
      'isbn': isbn,
      'published_date': publishedDate,
    };
  }
}
