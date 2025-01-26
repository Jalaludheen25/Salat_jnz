// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:salat_al_janaza/screen/pages/Prayerdeceasedscreen.dart';
// import 'package:salat_al_janaza/screen/pages/qiyamscreen.dart';
// import 'package:salat_al_janaza/screen/pages/prayerstepscreen.dart';
// import 'package:salat_al_janaza/screen/pages/salamscreen.dart';
// import 'package:salat_al_janaza/screen/pages/tachahoodscreen.dart';



// class PrayerStepsProvider extends ChangeNotifier {
//   int _currentPage = 0;
  
//   int get currentPage => _currentPage;

//   void setCurrentPage(int index, BuildContext context) {
//     _currentPage = index;
//     notifyListeners();
//     _navigateToScreen(index, context);
//   }

//   // void _navigateToScreen(int index, BuildContext context) {
//   //   Widget screen;
    
//   //   switch (index) {
//   //     case 0:
//   //       screen = const TakbeerScreen();
//   //       break;
//   //     case 1:
//   //       screen = const QiyyamPrayerStep();
//   //       break;
//   //     case 2:
//   //       screen = const TachahoodScreen();
//   //       break;
//   //     case 3:
//   //       screen = const Prayerdeceasedscreen();
//   //       break;
//   //     case 4:
//   //       screen = const SalamScreen();
//   //       break;
//   //     default:
//   //       return;
//   //   }

//     Navigator.pushReplacement(
//       context,
//       PageRouteBuilder(
//         pageBuilder: (context, animation, secondaryAnimation) => screen,
//         transitionsBuilder: (context, animation, secondaryAnimation, child) {
//           const begin = Offset(1.0, 0.0);
//           const end = Offset.zero;
//           const curve = Curves.easeInOut;
//           var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//           var offsetAnimation = animation.drive(tween);
//           return SlideTransition(position: offsetAnimation, child: child);
//         },
//         transitionDuration: const Duration(milliseconds: 300),
//       ),
//     );
//   }
// }
