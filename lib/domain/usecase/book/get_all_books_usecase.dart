import '../../entity/model/book_list.dart';

abstract class GetAllBooksUseCase {
  Future<BookList> execute();
}
