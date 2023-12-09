import 'package:flutter/material.dart';

import 'addFloatingActionButton.dart';

class IndexView extends StatelessWidget {
  const IndexView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('本棚'),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text('Hello World!'),
          ],
        ),
      ),
      floatingActionButton: const AddBookFloatingActionButton(),
    );
  }
}
