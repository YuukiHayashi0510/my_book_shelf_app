import '../entity/model/book.dart';
import '../repository/books_repository.dart';
import 'create_book_usecase.dart';

class CreateBookUseCaseImpl implements CreateBookUseCase {
  final BooksRepository _repository;

  CreateBookUseCaseImpl(this._repository);

  @override
  Future<Book> execute(String title, String description, String isbn) =>
      _repository.createBook(title, description, isbn);
}
