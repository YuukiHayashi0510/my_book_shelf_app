import 'package:freezed_annotation/freezed_annotation.dart';

import '../enum/progress.dart';
import 'book.dart';
import 'book_id.dart';

part 'book_list.freezed.dart';

@freezed
class BookList with _$BookList {
  const factory BookList({required List<Book> values}) = _BookList;

  const BookList._();

  operator [](int index) => values[index];

  int get length => values.length;

  BookList addBook(Book book) => copyWith(values: [...values, book]);

  BookList updateBook(Book newBook) {
    return copyWith(
        values: values
            .map((book) => newBook.id == book.id ? newBook : book)
            .toList());
  }

  BookList removeBookById(BookId id) =>
      copyWith(values: values.where((book) => book.id != id).toList());

  BookList filterByCompleted() => copyWith(
      values: values.where((book) => book.progress == Progress.done).toList());

  BookList filterByIncomplete() => copyWith(
      values: values.where((book) => book.progress != Progress.done).toList());

  BookList searchByTitle(String title) => copyWith(
      values: values
          .where((book) => book.title.toLowerCase().contains(title))
          .toList());
}
