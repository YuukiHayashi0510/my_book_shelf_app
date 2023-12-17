import 'package:sqflite/sqflite.dart';
import '../../entity/books_entity.dart';
import 'books_database.dart';
import 'database_initializer.dart';

class BooksDatabaseImpl implements BooksDatabase {
  static const _tableName = 'books';
  static const _columnId = 'id';
  static const _columnTitle = 'title';
  static const _columnSubtitle = 'subtitle';
  static const _columnAuthors = 'authors';
  static const _columnDescription = 'description';
  static const _columnIsbn = 'isbn';
  static const _columnProgress = 'progress';
  static const _columnPublisher = 'publisher';
  static const _columnPublishedDate = 'published_date';
  static const _columnThumbnail = 'thumbnail';
  static const _columnCreatedAt = 'created_at';
  static const _columnUpdatedAt = 'updated_at';

  // ForeignKey
  static const _columnSeriesId = 'series_id';

  late final DatabaseInitializer _dbInitializer =
      DatabaseInitializer(onCreate: _onCreate);

  @override
  Future<BookListEntity> getAllBooks() async {
    var db = await _dbInitializer.database;
    return db.query(_tableName);
  }

  @override
  Future<BookEntity> getBook(int id) async {
    var db = await _dbInitializer.database;
    var results =
        await db.query(_tableName, where: '$_columnId = ?', whereArgs: [id]);
    return results.first;
  }

  @override
  Future<BookEntity> insertBook(BookEntity book) async {
    var db = await _dbInitializer.database;
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
    var db = await _dbInitializer.database;
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
    var db = await _dbInitializer.database;
    await db.delete(
      _tableName,
      where: '$_columnId = ?',
      whereArgs: [id],
    );
  }

  Future<void> _onCreate(Database db, int version) {
    return db.execute('''
          CREATE TABLE $_tableName(
            $_columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            $_columnTitle TEXT NOT NULL,
            $_columnSubtitle TEXT,
            $_columnAuthors TEXT,
            $_columnDescription TEXT,
            $_columnIsbn TEXT,
            $_columnProgress TEXT DEFAULT 'YET',
            $_columnPublisher TEXT,
            $_columnPublishedDate TEXT,
            $_columnThumbnail TEXT,
            $_columnCreatedAt TEXT DEFAULT (datetime('now', 'localtime')),
            $_columnUpdatedAt TEXT DEFAULT (datetime('now', 'localtime')),
            $_columnSeriesId INTEGER,
            FOREIGN KEY($_columnSeriesId) REFERENCES series($_columnId) ON DELETE SET NULL
          )
        ''');
  }
}
