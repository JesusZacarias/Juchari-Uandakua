import 'package:juchari_uandakua/features/dictionary/domain/entities/word.dart';
import 'package:juchari_uandakua/features/dictionary/domain/repositories/dictionary_repository.dart';

class SearchWordsUseCase {
  final DictionaryRepository dictionaryRepository;
  SearchWordsUseCase(this.dictionaryRepository);

  Future<List<Word>> call({required String query}) {
    return dictionaryRepository.searchWords(query);
  }
}
