import '../entity/model/api_book.dart';

abstract class GoogleBooksApiRepository {
  Future<ApiBook> fetchBookByIsbn(String isbn);
}
