import 'package:juchari_uandakua/features/dictionary/domain/entities/example.dart';

class ExampleModel extends Example {
  ExampleModel({
    required super.id,
    required super.wordId,
    required super.examplePur,
    required super.exampleEs,
  });

  factory ExampleModel.fromMap(Map<String, dynamic> map) {
    return ExampleModel(
      id: map['id'],
      wordId: map['word_id'],
      examplePur: map['example_pur'],
      exampleEs: map['example_es'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'word_id': wordId,
      'example_pur': examplePur,
      'example_es': exampleEs,
    };
  }
}
