import 'package:flutter_riverpod/flutter_riverpod.dart';

enum SearchColumn { title, description }

class Search {
  Search({required this.searchColumn, required this.value});

  final SearchColumn searchColumn;
  final String value;
}

final searchedViewModelStateNotifierProvider =
    StateNotifierProvider.autoDispose<SearchViewModel, Search>(
        (_) => SearchViewModel());

class SearchViewModel extends StateNotifier<Search> {
  SearchViewModel()
      : super(Search(searchColumn: SearchColumn.title, value: ''));

  searchByTitle(String value) =>
      state = Search(searchColumn: SearchColumn.title, value: value);
  searchByDescription(String value) =>
      state = Search(searchColumn: SearchColumn.description, value: value);
}
