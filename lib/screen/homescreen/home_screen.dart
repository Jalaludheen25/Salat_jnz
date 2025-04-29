import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/appkeys.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/iconclass.dart';
import 'package:janaza_guide/constants/textstyleclass.dart';
import 'package:janaza_guide/screen/mayyith_samskaranam/janazacare.dart';
import 'package:janaza_guide/screen/after_janaza/after_janazacare.dart';

import 'package:janaza_guide/screen/salat_janaza/prayerjanazascreen.dart';
import 'package:janaza_guide/widget/appdrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Map<String, dynamic>> menuItems = [
    {
      'title': 'മയ്യിത്ത് സംസ്കരണം',
      'icon': IconClass.deadbodyicon,
      'screen': const MayyithScreen(),
    },
    {
      'title': 'മയ്യിത്ത് നമസ്കാരം',
      'icon': IconClass.prayericon,
      'screen': const SalatAlJanazaScreen(),
    },
    {
      'title': 'ജനാസാന്തര കാര്യങ്ങൾ',
      'icon': IconClass.deadbody2,
      'screen': const Janazacaredetails(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.white,
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
            margin: const EdgeInsets.only(left: 8),
            child: IconButton(
              icon: const Icon(
                Icons.menu_rounded,
                color: ColorClass.black,
                size: 30,
              ),
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            ),
          ),
          title: Text(
            Appkeys.appname,
            style: TextStyleClass.abelDefault(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: ColorClass.black,
              letterSpacing: 0.8,
            ),
          ),
        ),
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
                          fontSize: 20,
                          height: 2,
                          color: ColorClass.black,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'സമസ്ത മനുഷ്യരും മരണം രുചിക്കേണ്ടവരാകുന്നു. നിങ്ങളെല്ലാവരുടെയും കര്‍മഫലം അന്ത്യനാളില്‍ പരിപൂര്‍ണമായി നല്‍കപ്പെടും. അവിടെ നരകാഗ്നിയില്‍നിന്ന് അകറ്റപ്പെടുകയും സ്വര്‍ഗത്തില്‍ പ്രവേശിപ്പിക്കപ്പെടുകയും ചെയ്തവനാരോ, അവനത്രെ യഥാര്‍ഥത്തില്‍ വിജയം നേടിയവന്‍. ഈ ഭൗതികജീവിതമാകട്ടെ, വഞ്ചനാത്മകമായ ചരക്കു മാത്രമാകുന്നു.(3:185)',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.anekMalayalam(
                          fontSize: 16,
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
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: menuItems.map((item) => _buildMenuItem(item)).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(Map<String, dynamic> item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => item['screen']),
          );
        },
        child: Container(
          height: 65,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              const SizedBox(width: 20),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: ColorClass.primaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Image.asset(
                    item['icon'],
                    color: ColorClass.primaryColor,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  item['title'],
                  style: GoogleFonts.anekMalayalam(
                    color: ColorClass.primaryColor,
                    fontSize: 18,
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