import '../../entity/model/book.dart';

abstract class CreateBookUseCase {
  Future<Book> execute({
    required String title,
    required String subtitle,
    required List<String> authors,
    required String description,
    required String isbn,
    required String publisher,
    required String publishedDate,
    required String thumbnail,
  });
}
