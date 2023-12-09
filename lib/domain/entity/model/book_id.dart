import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_id.freezed.dart';

@freezed
class BookId with _$BookId {
  const factory BookId({required int value}) = _BookId;
}
