import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../infrastructure/provider.dart';
import 'usecase/book/create_book_usecase.dart';
import 'usecase/book/create_book_usecase_impl.dart';
import 'usecase/book/delete_book_usecase.dart';
import 'usecase/book/delete_book_usecase_impl.dart';
import 'usecase/book/get_all_books_usecase.dart';
import 'usecase/book/get_all_books_usecase_impl.dart';
import 'usecase/book/get_book_usecase.dart';
import 'usecase/book/get_book_usecase_impl.dart';
import 'usecase/book/update_book_usecase.dart';
import 'usecase/book/update_book_usecase_impl.dart';
import 'usecase/series/create_series_usecase.dart';
import 'usecase/series/create_series_usecase_impl.dart';
import 'usecase/series/delete_series_usecase.dart';
import 'usecase/series/delete_series_usecase_impl.dart';
import 'usecase/series/get_all_series_usecase.dart';
import 'usecase/series/get_all_series_usecase_impl.dart';
import 'usecase/series/get_series_usecase.dart';
import 'usecase/series/get_series_usecase_impl.dart';
import 'usecase/series/update_series_usecase.dart';
import 'usecase/series/update_series_usecase_impl.dart';

// Books
final getAllBooksUseCaseProvider = Provider<GetAllBooksUseCase>(
    (ref) => GetAllBooksUseCaseImpl(ref.watch(booksRepositoryProvider)));
final getBookUseCaseProvider = Provider<GetBookUseCase>(
    (ref) => GetBookUseCaseImpl(ref.watch(booksRepositoryProvider)));
final createBookUseCaseProvider = Provider<CreateBookUseCase>(
    (ref) => CreateBookUseCaseImpl(ref.watch(booksRepositoryProvider)));
final updateBookUseCaseProvider = Provider<UpdateBookUseCase>(
    (ref) => UpdateBookUseCaseImpl(ref.watch(booksRepositoryProvider)));
final deleteBookUseCaseProvider = Provider<DeleteBookUseCase>(
    (ref) => DeleteBookUseCaseImpl(ref.watch(booksRepositoryProvider)));

// Series
final getAllSeriesUseCaseProvider = Provider<GetAllSeriesUseCase>(
    (ref) => GetAllSeriesUseCaseImpl(ref.watch(seriesRepositoryProvider)));
final getSeriesUseCaseProvider = Provider<GetSeriesUseCase>(
    (ref) => GetSeriesUseCaseImpl(ref.watch(seriesRepositoryProvider)));
final createSeriesUseCaseProvider = Provider<CreateSeriesUseCase>(
    (ref) => CreateSeriesUseCaseImpl(ref.watch(seriesRepositoryProvider)));
final updateSeriesUseCaseProvider = Provider<UpdateSeriesUseCase>(
    (ref) => UpdateSeriesUseCaseImpl(ref.watch(seriesRepositoryProvider)));
final deleteSeriesUseCaseProvider = Provider<DeleteSeriesUseCase>(
    (ref) => DeleteSeriesUseCaseImpl(ref.watch(seriesRepositoryProvider)));
