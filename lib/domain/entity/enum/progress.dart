// よくあるEnumの書き方
// 参考: https://qiita.com/tsuruken/items/d8f284d4782f1a14b306
enum Progress {
  yet(value: 'YET'),
  doing(value: 'DOING'),
  pending(value: 'PENDING'),
  done(value: 'DONE');

  final String value;

  const Progress({required this.value});

  static Progress fromValue(String value) {
    return Progress.values.firstWhere((e) => e.value == value);
  }
}
