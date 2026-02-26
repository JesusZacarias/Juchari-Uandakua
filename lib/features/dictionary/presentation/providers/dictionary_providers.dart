import 'package:flutter_riverpod/legacy.dart';
import 'package:juchari_uandakua/core/di/injection_container.dart';
import 'package:juchari_uandakua/features/dictionary/domain/use_cases/get_all_words_use_case.dart';
import 'package:juchari_uandakua/features/dictionary/domain/use_cases/get_word_by_id_use_case.dart';
import 'package:juchari_uandakua/features/dictionary/domain/use_cases/search_words_use_case.dart';
import 'package:juchari_uandakua/features/dictionary/presentation/controller/dictionary_controller.dart';
import 'package:juchari_uandakua/features/dictionary/presentation/controller/states/dictionary_state.dart';

// Provider principal del controller
// Riverpod solo maneja estados
// Las dependecias vienen desde GetIT (injection_container).
final dictionaryControllerProvider =
    StateNotifierProvider<DictionaryController, DictionaryState>((ref) {
      return DictionaryController(
        sl<GetAllWordsUseCase>(),
        sl<SearchWordsUseCase>(),
        sl<GetWordByIdUseCase>(),
      );
    });
