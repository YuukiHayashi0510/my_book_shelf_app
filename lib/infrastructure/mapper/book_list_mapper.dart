import '../../domain/entity/model/book_list.dart';
import '../entity/books_entity.dart';
import 'book_mapper.dart';

class BookListMapper {
  static BookList transformToModel(BookListEntity entities) {
    var values =
        entities.map((entity) => BookMapper.transformToModel(entity)).toList();
    return BookList(values: values);
  }

  static BookListEntity transformToMap(BookList model) =>
      model.values.map((value) => BookMapper.transformToMap(value)).toList();
}
