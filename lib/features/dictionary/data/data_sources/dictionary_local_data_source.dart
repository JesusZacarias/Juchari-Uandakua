import 'package:juchari_uandakua/features/dictionary/data/models/word_model.dart';

abstract class DictionaryLocalDataSource {
  // Definimos lo que se va a hacer en DictionaryLocalDataSourceImpl, es como si fuera una interfaz
  Future<List<WordModel>> searchWords(String query);
  Future<WordModel?> getWordById(String id);
  Future<List<WordModel>> getAllWords();
}
