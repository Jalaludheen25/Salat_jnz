class SamshayaNivaranamModel {
  final String title;
  final String description;
  final List<String> arabicTexts;
  final String translation;
  final String imagePath;

  const SamshayaNivaranamModel({
    required this.title,
    required this.description,
    this.arabicTexts = const [],
    this.translation = '',
    this.imagePath = '',
  });
}
