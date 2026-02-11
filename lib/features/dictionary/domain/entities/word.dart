abstract class Word {
  final String id;
  final String wordPur;
  final String wordEs;
  final String? phonetic;
  final String categoryId;
  Word({
    required this.id,
    required this.wordPur,
    required this.wordEs,
    this.phonetic,
    required this.categoryId,
  });
}
