import 'package:juchari_uandakua/features/dictionary/domain/entities/word.dart';
import 'package:juchari_uandakua/features/dictionary/domain/repositories/dictionary_repository.dart';

class GetAllWordsUseCase {
  DictionaryRepository dictionaryRepository;
  GetAllWordsUseCase(this.dictionaryRepository);

  Future<List<Word>> call() {
    return dictionaryRepository.getAllWords();
  }
}
