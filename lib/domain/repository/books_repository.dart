import '../entity/model/book.dart';
import '../entity/model/book_id.dart';
import '../entity/model/book_list.dart';

abstract class BooksRepository {
  Future<BookList> getAllBooks();
  Future<Book> createBook({
    required String title,
    required String subtitle,
    required List<String> authors,
    required String description,
    required String isbn,
    required String publisher,
    required String publishedDate,
    required String thumbnail,
  });
  Future<void> updateBook(Book book);
  Future<void> deleteBook(BookId id);
}
