import 'package:flutter_riverpod/flutter_riverpod.dart';

enum BookFilterKind { all, completed, incomplete }

final filterKindViewModelStateNotifierProvider =
    StateNotifierProvider.autoDispose<BookFilterKindViewModel, BookFilterKind>(
        (_) => BookFilterKindViewModel());

class BookFilterKindViewModel extends StateNotifier<BookFilterKind> {
  BookFilterKindViewModel() : super(BookFilterKind.all);

  filterByAll() => state = BookFilterKind.all;

  filterByCompleted() => state = BookFilterKind.completed;

  filterByIncomplete() => state = BookFilterKind.incomplete;

  bool isFilteredByAll() => state == BookFilterKind.all;

  bool isFilteredByCompleted() => state == BookFilterKind.completed;

  bool isFilteredByIncomplete() => state == BookFilterKind.incomplete;
}
