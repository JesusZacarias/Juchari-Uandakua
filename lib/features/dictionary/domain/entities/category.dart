abstract class Category {
  final String id;
  final String nameEs;
  final String namePur;
  final String? description;

  Category({
    required this.id,
    required this.nameEs,
    required this.namePur,
    this.description,
  });
}
