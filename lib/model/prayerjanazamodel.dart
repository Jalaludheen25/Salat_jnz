class PrayerJanazaModel {
  final String title;
  final String description;
  final String imagePath;
  final String instructions;
  final String? arabicText;
  final String? translation;

  const PrayerJanazaModel({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.instructions,
    this.arabicText,
    this.translation,
  });
}
