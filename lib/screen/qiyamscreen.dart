import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salat_al_janaza/screen/pages/takbeerScreen.dart';

import 'package:salat_al_janaza/screen/provider/prayerstepsprovider.dart';

import 'package:salat_al_janaza/screen/pages/prayerstepscreen.dart';
import 'package:salat_al_janaza/widgets/prayer_step_carousel.dart';
import 'package:salat_al_janaza/widgets/prayer_step_dots_indicator.dart';

class QiyyamPrayerStep extends StatefulWidget {
  const QiyyamPrayerStep({Key? key}) : super(key: key);

  @override
  State<QiyyamPrayerStep> createState() => _QiyyamPrayerStepState();
}

class _QiyyamPrayerStepState extends State<QiyyamPrayerStep> {
  void _handleDotTapped(BuildContext context, int index) {
    Provider.of<PrayerStepsProvider>(context, listen: false)
        .setCurrentPage(index, context);
    
    // Navigate to appropriate screen based on index
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const TakbeerScreen()),
      );
    }
    // Add more conditions for other indices if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'പ്രാർത്ഥനാ ഘട്ടങ്ങൾ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Prayer Image Container
                  Container(
                    width: double.infinity,
                    height: 350,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2A2A2A),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        // Prayer Image
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'assets/qiyyam image.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        // Play Button
                        Positioned(
                          bottom: 20,
                          right: 20,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.play_arrow,
                              color: Colors.blue,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Qiyyam Title
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'ഖിയാം',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Instructions
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'നിന്ന നിലയിൽ തന്നെ തുടരുക, ഖുർആനിലെ പ്രാരംഭ പ്രാർത്ഥനയായ അൽ-ഫാതിഹ പാരായണം ചെയ്യുക:',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Prayer Text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _prayerLine('بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ'),
                        _prayerLine('الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ'),
                        _prayerLine('الرَّحْمَٰنِ الرَّحِيمِ'),
                        _prayerLine('مَالِكِ يَوْمِ الدِّينِ'),
                        _prayerLine('إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ'),
                        _prayerLine('اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ ، صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ'),
                        _prayerLine('غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ.\nآمِينَ'),
                      ],

                    ),
                  ),
                ],
              ),
            ),
          ),
          // Add the dots indicator at the bottom
          Consumer<PrayerStepsProvider>(
            builder: (context, provider, child) {
              return PrayerStepCarousel(
                currentIndex: 1,  // Qiyam is the second step
                onPageChanged: (index) => _handleDotTapped(context, index),
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _prayerLine(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey[300],
          fontSize: 16,
          height: 1.5,
        ),
      ),
    );
  }
}