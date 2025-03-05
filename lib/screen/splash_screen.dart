import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/appkeys.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/textstyleclass.dart';
import 'package:janaza_guide/screen/gender_selections.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => GenderSelectionScreen(),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeTransition(
                    opacity: _animation,
                    child: ScaleTransition(
                      scale: _animation,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/icons/app logo.png',
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  FadeTransition(
                    opacity: _animation,
                    child: Text(
                      'Janaza Guide',
                      style: TextStyleClass.black16_400,
                    ),
                  ),
                ],
              ),
            ),
          ),
            Text(
                'Version: ${Appkeys.appversion}',
                style: GoogleFonts.poppins(
                  color: ColorClass.blueGrey1,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: FadeTransition(
              opacity: _animation,
              child: Image.asset(
                'assets/images/D4DX.png',
                width: 100,
                height: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}