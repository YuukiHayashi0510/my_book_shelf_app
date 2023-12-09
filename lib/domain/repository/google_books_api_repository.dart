import '../../infrastructure/entity/google_books_api_entity.dart';

abstract class GoogleBooksApiRepository {
  Future<ApiBookEntity> fetchBookByIsbn(String isbn);
}
