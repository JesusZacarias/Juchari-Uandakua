import 'package:juchari_uandakua/features/dictionary/domain/entities/word.dart';

abstract class DictionaryRepository {
  Future<List<Word>> getAllWords();
  Future<List<Word>> searchWords(String query);
  Future<Word> getWordById(String id);
}
