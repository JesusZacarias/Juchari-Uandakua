import 'package:juchari_uandakua/features/dictionary/domain/entities/word.dart';

class WordModel implements Word {
  @override
  final String id;

  @override
  final String? phonetic;

  @override
  final String wordEs;

  @override
  final String wordPur;

  WordModel({
    required this.id,
    required this.wordPur,
    required this.wordEs,
    this.phonetic,
  });

  factory WordModel.fromMap(Map<String, dynamic> map) {
    return WordModel(
      id: map['id'],
      wordPur: map['word_pur'],
      wordEs: map['word_es'],
      phonetic: map['phonetic'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'word_pur': wordPur,
      'word_es': wordPur,
      'phonetic': phonetic,
    };
  }
}
