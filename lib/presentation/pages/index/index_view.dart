import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'add_floating_action_button.dart';
import 'book_card.dart';
import 'viewmodel/index_viewmodel.dart';

class IndexView extends StatelessWidget {
  IndexView({super.key});

  final _filteredBookListProvider = filteredBookListProvider;
  final _indexViewProvider = indexViewModelStateNotifierProvider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('本棚'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Consumer(
            builder: ((context, ref, _) {
              return ref.watch(_filteredBookListProvider).maybeWhen(
                    success: (bookList) => Expanded(
                      child: bookList.length == 0
                          ? const Center(
                              child: Text('本がありません'),
                            )
                          : ListView.builder(
                              itemCount: bookList.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return BookCard(book: bookList[index]);
                              },
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
                  );
            }),
          )
        ],
      ),
      floatingActionButton: const AddBookFloatingActionButton(),
    );
  }
}
