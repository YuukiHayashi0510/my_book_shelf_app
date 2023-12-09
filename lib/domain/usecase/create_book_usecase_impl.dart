import '../entity/model/book.dart';
import '../repository/books_repository.dart';
import 'create_book_usecase.dart';

class CreateBookUseCaseImpl implements CreateBookUseCase {
  final BooksRepository _repository;

  CreateBookUseCaseImpl(this._repository);

  @override
  Future<Book> execute({
    required String title,
    required String subtitle,
    required List<String> authors,
    required String description,
    required String isbn,
    required String publisher,
    required String publishedDate,
    required String thumbnail,
  }) =>
      _repository.createBook(
        title: title,
        subtitle: subtitle,
        authors: authors,
        description: description,
        isbn: isbn,
        publisher: publisher,
        publishedDate: publishedDate,
        thumbnail: thumbnail,
      );
}
