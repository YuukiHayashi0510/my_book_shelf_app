import '../../domain/entity/enum/progress.dart';
import '../../domain/entity/model/book.dart';
import '../../domain/entity/model/book_id.dart';
import '../entity/books_entity.dart';

class BookMapper {
  static Book transformToModel(BookEntity entity) {
    return Book(
      id: BookId(value: entity['id']),
      title: entity['title'],
      subtitle: entity['subtitle'],
      authors: entity['authors'].toString().split(','),
      description: entity['description'],
      isbn: entity['isbn'],
      progress: Progress.fromValue(entity['progress']),
      publisher: entity['publisher'],
      publishedDate: DateTime.parse(entity['published_date']),
      thumbnail: entity['thumbnail'],
      createdAt: DateTime.parse(entity['created_at']),
      updatedAt: DateTime.parse(entity['updated_at']),
    );
  }

  static BookEntity transformToMap(Book model) {
    return {
      'id': model.id.value,
      'title': model.title,
      'subtitle': model.subtitle,
      'authors': model.authors.join(','),
      'description': model.description,
      'isbn': model.isbn,
      'progress': model.progress.value,
      'publisher': model.publisher,
      'published_date': model.publishedDate.toIso8601String(),
      'thumbnail': model.thumbnail,
      'created_at': model.createdAt.toIso8601String(),
      'updated_at': model.updatedAt.toIso8601String(),
    };
  }

  static BookEntity transformToNewEntityMap({
    required String title,
    required String subtitle,
    required List<String> authors,
    required String description,
    required String isbn,
    required String publisher,
    required String publishedDate,
    required String thumbnail,
  }) {
    return {
      'id': null,
      'title': title,
      'subtitle': subtitle,
      'authors': authors.join(','),
      'description': description,
      'isbn': isbn,
      'publisher': publisher,
      'published_date': publishedDate,
      'thumbnail': thumbnail,
    };
  }
}
