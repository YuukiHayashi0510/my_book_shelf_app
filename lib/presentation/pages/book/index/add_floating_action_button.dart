import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../infrastructure/provider.dart';
import '../../../helpers/toast_helper.dart';
import 'viewmodel/index_viewmodel.dart';

class AddBookFloatingActionButton extends ConsumerWidget {
  const AddBookFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var booksApiRepository = ref.watch(googleBooksApiRepositoryProvider);
    var viewModel = ref.watch(indexViewModelStateNotifierProvider.notifier);

    return FloatingActionButton(
      onPressed: () async {
        var result = await BarcodeScanner.scan();
        var isbn = result.rawContent;
        if (isbn.isEmpty || result.type != ResultType.Barcode) return;

        try {
          var apiBook = await booksApiRepository.fetchBookByIsbn(isbn);
          var authors = List<String>.from(apiBook['authors']);

          await viewModel.addBook(
            title: apiBook['title'],
            subtitle: apiBook['subtitle'],
            authors: authors,
            description: apiBook['description'],
            isbn: isbn,
            publisher: apiBook['publisher'],
            publishedDate: apiBook['publishedDate'],
            thumbnail: apiBook['imageLinks']['thumbnail'],
          );
          // ignore: use_build_context_synchronously
          InAppNotification.success(context, '読み取りに成功しました');
        } catch (e) {
          // ignore: use_build_context_synchronously
          InAppNotification.error(context, '読み取りに失敗しました');
        }
      },
      tooltip: '本を追加する',
      child: const Icon(Icons.add),
    );
  }
}
