import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'presentation/helpers/color_helper.dart';
import 'presentation/pages/book/index/index_view.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookShelfApp',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
            seedColor: ColorHelper.getHexColorByColorCode('#8b4513')),
        useMaterial3: true,
      ),
      // TODO: 後ほどシリーズと本を統合した画面にする
      home: const BookIndexView(),
    );
  }
}
