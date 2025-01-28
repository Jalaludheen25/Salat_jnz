class PrayerStepModel {
  final String title;
  final String description;
  final List<String> arabicTexts;
  final String? meaning;
  final String imagePath;
  final String instructions;
  final String audioPath;

  PrayerStepModel({
    required this.title,
    required this.description,
    required this.arabicTexts,
    this.meaning,
    required this.imagePath,
    required this.instructions,
    required this.audioPath,
  });
}