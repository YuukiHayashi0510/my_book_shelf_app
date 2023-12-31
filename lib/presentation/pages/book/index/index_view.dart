import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../viewmodel/book/book_index_viewmodel.dart';
import '../../../viewmodel/book/book_search_viewmodel.dart';
import 'add_floating_action_button.dart';
import 'book_card.dart';
import 'search_box.dart';

class BookIndexView extends ConsumerWidget {
  const BookIndexView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var filteredBookList = ref.watch(filteredBookListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '書籍一覧',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF8b4513),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: SearchBox(
              onChanged: (value) => ref
                  .read(bookSearchedViewModelStateNotifierProvider.notifier)
                  .searchByTitle(value),
            ),
          ),
          const SizedBox(height: 16),
          filteredBookList.maybeWhen(
            success: (bookList) => Expanded(
              child: bookList.length == 0
                  ? const Center(
                      child: Text('本がありません'),
                    )
                  : ListView.builder(
                      itemCount: bookList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          BookCard(book: bookList[index]),
                    ),
            ),
            error: (_) => const Center(
              child: Text('エラーが発生しました'),
            ),
            orElse: () => const Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const AddBookFloatingActionButton(),
    );
  }
}
