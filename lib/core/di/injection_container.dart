import 'package:get_it/get_it.dart';
import 'package:juchari_uandakua/features/dictionary/data/data_sources/dictionary_local_data_source.dart';
import 'package:juchari_uandakua/features/dictionary/data/data_sources/dictionary_local_data_source_impl.dart';
import 'package:juchari_uandakua/features/dictionary/data/respositories/dictionary_repository_impl.dart';
import 'package:juchari_uandakua/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:juchari_uandakua/features/dictionary/domain/use_cases/get_all_words_use_case.dart';
import 'package:juchari_uandakua/features/dictionary/domain/use_cases/get_word_by_id_use_case.dart';
import 'package:juchari_uandakua/features/dictionary/domain/use_cases/search_words_use_case.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:juchari_uandakua/core/database/app_database.dart';

// Toda la app usara una sola instancia
/*
Regla importante

Siempre registra de abajo hacia , es decir:

Infraestructura

Data

Domain

Presentation

*Nunca registrar algo que aún no existe
 */

final sl = GetIt.instance;
// sl = Service locator
// Punto único de inicializacion de dependencias

Future<void> configureDependencies() async {
  // Registramos base de datos
  final database = await initDatabase();
  sl.registerLazySingleton<Database>(() => database);
  // Registramos DataSource
  sl.registerLazySingleton<DictionaryLocalDataSource>(
    () => DictionaryLocalDataSourceImpl(sl()),
  );
  // registramos Repositorio de Diccionario
  sl.registerLazySingleton<DictionaryRepository>(
    () => DictionaryRepositoryImpl(sl()),
  );
  // registramos UseCases
  sl.registerLazySingleton(() => GetAllWordsUseCase(sl()));
  sl.registerLazySingleton(() => GetWordByIdUseCase(sl()));
  sl.registerLazySingleton(() => SearchWordsUseCase(sl()));
}
