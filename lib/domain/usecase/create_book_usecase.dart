import '../entity/model/book.dart';

abstract class CreateBookUseCase {
  Future<Book> execute(
    String title,
    List<String> authors,
    String description,
    String isbn,
    String publishedDate,
  );
}
