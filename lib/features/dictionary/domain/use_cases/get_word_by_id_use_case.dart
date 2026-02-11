import 'package:juchari_uandakua/features/dictionary/domain/entities/word.dart';
import 'package:juchari_uandakua/features/dictionary/domain/repositories/dictionary_repository.dart';

class GetWordByIdUseCase {
  final DictionaryRepository dictionaryRepository;

  GetWordByIdUseCase(this.dictionaryRepository);

  Future<Word?> call({required String id}) {
    return dictionaryRepository.getWordById(id);
  }
}
