import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repository/books_repository.dart';
import 'datasource/database/books_database.dart';
import 'datasource/database/books_database_impl.dart';
import 'repository/books_repository_impl.dart';

final booksDatabaseProvider =
    Provider<BooksDatabase>((_) => BooksDatabaseImpl());
final booksRepositoryProvider = Provider<BooksRepository>(
    (ref) => BooksRepositoryImpl(ref.watch(booksDatabaseProvider)));
