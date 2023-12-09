import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../../entity/books_entity.dart';
import 'books_database.dart';

class BooksDatabaseImpl implements BooksDatabase {
  static const _databaseName = 'book_shelf';
  static const _tableName = 'books';
  static const _databaseVersion = 1;

  static const _columnId = 'id';
  static const _columnTitle = 'title';
  static const _columnAuthors = 'authors';
  static const _columnDescription = 'description';
  static const _columnIsbn = 'isbn';
  static const _columnProgress = 'progress';
  static const _columnPublishedDate = 'published_date';
  static const _columnCreatedAt = 'created_at';
  static const _columnUpdatedAt = 'updated_at';

  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  @override
  Future<BookListEntity> getAllBooks() async {
    var db = await database;
    return db.query(_tableName);
  }

  @override
  Future<BookEntity> insertBook(BookEntity book) async {
    var db = await database;
    late BookEntity bookEntity;
    await db.transaction((txn) async {
      var id = await txn.insert(
        _tableName,
        book,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      var results =
          await txn.query(_tableName, where: '$_columnId = ?', whereArgs: [id]);
      bookEntity = results.first;
    });
    return bookEntity;
  }

  @override
  Future<void> updateBook(BookEntity book) async {
    var db = await database;
    var id = book['id'];
    await db.update(
      _tableName,
      book,
      where: '$_columnId = ?',
      whereArgs: [id],
    );
  }

  @override
  Future<void> deleteBook(int id) async {
    var db = await database;
    await db.delete(
      _tableName,
      where: '$_columnId = ?',
      whereArgs: [id],
    );
  }

  Future<Database> _initDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), _databaseName),
      onCreate: (db, _) {
        db.execute('''
          CREATE TABLE $_tableName(
            $_columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            $_columnTitle TEXT NOT NULL,
            $_columnAuthors TEXT,
            $_columnDescription TEXT,
            $_columnIsbn TEXT,
            $_columnProgress TEXT DEFAULT 'YET',
            $_columnPublishedDate TEXT,
            $_columnCreatedAt TEXT DEFAULT (datetime('now', 'localtime')),
            $_columnUpdatedAt TEXT DEFAULT (datetime('now', 'localtime'))
          )
        ''');
      },
      version: _databaseVersion,
    );
  }
}
