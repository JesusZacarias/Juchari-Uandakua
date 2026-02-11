import 'package:juchari_uandakua/features/dictionary/domain/entities/word.dart';

class WordModel extends Word {
  final DateTime createdAt;
  WordModel({
    required super.id,
    required super.wordPur,
    required super.wordEs,
    super.phonetic,
    required super.categoryId,
    required this.createdAt,
  });

  factory WordModel.fromMap(Map<String, dynamic> map) {
    return WordModel(
      id: map['id'],
      wordPur: map['word_pur'],
      wordEs: map['word_es'],
      phonetic: map['phonetic'],
      categoryId: map['category_id'],
      createdAt: map['created_at'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'word_pur': wordPur,
      'word_es': wordPur,
      'phonetic': phonetic,
      'category_id': categoryId,
      'created_at': createdAt,
    };
  }
}
