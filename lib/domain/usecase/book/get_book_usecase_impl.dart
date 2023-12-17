import '../../entity/model/book.dart';
import '../../entity/model/book_id.dart';
import '../../repository/books_repository.dart';
import 'get_book_usecase.dart';

class GetBookUseCaseImpl implements GetBookUseCase {
  final BooksRepository _repository;

  GetBookUseCaseImpl(this._repository);

  @override
  Future<Book> execute(BookId id) => _repository.getBook(id);
}
