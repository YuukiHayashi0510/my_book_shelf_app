import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../viewmodel/series/series_index_viewmodel.dart';
import 'series_card.dart';

class IndexView extends StatelessWidget {
  IndexView({Key? key}) : super(key: key);

  final _sortedSeriesListProvider = sortedSeriesListProvider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('本棚'),
      ),
      // TODO: シリーズの冊数に応じて本棚のように表示するUI
      body: Column(
        children: [
          Consumer(builder: ((context, ref, _) {
            return ref.watch(_sortedSeriesListProvider).maybeWhen(
                  success: (seriesList) => Expanded(
                    child: seriesList.length == 0
                        ? const Center(
                            child: Text('シリーズはありません'),
                          )
                        : ListView.builder(
                            itemCount: seriesList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) =>
                                SeriesCard(series: seriesList[index]),
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
          }))
        ],
      ),
      // TODO: 追加ボタンを押したら、シリーズを追加できるようにする
    );
  }
}
