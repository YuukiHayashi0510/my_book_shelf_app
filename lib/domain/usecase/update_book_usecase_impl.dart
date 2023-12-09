import '../entity/model/book.dart';
import '../repository/books_repository.dart';
import 'update_book_usecase.dart';

class UpdateBookUseCaseImpl implements UpdateBookUseCase {
  final BooksRepository _repository;

  UpdateBookUseCaseImpl(this._repository);

  @override
  Future<void> execute(Book book) => _repository.updateBook(book);
}
