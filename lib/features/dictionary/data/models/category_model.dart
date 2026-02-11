import 'package:juchari_uandakua/features/dictionary/domain/entities/category.dart';

class CategoryModel extends Category {
  CategoryModel({
    required super.id,
    required super.nameEs,
    required super.namePur,
    super.description,
  });

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'],
      nameEs: map['name_esp'],
      namePur: map['name_pur'],
      description: map['description'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name_esp': nameEs,
      'name_pur': namePur,
      'description': description,
    };
  }
}
