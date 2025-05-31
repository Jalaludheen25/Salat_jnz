class Janazacaremodel {
  final String title;
  final String description;
  final String imagePath;
  final String? audioPath;
  final String? arabicText;
  final String? translation;
  final String? source;

  Janazacaremodel({
    required this.title,
    required this.description,
    required this.imagePath,
    this.audioPath,
    this.arabicText,
    this.translation,
    this.source,
  });
}