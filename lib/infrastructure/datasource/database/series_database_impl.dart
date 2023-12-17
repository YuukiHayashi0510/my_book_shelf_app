import 'package:sqflite/sqflite.dart';

import '../../entity/series_entity.dart';
import 'database_initializer.dart';
import 'series_database.dart';

class SeriesDatabaseImpl implements SeriesDatabase {
  static const _tableName = 'series';
  static const _columnId = 'id';
  static const _columnTitle = 'title';
  static const _columnDescription = 'description';
  static const _columnCreatedAt = 'created_at';
  static const _columnUpdatedAt = 'updated_at';

  late final DatabaseInitializer _dbInitializer =
      DatabaseInitializer(onCreate: _onCreate);

  @override
  Future<SeriesListEntity> getAllSeries() async {
    var db = await _dbInitializer.database;
    return db.query(_tableName);
  }

  @override
  Future<SeriesEntity> getSeries(int id) async {
    var db = await _dbInitializer.database;
    var result = await db.query(
      _tableName,
      where: '$_columnId = ?',
      whereArgs: [id],
    );

    var books = await db.query(
      'books',
      where: 'seriesId = ?',
      whereArgs: [id],
    );
    result.first['books'] = books;
    return result.first;
  }

  @override
  Future<SeriesEntity> insertSeries(SeriesEntity series) async {
    var db = await _dbInitializer.database;
    late SeriesEntity seriesEntity;
    await db.transaction((txn) async {
      var id = await txn.insert(
        _tableName,
        series,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      var result = await txn.query(
        _tableName,
        where: '$_columnId = ?',
        whereArgs: [id],
      );
      seriesEntity = result.first;
    });
    return seriesEntity;
  }

  @override
  Future<void> updateSeries(SeriesEntity series) async {
    var db = await _dbInitializer.database;
    var id = series['id'];
    await db.update(
      _tableName,
      series,
      where: '$_columnId = ?',
      whereArgs: [id],
    );
  }

  @override
  Future<void> deleteSeries(int id) async {
    var db = await _dbInitializer.database;
    await db.delete(
      _tableName,
      where: '$_columnId = ?',
      whereArgs: [id],
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $_tableName (
        $_columnId INTEGER PRIMARY KEY,
        $_columnTitle TEXT NOT NULL,
        $_columnDescription TEXT NOT NULL
        $_columnCreatedAt TEXT DEFAULT (datetime('now', 'localtime')),
        $_columnUpdatedAt TEXT DEFAULT (datetime('now', 'localtime'))
      )
    ''');
  }
}
