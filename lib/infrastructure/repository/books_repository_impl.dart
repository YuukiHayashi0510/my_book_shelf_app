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
  Future<Book> getBook(BookId id) async {
    var entity = await database.getBook(id.value);
    return BookMapper.transformToModel(entity);
  }

  @override
  Future<Book> createBook({
    required String title,
    required String subtitle,
    required List<String> authors,
    required String description,
    required String isbn,
    required String publisher,
    required String publishedDate,
    required String thumbnail,
  }) async {
    var entity = await database.insertBook(
      BookMapper.transformToNewEntityMap(
        title: title,
        subtitle: subtitle,
        authors: authors,
        description: description,
        isbn: isbn,
        publisher: publisher,
        publishedDate: publishedDate,
        thumbnail: thumbnail,
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
