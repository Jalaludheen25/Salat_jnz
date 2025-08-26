class PrayerStepsModel {
  final String title;
  final String description;
  final String imagePath;
  final String? arabicText;
  final String? translation;

  const PrayerStepsModel({
    required this.title,
    required this.description,
    required this.imagePath,
    this.arabicText,
    this.translation,
  });
}
