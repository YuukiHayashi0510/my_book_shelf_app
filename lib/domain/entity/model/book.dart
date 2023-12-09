import 'package:freezed_annotation/freezed_annotation.dart';

import '../enum/progress.dart';
import 'book_id.dart';

part 'book.freezed.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required BookId id,
    required String title,
    required String subtitle,
    required List<String> authors,
    required String description,
    required String isbn,
    required Progress progress,
    required String publisher,
    required DateTime publishedDate,
    required String thumbnail,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Book;

  const Book._();

  Book toYet() => copyWith(progress: Progress.yet);
  Book toDoing() => copyWith(progress: Progress.doing);
  Book toPending() => copyWith(progress: Progress.pending);
  Book toDone() => copyWith(progress: Progress.done);
}
