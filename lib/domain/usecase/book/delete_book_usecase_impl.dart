import '../../entity/model/book_id.dart';
import '../../repository/books_repository.dart';
import 'delete_book_usecase.dart';

class DeleteBookUseCaseImpl implements DeleteBookUseCase {
  final BooksRepository _repository;

  DeleteBookUseCaseImpl(this._repository);

  @override
  Future<void> execute(BookId id) => _repository.deleteBook(id);
}
