import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';

class IndexView extends StatelessWidget {
  const IndexView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookShelfApp'),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text('Hello World!'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var result = await BarcodeScanner.scan();
          if (result.rawContent.isNotEmpty &&
              result.type == ResultType.Barcode) {
            print(result.type);
            print(result.rawContent);
            print(result.format);
            print(result.formatNote);
          }
        },
        tooltip: '本を追加する',
        child: const Icon(Icons.add),
      ),
    );
  }
}
