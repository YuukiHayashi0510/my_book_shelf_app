import '../entity/model/book.dart';
import '../entity/model/book_id.dart';
import '../entity/model/book_list.dart';

abstract class BooksRepository {
  Future<BookList> getAllBooks();
  Future<Book> createBook(
    String title,
    List<String> authors,
    String description,
    String isbn,
    String publishedDate,
  );
  Future<void> updateBook(Book book);
  Future<void> deleteBook(BookId id);
}
