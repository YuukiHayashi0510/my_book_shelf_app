import '../entity/model/book.dart';
import '../repository/books_repository.dart';
import 'create_book_usecase.dart';

class CreateBookUseCaseImpl implements CreateBookUseCase {
  final BooksRepository _repository;

  CreateBookUseCaseImpl(this._repository);

  @override
  Future<Book> execute(String title, List<String> authors, String description,
          String isbn, String publishedDate) =>
      _repository.createBook(title, authors, description, isbn, publishedDate);
}
