import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salat_al_janaza/constants/textstyleclass.dart';
import 'package:salat_al_janaza/screen/provider/prayerstepsprovider.dart';
import 'package:salat_al_janaza/widgets/prayer_step_carousel.dart';
import 'package:salat_al_janaza/widgets/prayer_step_dots_indicator.dart';

class Prayerdeceasedscreen extends StatefulWidget {
  const Prayerdeceasedscreen({Key? key}) : super(key: key);

  @override
  State<Prayerdeceasedscreen> createState() => _PrayerdeceasedscreenState();
}

class _PrayerdeceasedscreenState extends State<Prayerdeceasedscreen> {
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
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'മയ്യിത്തിന് വേണ്ടി ദുആ',
                      style: TextStyleClass.primaryFontMalayalam(20, Colors.white, FontWeight.w100),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Instructions
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      ' മൂന്നാം തക്ബീര്‍ ചൊല്ലി വീണ്ടും കൈ കെട്ടി മയ്യിത്തിന് വേണ്ടി ദുആ ചൈയ്യുക:',
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
                            'اَلَّلهُمَّ أغْفِرْلَهُ وَرْحَمْهُ وَعْفُ عَنْهُ وَعَافِهِ وَاَكْرِمْ نُزُلَهُ وَوَسِّعْ مَدْخَلَهُ وَغْسِلْهُ بِالْمَاءِ وَثَّلْجِ وَالْبَرَدِ وَنَقِّهِ مِنَالْخَطَايَا كَمَا يُنَقَّ الْثَّوْبُ الْاَبْيَضُ مِنَ الدَّنٍَسِ وَاَبْدِلْهُ دَارً خَيْرً مِنْ دَارِهِ وَاَهْلً خَيْرً مِّنْ اَهْلِهِ وَزَوْجً خَيْرًمِّنْ زَوْجِهِ وَاَدْخِلْهُ الْجَنَّتَ وَاَعِذْهُ مِنْ عَذَابِ الْقَبْرِ وَفِتْنَتِهِ وَمِنْ عَذَابِ الْنَّارٍ'),
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
