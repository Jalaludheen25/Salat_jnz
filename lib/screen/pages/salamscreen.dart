import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salat_al_janaza/constants/textstyleclass.dart';
import 'package:salat_al_janaza/screen/pages/takbeerScreen.dart';
import 'package:salat_al_janaza/screen/provider/prayerstepsprovider.dart';
import 'package:salat_al_janaza/widgets/prayer_step_carousel.dart';
import 'package:salat_al_janaza/widgets/prayer_step_dots_indicator.dart';

import 'package:salat_al_janaza/screen/pages/prayerstepscreen.dart';

class SalamScreen extends StatefulWidget {
  const SalamScreen({Key? key}) : super(key: key);

  @override
  State<SalamScreen> createState() => _SalamScreenState();
}

class _SalamScreenState extends State<SalamScreen> {
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'സലാം ചൊല്ലുക',
                      style: TextStyleClass.primaryFontMalayalam(20, Colors.white, FontWeight.w100),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Instructions
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      ' നാലാം തക്ബീര്‍ ചൊല്ലി വീണ്ടും കൈ കെട്ടി എല്ലാവര്‍കും വേണ്ടി ദുആ ചൈയ്യുക.',
                     style: TextStyleClass.primaryFontMalayalam(20, Colors.white,FontWeight.w100),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Prayer Text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _prayerLine(
                            'اَلَّلهُمَّ لاَ تُحَرِّمْنَا اَجْرَهُ وَ لاَ تَفْتِنَّا بَعْدَهُ وَغْفِرْلَنَا وَلَهُ رَبَّنَا اَتِنَا فِي الدُّنْياَ حَسَنَتً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَبَ النَّارِ'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
           Consumer<PrayerStepsProvider>(
            builder: (context, provider, child) {
              return PrayerStepCarousel(
                currentIndex: provider.currentPage,
                onPageChanged: (index) => provider.setCurrentPage(index, context),
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
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        style: TextStyleClass.primaryFontArabic(16, Colors.white),
      ),
    );
  }
}
