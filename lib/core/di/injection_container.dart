import 'package:get_it/get_it.dart';
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
  // sl.registerLazySingleton<>()
}
