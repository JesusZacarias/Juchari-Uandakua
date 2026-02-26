import 'package:flutter_riverpod/legacy.dart';
import 'package:juchari_uandakua/features/dictionary/domain/use_cases/get_all_words_use_case.dart';
import 'package:juchari_uandakua/features/dictionary/domain/use_cases/get_word_by_id_use_case.dart';
import 'package:juchari_uandakua/features/dictionary/domain/use_cases/search_words_use_case.dart';
import 'package:juchari_uandakua/features/dictionary/presentation/controller/states/dictionary_state.dart';
// El controller es el puente entre la UI y los Casos de Uso
// Aqui ejecutamos la lógica de presentacion
// No se accede directamente al repostory

class DictionaryController extends StateNotifier<DictionaryState> {
  final GetAllWordsUseCase getAllWordsUseCase;
  final SearchWordsUseCase searchWordsUseCase;
  final GetWordByIdUseCase getWordByIdUseCase;
  DictionaryController(
    this.getAllWordsUseCase,
    this.searchWordsUseCase,
    this.getWordByIdUseCase,
  ) : super(DictionaryState());

  // Carga todas las palabras
  Future<void> loadAllwords() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final words = await getAllWordsUseCase();
      state = state.copyWith(words: words, isLoading: false);
    } catch (ex) {
      state = state.copyWith(
        isLoading: false,
        error: 'Error al cargar las palabras',
      );
    }
  }

  // Ejecuta búsqueda por texto
  Future<void> searchWord(String query) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final result = await searchWordsUseCase(query: query);
      state = state.copyWith(words: result, isLoading: false);
    } catch (ex) {
      state = state.copyWith(isLoading: false, error: 'Error en la búsqueda');
    }
  }
}
