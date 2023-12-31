import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// Sample作成、いずれこの画面をMainにし、シリーズ画面と本棚一覧画面をBottomNavigationで切り替え
class IndexView extends HookWidget {
  const IndexView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentIndex = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('IndexView'),
      ),
      body: const Center(child: Text('IndexView')),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
        onTap: (index) => currentIndex.value = index,
      ),
    );
  }
}
