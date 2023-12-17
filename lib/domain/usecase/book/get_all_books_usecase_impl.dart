import '../../entity/model/book_list.dart';
import '../../repository/books_repository.dart';
import 'get_all_books_usecase.dart';

class GetAllBooksUseCaseImpl implements GetAllBooksUseCase {
  final BooksRepository _repository;

  GetAllBooksUseCaseImpl(this._repository);

  @override
  Future<BookList> execute() => _repository.getAllBooks();
}
