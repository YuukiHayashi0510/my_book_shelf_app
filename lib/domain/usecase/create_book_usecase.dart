import '../entity/model/book.dart';

abstract class CreateBookUseCase {
  Future<Book> execute(
    String title,
    String description,
    String isbn,
  );
}