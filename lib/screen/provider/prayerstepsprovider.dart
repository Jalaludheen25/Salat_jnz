import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:salat_al_janaza/screen/pages/Prayerdeceasedscreen.dart';
import 'package:salat_al_janaza/screen/pages/qiyamscreen.dart';
import 'package:salat_al_janaza/screen/pages/prayerstepscreen.dart';
import 'package:salat_al_janaza/screen/pages/salamscreen.dart';
import 'package:salat_al_janaza/screen/pages/tachahoodscreen.dart';
import 'package:salat_al_janaza/screen/pages/takbeerScreen.dart';


class PrayerStepsProvider extends ChangeNotifier {
  int _currentPage = 0;
  
  int get currentPage => _currentPage;

  void setCurrentPage(int page, BuildContext context) {
    _currentPage = page;
    _navigateToPage(context, page);
    notifyListeners();
  }

  void _navigateToPage(BuildContext context, int page) {
    switch (page) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const PrayerStepsScreen()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const QiyyamPrayerStep()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const TakbeerScreen()),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const TachahoodScreen()),
        );
        break;
      case 4:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Prayerdeceasedscreen()),
        );
        break;
      case 5:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SalamScreen()),
        );
        break;
      // Add cases for other prayer steps
    }
  }
}
