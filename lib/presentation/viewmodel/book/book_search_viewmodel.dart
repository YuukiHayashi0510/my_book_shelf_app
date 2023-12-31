import 'package:flutter_riverpod/flutter_riverpod.dart';

enum BookSearchColumn { none, title }

class BookSearch {
  BookSearch({required this.searchColumn, required this.value});

  final BookSearchColumn searchColumn;
  final String value;
}

final bookSearchedViewModelStateNotifierProvider =
    StateNotifierProvider.autoDispose<BookSearchViewModel, BookSearch>(
        (_) => BookSearchViewModel());

class BookSearchViewModel extends StateNotifier<BookSearch> {
  BookSearchViewModel()
      : super(BookSearch(searchColumn: BookSearchColumn.none, value: ''));

  searchByTitle(String value) =>
      state = BookSearch(searchColumn: BookSearchColumn.title, value: value);
}
