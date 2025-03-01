import 'package:flutter/material.dart';

class UthmaniUtils {
  /// Regular expression for Uthmani-specific characters
  static final RegExp uthmaniRegex = RegExp(
    r'[\u0600-\u06FF\uFB50-\uFDFF\uFE70-\uFEFF\u0750-\u077F\u08A0-\u08FF' +
    r'\u0870-\u089F\u0890-\u089F\u08A0-\u08FF\u0890-\u089F]'
  );

  /// Regular expression for Quranic diacritics
  static final RegExp quranicDiacriticsRegex = RegExp(
    r'[\u064B-\u0652\u0670\u0657\u0658\u0659\u065A\u065B\u065C\u065D\u065E\u065F]'
  );

  /// Regular expression for pause marks
  static final RegExp pauseMarksRegex = RegExp(
    r'[\u06D6-\u06DC\u06DF-\u06E4\u06E7-\u06E8\u06EA-\u06ED]'
  );

  /// Regular expression for Sajdah signs
  static final RegExp sajdahSignRegex = RegExp(
    r'[\u06E9]'
  );

  /// Special Uthmani ligatures mapping
  static const Map<String, String> uthmaniLigatures = {
    'لله': 'ﷲ',
    'الله': 'ﷲ',
    'بسم': '﷽',
    'صلى': 'ﷺ',
    'جل جلاله': 'ﷻ',
    'رضي الله عنه': 'ﷴ',
    'عليه السلام': 'ﷷ',
  };

  /// Checks if text contains Uthmani script
  static bool isUthmaniText(String text) {
    return uthmaniRegex.hasMatch(text);
  }

  /// Converts basic Arabic text to Uthmani script where applicable
  static String toUthmani(String text) {
    String result = text;
    uthmaniLigatures.forEach((key, value) {
      result = result.replaceAll(key, value);
    });
    return result;
  }

  /// Removes Quranic diacritics while preserving essential ones
  static String removeQuranicDiacritics(String text) {
    return text.replaceAll(quranicDiacriticsRegex, '');
  }

  /// Checks if text has pause marks
  static bool hasPauseMarks(String text) {
    return pauseMarksRegex.hasMatch(text);
  }

  /// Checks if text has Sajdah sign
  static bool hasSajdahSign(String text) {
    return sajdahSignRegex.hasMatch(text);
  }

  /// Formats Quranic text with proper spacing and marks
  static String formatQuranicText(String text) {
    // Add proper spacing around pause marks
    String formatted = text.replaceAllMapped(
      pauseMarksRegex,
      (match) => ' ${match.group(0)} '
    );

    // Add proper spacing around Sajdah signs
    formatted = formatted.replaceAllMapped(
      sajdahSignRegex,
      (match) => ' ${match.group(0)} '
    );

    // Remove extra spaces
    formatted = formatted.replaceAll(RegExp(r'\s+'), ' ').trim();

    return formatted;
  }

  /// Validates if the text follows Uthmani script rules
  static bool validateUthmaniText(String text) {
    // Check for valid Uthmani characters
    if (!uthmaniRegex.hasMatch(text)) {
      return false;
    }

    // Check for valid diacritic combinations
    // This is a simplified check - real validation would be more complex
    bool hasValidDiacritics = !RegExp(r'[\u064B-\u0652][\u064B-\u0652]').hasMatch(text);

    return hasValidDiacritics;
  }
}

/// Widget for displaying Uthmani text with proper styling
class UthmaniText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final bool removeDiacritics;
  final bool showPauseMarks;
  final TextAlign textAlign;
  final TextStyle? style;

  const UthmaniText(
    this.text, {
    Key? key,
    this.fontSize,
    this.color,
    this.removeDiacritics = false,
    this.showPauseMarks = true,
    this.textAlign = TextAlign.right,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String displayText = text;
    
    if (removeDiacritics) {
      displayText = UthmaniUtils.removeQuranicDiacritics(displayText);
    }
    
    if (!showPauseMarks) {
      displayText = displayText.replaceAll(UthmaniUtils.pauseMarksRegex, '');
    }

    return Text(
      displayText,
      style: style?.copyWith(
        fontSize: fontSize ?? style?.fontSize,
        color: color ?? style?.color,
        fontFamily: 'Uthmani', // Make sure to add Uthmani font to your project
      ) ?? TextStyle(
        fontSize: fontSize ?? 24,
        color: color ?? Colors.black,
        fontFamily: 'Uthmani',
        height: 2.0, // Proper line height for Quranic text
      ),
      textAlign: textAlign,
      textDirection: TextDirection.rtl,
    );
  }
}

/// Provider for managing Quranic text settings
class QuranTextSettings extends ChangeNotifier {
  bool _showDiacritics = true;
  bool _showPauseMarks = true;
  double _fontSize = 24;

  bool get showDiacritics => _showDiacritics;
  bool get showPauseMarks => _showPauseMarks;
  double get fontSize => _fontSize;

  void toggleDiacritics() {
    _showDiacritics = !_showDiacritics;
    notifyListeners();
  }

  void togglePauseMarks() {
    _showPauseMarks = !_showPauseMarks;
    notifyListeners();
  }

  void setFontSize(double size) {
    _fontSize = size;
    notifyListeners();
  }
}

/// Example usage in a widget:
class QuranTextDisplay extends StatelessWidget {
  final String quranText;

  const QuranTextDisplay({
    Key? key,
    required this.quranText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: UthmaniText(
        quranText,
        fontSize: 28,
        color: Colors.black87,
        style: TextStyle(
          letterSpacing: 1.2,
          wordSpacing: 4,
        ),
      ),
    );
  }
}