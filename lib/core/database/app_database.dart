import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

const _databaseName = 'juchari_uandakua.db';
const _databaseVersion = 1;

Future<Database> initDatabase() async {
  final dbPath = await getDatabasesPath();
  final path = join(dbPath, _databaseName);

  return openDatabase(
    path,
    version: _databaseVersion,
    onCreate: _onCreate,
    onUpgrade: _onUpgrade,
  );
}

Future<void> _onCreate(Database db, int version) async {
  // Categories
  await db.execute('''
  CREATE TABLE categories (
    id TEXT PRIMARY KEY,
    name_es TEXT NOT NULL,
    name_pur TEXT NOT NULL,
    description TEXT
  )
  ''');

  // Words
  await db.execute('''
  CREATE TABLE words (
    id TEXT PRIMARY KEY,
    word_pur TEXT NOT NULL,
    word_es TEXT NOT NULL,
    phonetic TEXT,
    category_id TEXT NOT NULL,
    create_at TEXT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id)
  )
  ''');

  // Examples
  await db.execute('''
  CREATE TABLE examples (
    id TEXT PRIMARY KEY,
    word_id TEXT NOT NULL,
    example_pur TEXT NOT NULL,
    example_es TEXT NOT NULL,
    FOREIGN KEY (word_id) REFERENCES words(id)
  )
  ''');

  // Favorites
  await db.execute('''
  CREATE TABLE favorites (
    word_id TEXT PRIMARY KEY,
    created_at TEXT NOT NULL,
    FOREIGN KEY (word_id) REFERENCES words(id)
  )
  ''');
}

Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
  // Migraciones
}
