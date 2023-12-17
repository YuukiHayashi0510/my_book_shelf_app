import '../../entity/books_entity.dart';

abstract class BooksDatabase {
  Future<BookListEntity> getAllBooks();
  Future<BookEntity> getBook(int id);
  Future<BookEntity> insertBook(BookEntity book);
  Future<void> updateBook(BookEntity book);
  Future<void> deleteBook(int id);
}
