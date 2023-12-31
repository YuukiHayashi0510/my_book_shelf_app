import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../domain/entity/model/series_id.dart';
import '../../../../../domain/entity/model/series_list.dart';
import '../../../../../domain/provider.dart';
import '../../../../../domain/usecase/series/create_series_usecase.dart';
import '../../../../../domain/usecase/series/delete_series_usecase.dart';
import '../../../../../domain/usecase/series/get_all_series_usecase.dart';
import '../../../../state/state.dart';
import 'series_search_viewmodel.dart';
import 'sort_viewmodel.dart';

// UIではソート済みの方を渡す
final sortedSeriesListProvider = Provider.autoDispose<State<SeriesList>>((ref) {
  var sort = ref.watch(sortViewModelStateNotifierProvider);
  var seriesListState = ref.watch(searchedSeriesListProvider);

  return seriesListState.when(
    init: () => const State.init(),
    success: (seriesList) {
      switch (sort.sortColumn) {
        case SortColumn.createdAt:
          return State.success(seriesList.sortByCreatedAt(sort.order));
        case SortColumn.updatedAt:
          return State.success(seriesList.sortByUpdatedAt(sort.order));
      }
    },
    loading: () => const State.loading(),
    error: (exception) => State.error(exception),
  );
});

final searchedSeriesListProvider =
    Provider.autoDispose<State<SeriesList>>((ref) {
  var search = ref.watch(seriesSearchedViewModelStateNotifierProvider);
  var seriesListState = ref.watch(seriesIndexViewModelStateNotifierProvider);

  return seriesListState.when(
    init: () => const State.init(),
    success: (seriesList) {
      switch (search.searchColumn) {
        case SeriesSearchColumn.none:
          return State.success(seriesList);
        case SeriesSearchColumn.title:
          return State.success(seriesList.searchByTitle(search.value));
        case SeriesSearchColumn.description:
          return State.success(seriesList.searchByDescription(search.value));
      }
    },
    loading: () => const State.loading(),
    error: (exception) => State.error(exception),
  );
});

final seriesIndexViewModelStateNotifierProvider =
    StateNotifierProvider.autoDispose<IndexViewModel, State<SeriesList>>((ref) {
  return IndexViewModel(
    ref.read(getAllSeriesUseCaseProvider),
    ref.read(createSeriesUseCaseProvider),
    ref.read(deleteSeriesUseCaseProvider),
  );
});

class IndexViewModel extends StateNotifier<State<SeriesList>> {
  final GetAllSeriesUseCase _getAllSeriesUseCase;
  final CreateSeriesUseCase _createSeriesUseCase;
  final DeleteSeriesUseCase _deleteSeriesUseCase;

  IndexViewModel(
    this._getAllSeriesUseCase,
    this._createSeriesUseCase,
    this._deleteSeriesUseCase,
  ) : super(const State.init()) {
    _getAllSeries();
  }

  _getAllSeries() async {
    state = const State.loading();
    try {
      var seriesList = await _getAllSeriesUseCase.execute();
      state = State.success(seriesList);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  addSeries({
    required String title,
    required String description,
  }) async {
    state = const State.loading();
    try {
      var series = await _createSeriesUseCase.execute(
        title: title,
        description: description,
      );
      state = State.success(state.data!.addSeries(series));
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  deleteSeries(SeriesId id) async {
    try {
      await _deleteSeriesUseCase.execute(id);
      state = State.success(state.data!.removeSeriesById(id));
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  resetSeries() => _getAllSeries();
}
