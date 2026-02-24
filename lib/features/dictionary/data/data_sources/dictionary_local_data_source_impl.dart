import 'package:juchari_uandakua/features/dictionary/data/data_sources/dictionary_local_data_source.dart';
import 'package:juchari_uandakua/features/dictionary/data/models/word_model.dart';
import 'package:sqflite/sqlite_api.dart';

class DictionaryLocalDataSourceImpl implements DictionaryLocalDataSource {
  // Es como si esta clase fuera un DAO, en donde interactuamos con la BD
  final Database db;
  DictionaryLocalDataSourceImpl(this.db);
  @override
  Future<List<WordModel>> getAllWords() async {
    final result = await db.query('words', orderBy: 'word_pur ASC');

    return result.map((map) => WordModel.fromMap(map)).toList();
  }

  @override
  Future<WordModel?> getWordById(String id) async {
    final result = await db.query(
      'words',
      where: 'id = ?',
      whereArgs: [id],
      limit: 1,
    );

    return WordModel.fromMap(result.first);
  }

  @override
  Future<List<WordModel>> searchWords(String query) async {
    final result = await db.query(
      'words',
      where: 'word_pur LIKE ? OR word_es LIKE ?',
      whereArgs: ['%$query%', '%$query%'],
      orderBy: 'word_pur ASC',
    );
    return result.map((map) => WordModel.fromMap(map)).toList();
  }
}
