import '../entity/model/book.dart';
import '../entity/model/book_id.dart';

abstract class GetBookUseCase {
  Future<Book> execute(BookId id);
}
