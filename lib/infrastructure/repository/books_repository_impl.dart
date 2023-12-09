import '../../domain/entity/model/book.dart';
import '../../domain/entity/model/book_id.dart';
import '../../domain/entity/model/book_list.dart';
import '../../domain/repository/books_repository.dart';
import '../datasource/database/books_database.dart';
import '../mapper/book_list_mapper.dart';
import '../mapper/book_mapper.dart';

class BooksRepositoryImpl implements BooksRepository {
  final BooksDatabase database;

  const BooksRepositoryImpl(this.database);

  @override
  Future<BookList> getAllBooks() async {
    var entityList = await database.getAllBooks();
    return BookListMapper.transformToModel(entityList);
  }

  @override
  Future<Book> createBook(
    String title,
    List<String> authors,
    String description,
    String isbn,
    String publishedDate,
  ) async {
    var entity = await database.insertBook(
      BookMapper.transformToNewEntityMap(
        title,
        authors,
        description,
        isbn,
        publishedDate,
      ),
    );
    return BookMapper.transformToModel(entity);
  }

  @override
  Future<void> updateBook(Book book) async {
    await database.updateBook(
      BookMapper.transformToMap(book),
    );
  }

  @override
  Future<void> deleteBook(BookId id) async {
    await database.deleteBook(id.value);
  }
}
