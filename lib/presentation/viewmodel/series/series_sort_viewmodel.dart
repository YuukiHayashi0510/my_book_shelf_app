import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Order { asc, desc }

enum SortColumn { createdAt, updatedAt }

class Sort {
  Sort({required this.sortColumn, required this.order});

  final SortColumn sortColumn;
  final Order order;
}

final sortViewModelStateNotifierProvider =
    StateNotifierProvider.autoDispose<SortViewModel, Sort>(
        (_) => SortViewModel());

class SortViewModel extends StateNotifier<Sort> {
  SortViewModel()
      : super(Sort(sortColumn: SortColumn.createdAt, order: Order.desc));

  sortByCreatedAt(Order order) =>
      state = Sort(sortColumn: SortColumn.createdAt, order: order);
  sortByUpdatedAt(Order order) =>
      state = Sort(sortColumn: SortColumn.updatedAt, order: order);
}
