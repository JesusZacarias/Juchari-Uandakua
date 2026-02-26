// Representa el estado de la pantalla del diccionario
import 'package:juchari_uandakua/features/dictionary/domain/entities/word.dart';

class DictionaryState {
  // Lista de palabras que se muestran en pantalla
  final List<Word> words;

  // Indica si esta cargando informacion
  final bool isLoading;

  // Mensaje de error
  final String? error;

  DictionaryState({this.words = const [], this.isLoading = false, this.error});

  // Permite crear una copia modificada solo ciertos valores
  DictionaryState copyWith({
    List<Word>? words,
    bool? isLoading,
    String? error,
  }) {
    return DictionaryState(
      words: words ?? this.words,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}
