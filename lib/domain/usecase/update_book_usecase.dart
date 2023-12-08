import '../entity/model/book.dart';

abstract class UpdateBookUseCase {
  Future<void> execute(Book book);
}
