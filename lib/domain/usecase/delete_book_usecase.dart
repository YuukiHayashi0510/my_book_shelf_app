import '../entity/model/book_id.dart';

abstract class DeleteBookUseCase {
  Future<void> execute(BookId id);
}
