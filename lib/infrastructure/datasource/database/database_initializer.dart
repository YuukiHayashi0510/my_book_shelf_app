import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../../constants.dart';

class DatabaseInitializer {
  static const _databaseName = 'book_shelf';
  static const _databaseVersion = 1;

  static Database? _database;

  Future<void> Function(Database db, int version) onCreate;

  DatabaseInitializer({required this.onCreate}) {
    isDbReset ? _resetDatabase() : _initDatabase();
  }

  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), _databaseName),
      onCreate: onCreate,
      version: _databaseVersion,
    );
  }

  Future<void> _resetDatabase() async {
    // ignore: avoid_print
    print('Resetting database...');
    String path = join(await getDatabasesPath(), _databaseName);
    await deleteDatabase(path);
    _database = await _initDatabase();
    // ignore: avoid_print
    print('Reset database!');
  }
}
