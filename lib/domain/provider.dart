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
