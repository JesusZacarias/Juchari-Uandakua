import 'package:juchari_uandakua/features/dictionary/data/data_sources/dictionary_local_data_source.dart';
import 'package:juchari_uandakua/features/dictionary/domain/entities/word.dart';
import 'package:juchari_uandakua/features/dictionary/domain/repositories/dictionary_repository.dart';

class DictionaryRepositoryImpl implements DictionaryRepository {
  final DictionaryLocalDataSource dictionaryLocalDataSource;

  DictionaryRepositoryImpl(this.dictionaryLocalDataSource);
  @override
  Future<List<Word>> getAllWords() async {
    final allWords = await dictionaryLocalDataSource.getAllWords();
    return allWords;
  }

  @override
  Future<Word?> getWordById(String id) async {
    final wordById = await dictionaryLocalDataSource.getWordById(id);
    return wordById;
  }

  @override
  Future<List<Word>> searchWords(String query) async {
    final words = await dictionaryLocalDataSource.searchWords(query);
    return words;
  }
}
