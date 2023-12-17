import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseInitializer {
  static const _databaseName = 'book_shelf';
  static const _databaseVersion = 1;

  static Database? _database;

  Future<void> Function(Database db, int version) onCreate;

  DatabaseInitializer({required this.onCreate}) {
    _initDatabase();
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
}
