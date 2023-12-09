import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../infrastructure/provider.dart';
import '../../helpers/toast_helper.dart';

class AddBookFloatingActionButton extends ConsumerWidget {
  const AddBookFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var booksApiRepository = ref.watch(googleBooksApiRepositoryProvider);
    var booksDatabaseRepository = ref.watch(booksRepositoryProvider);

    return FloatingActionButton(
      onPressed: () async {
        var result = await BarcodeScanner.scan();
        if (result.rawContent.isNotEmpty && result.type == ResultType.Barcode) {
          var apiBook =
              await booksApiRepository.fetchBookByIsbn(result.rawContent);
          await booksDatabaseRepository.createBook(
            apiBook.title,
            apiBook.authors,
            apiBook.description,
            apiBook.industryIdentifiers[0].identifier,
            apiBook.publishedDate,
          );
          // ignore: use_build_context_synchronously
          InAppNotification.success(context, '読み取りに成功しました');
        } else {
          // ignore: use_build_context_synchronously
          InAppNotification.error(context, '読み取りに失敗しました');
        }
      },
      tooltip: '本を追加する',
      child: const Icon(Icons.add),
    );
  }
}
