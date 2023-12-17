import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repository/books_repository.dart';
import '../domain/repository/google_books_api_repository.dart';
import '../domain/repository/series_repository.dart';
import 'datasource/database/books_database.dart';
import 'datasource/database/books_database_impl.dart';
import 'datasource/database/series_database.dart';
import 'datasource/database/series_database_impl.dart';
import 'repository/books_repository_impl.dart';
import 'repository/google_books_api_repository_impl.dart';
import 'repository/series_repository_impl.dart';

final booksDatabaseProvider =
    Provider<BooksDatabase>((_) => BooksDatabaseImpl());
final booksRepositoryProvider = Provider<BooksRepository>(
    (ref) => BooksRepositoryImpl(ref.watch(booksDatabaseProvider)));
final seriesDatabaseProvider =
    Provider<SeriesDatabase>((_) => SeriesDatabaseImpl());
final seriesRepositoryProvider = Provider<SeriesRepository>(
    (ref) => SeriesRepositoryImpl(ref.watch(seriesDatabaseProvider)));

final googleBooksApiRepositoryProvider =
    Provider<GoogleBooksApiRepository>((ref) => GoogleBooksApiRepositoryImpl());
