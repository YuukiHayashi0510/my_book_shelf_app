import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../domain/entity/model/book.dart';
import '../../../../domain/entity/model/book_id.dart';
import '../../../../domain/entity/model/book_list.dart';
import '../../../../domain/provider.dart';
import '../../../../domain/usecase/create_book_usecase.dart';
import '../../../../domain/usecase/delete_book_usecase.dart';
import '../../../../domain/usecase/get_all_books_usecase.dart';
import '../../../state/state.dart';
import 'filter_kind_viewmodel.dart';

final filteredBookListProvider = Provider.autoDispose((ref) {
  var filterKind = ref.watch(filterKindViewModelStateNotifierProvider);
  var bookListState = ref.watch(indexViewModelStateNotifierProvider);

  return bookListState.when(
    init: () => const State.init(),
    success: (bookList) {
      switch (filterKind) {
        case FilterKind.all:
          return State.success(bookList);
        case FilterKind.completed:
          return State.success(bookList.filterByCompleted());
        case FilterKind.incomplete:
          return State.success(bookList.filterByIncomplete());
      }
    },
    loading: () => const State.loading(),
    error: (exception) => State.error(exception),
  );
});

final indexViewModelStateNotifierProvider =
    StateNotifierProvider.autoDispose<IndexViewModel, State<BookList>>((ref) {
  return IndexViewModel(
    ref.read(getAllBooksUseCaseProvider),
    ref.read(createBookUseCaseProvider),
    ref.read(deleteBookUseCaseProvider),
  );
});

class IndexViewModel extends StateNotifier<State<BookList>> {
  final GetAllBooksUseCase _getAllBooksUseCase;
  final CreateBookUseCase _createBookUseCase;
  final DeleteBookUseCase _deleteBookUseCase;

  IndexViewModel(
    this._getAllBooksUseCase,
    this._createBookUseCase,
    this._deleteBookUseCase,
  ) : super(const State.init()) {
    _getAllBooks();
  }

  toYetBook(Book book) {
    var newBook = book.toYet();
    state = State.success(state.data!.updateBook(newBook));
  }

  toDoingBook(Book book) {
    var newBook = book.toDoing();
    state = State.success(state.data!.updateBook(newBook));
  }

  toPendingBook(Book book) {
    var newBook = book.toPending();
    state = State.success(state.data!.updateBook(newBook));
  }

  toDoneBook(Book book) {
    var newBook = book.toDone();
    state = State.success(state.data!.updateBook(newBook));
  }

  _getAllBooks() async {
    try {
      state = const State.loading();
      var bookList = await _getAllBooksUseCase.execute();
      state = State.success(bookList);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  addBook(String title, List<String> authors, String description, String isbn,
      String publishedDate) async {
    var book = await _createBookUseCase.execute(
      title,
      authors,
      description,
      isbn,
      publishedDate,
    );
    state = State.success(state.data!.addBook(book));
  }

  deleteBook(BookId id) async {
    try {
      await _deleteBookUseCase.execute(id);
      state = State.success(state.data!.removeBookById(id));
    } on Exception catch (e) {
      state = State.error(e);
    }
  }
}
