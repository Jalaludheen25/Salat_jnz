import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  String _lang = 'ml'; // Default Malayalam
  bool _isRtl = false;
  Map<String, String> _translations = {
    // Fallback translations to ensure the app works
    'app.title': 'Janaza Guide',
    'home.header': 'Salat al-Janaza',
    'home.mayyith': 'Deceased Preparation',
    'home.bathing': 'Bathing the Deceased',
    'home.kafan': 'Shrouding (Kafan)',
    'home.prayer': 'Funeral Prayer',
    'home.janaza': 'Funeral Rites',
    'home.after': 'Other Important Matters',
    'home.quran_translation':
        'Every soul will taste death. And you will only receive your full reward on the Day of Resurrection. Whoever is saved from the Fire and admitted into Paradise has truly succeeded. The life of this world is merely the delusion of enjoyment. (3:185)',
    'drawer.home': 'Home',
    'drawer.donate': 'Donate',
    'drawer.contact': 'Contact',
    'drawer.about': 'About',
    'drawer.raise_bug': 'Report Bug',
    'drawer.select_language': '🌐 Select Language',
    'drawer.version': 'Version',
    'drawer.latest': 'Latest',
    'common.cancel': 'Cancel',
  };

  String get lang => _lang;
  bool get isRtl => _isRtl;
  Map<String, String> get translations => _translations;

  // Initialize language from saved preferences
  Future<void> initializeLanguage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final savedLang = prefs.getString('selected_language') ?? 'ml';
      await loadLanguage(savedLang);
    } catch (e) {
      debugPrint('Failed to initialize language: $e');
      await loadLanguage('ml'); // Fallback to Malayalam
    }
  }

  Future<void> loadLanguage(String code) async {
    if (!['ml', 'en', 'ur'].contains(code)) {
      debugPrint('Unsupported language code: $code');
      return;
    }

    _lang = code;
    _isRtl = code == 'ur';

    try {
      final String data = await rootBundle.loadString('assets/i18n/$code.json');
      final Map<String, dynamic> jsonMap = json.decode(data);

      _translations =
          jsonMap.map((key, value) => MapEntry(key, value.toString()));

      // Save language preference
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('selected_language', code);

      debugPrint('Language loaded successfully: $code');
    } catch (e) {
      debugPrint('Failed to load language $code: $e');
      // Keep current translations if loading fails
    }

    notifyListeners();
  }

  String t(String key) {
    return _translations[key] ?? key;
  }

  // Get language display name
  String getLanguageDisplayName(String langCode) {
    switch (langCode) {
      case 'ml':
        return 'മലയാളം';
      case 'en':
        return 'English';
      case 'ur':
        return 'اردو';
      default:
        return 'English';
    }
  }

  // Get all available languages
  List<Map<String, String>> getAvailableLanguages() {
    return [
      {'code': 'ml', 'name': 'മലയാളം', 'englishName': 'Malayalam'},
      {'code': 'en', 'name': 'English', 'englishName': 'English'},
      {'code': 'ur', 'name': 'اردو', 'englishName': 'Urdu'},
    ];
  }
}
