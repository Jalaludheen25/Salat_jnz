import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/iconclass.dart';

import 'package:janaza_guide/screen/bathing_corpse/bathing_corpse_screen.dart';
import 'package:janaza_guide/screen/janaza_samskaranam/janaza_samskaranam.dart';
import 'package:janaza_guide/screen/kafan/kafan_screen.dart';
import 'package:janaza_guide/screen/mayyith_samskaranam/mayyith_samskaranam.dart';
import 'package:janaza_guide/screen/after_janaza/after_janazacare.dart';
import 'package:janaza_guide/screen/salat_janaza/prayerjanazascreen.dart';
import 'package:janaza_guide/widget/appdrawer.dart';
import 'package:janaza_guide/widget/custom_header.dart';
import 'package:janaza_guide/provider/language_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, langProvider, child) {
        final menuItems = [
          {
            'title': langProvider.t('home.mayyith'),
            'icon': IconClass.deadbodyicon,
            'screen': const MayyithScreen(),
          },
          {
            'title': langProvider.t('home.bathing'),
            'icon': IconClass.deadbodyicon,
            'screen': const BathingCorpseScreen(),
          },
          {
            'title': langProvider.t('home.kafan'),
            'icon': IconClass.deadbody2,
            'screen': const KafanScreen(),
          },
          {
            'title': langProvider.t('home.prayer'),
            'icon': IconClass.prayericon,
            'screen': const SalatAlJanazaScreen(),
          },
          {
            'title': langProvider.t('home.janaza'),
            'icon': IconClass.prayericon,
            'screen': const JanazaSamskaranam(),
          },
          {
            'title': langProvider.t('home.after'),
            'icon': IconClass.deadbody2,
            'screen': const Janazacaredetails(),
          },
        ];

        return Scaffold(
          backgroundColor: ColorClass.white,
          key: _scaffoldKey,
          extendBodyBehindAppBar: true,
          appBar: CustomHeader(
            showMenuButton: true,
            onMenuPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
          drawer: AppDrawer(),
          body: SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 25),
                      // Quranic Verse Container
                      Column(
                        children: [
                          Text(
                            'كُلُّ نَفْسٍ ذَائِقَةُ الْمَوْتِ ۗ وَإِنَّمَا تُوَفَّوْنَ أُجُورَكُمْ يَوْمَ الْقِيَامَةِ ۖ فَمَن زُحْزِحَ عَنِ النَّارِ وَأُدْخِلَ الْجَنَّةَ فَقَدْ فَازَ ۗ وَمَا الْحَيَاةُ الدُّنْيَا إِلَّا مَتَاعُ الْغُرُورِ ﴿١٨٥﴾',
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.amiri(
                              fontSize: 18,
                              height: 2,
                              color: ColorClass.black,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            langProvider.t('home.quran_translation'),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.anekMalayalam(
                              fontSize: 15,
                              letterSpacing: 0.1,
                              color: ColorClass.primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: ColorClass.primaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: menuItems
                          .map((item) => _buildMenuItem(item))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildMenuItem(Map<String, dynamic> item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => item['screen']),
          );
        },
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              const SizedBox(width: 20),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: ColorClass.primaryColor.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Image.asset(
                    item['icon'],
                    color: ColorClass.primaryColor,
                    width: 18,
                    height: 18,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  item['title'],
                  style: GoogleFonts.anekMalayalam(
                    color: ColorClass.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: ColorClass.primaryColor,
                size: 24,
              ),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}
