import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../viewmodel/series/series_index_viewmodel.dart';
import 'series_card.dart';

class SeriesIndexView extends ConsumerWidget {
  const SeriesIndexView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sortedSeriesList = ref.watch(sortedSeriesListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('本棚'),
      ),
      // TODO: シリーズの冊数に応じて本棚のように表示するUI
      body: Column(
        children: [
          sortedSeriesList.maybeWhen(
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
          )
        ],
      ),
      // TODO: 追加ボタンを押したら、シリーズを追加できるようにする
    );
  }
}
