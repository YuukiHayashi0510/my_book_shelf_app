import 'package:flutter_riverpod/flutter_riverpod.dart';

enum SeriesSearchColumn { none, title, description }

class SeriesSearch {
  SeriesSearch({required this.searchColumn, required this.value});

  final SeriesSearchColumn searchColumn;
  final String value;
}

final seriesSearchedViewModelStateNotifierProvider =
    StateNotifierProvider.autoDispose<SeriesSearchViewModel, SeriesSearch>(
        (_) => SeriesSearchViewModel());

class SeriesSearchViewModel extends StateNotifier<SeriesSearch> {
  SeriesSearchViewModel()
      : super(SeriesSearch(searchColumn: SeriesSearchColumn.none, value: ''));

  searchByTitle(String value) => state =
      SeriesSearch(searchColumn: SeriesSearchColumn.title, value: value);
  searchByDescription(String value) => state =
      SeriesSearch(searchColumn: SeriesSearchColumn.description, value: value);
}
