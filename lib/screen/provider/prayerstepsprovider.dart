import 'package:flutter/foundation.dart';

class PrayerStepsProvider extends ChangeNotifier {  
  int _currentPage = 0;  

  int get currentPage => _currentPage;  

  void setCurrentPage(int page) {  
    _currentPage = page;  
    notifyListeners();  
  }  
}