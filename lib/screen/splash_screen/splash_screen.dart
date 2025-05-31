import 'package:flutter/material.dart';
import 'package:janaza_guide/constants/iconclass.dart';
import 'package:janaza_guide/screen/homescreen/home_screen.dart';
import 'package:janaza_guide/widget/force_update.dart';
import 'package:provider/provider.dart';
import 'package:janaza_guide/provider/version_check_provider.dart';

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

    // Use Future.microtask to schedule the version check after the current build phase
    Future.microtask(() {
      _checkVersionAndNavigate();
    });
  }

  Future<void> _checkVersionAndNavigate() async {
    if (!mounted) return;
    
    final versionProvider = Provider.of<VersionCheckProvider>(context, listen: false);
    await versionProvider.checkVersion();

    if (!mounted) return;

    if (versionProvider.needsUpdate) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ForceUpdatePage(),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF421882),
              Color(0xFF2B0364),
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Background Arabic text
            Positioned(
              top: 0,
              child: Image.asset(IconClass.arabicImage),
            ),
            // Center logo with animation
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  IconClass.logo,
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            // Bottom image
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                IconClass.bottomimage,
                fit: BoxFit.fitWidth,
              ),
            ),
            // D4DX logo at bottom
            Positioned(
              bottom: 32,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 59,
                  height: 59,
                  child: Image.asset(
                    IconClass.d4dx,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}