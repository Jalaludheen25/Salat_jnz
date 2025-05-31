class KafanModel {
  final String title;
  final String description;
  final String imagePath;
  final String instructions;
  final String? arabicText;
  final String? translation;

  KafanModel({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.instructions,
    this.arabicText,
    this.translation,
  });
} 