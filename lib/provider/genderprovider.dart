import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class GenderProvider extends ChangeNotifier {
  String? _selectedGender;
  static const String genderKey = 'selected_gender';

  String? get selectedGender => _selectedGender;

  // Load saved gender
  Future<void> loadSavedGender() async {
    final prefs = await SharedPreferences.getInstance();
    _selectedGender = prefs.getString(genderKey);
    notifyListeners();
  }

  // Save gender
  Future<void> saveGender(String gender) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(genderKey, gender);
    _selectedGender = gender;
    notifyListeners();
  }
}
