import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/appkeys.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/iconclass.dart';
import 'package:janaza_guide/constants/textstyleclass.dart';
import 'package:janaza_guide/screen/bathing_corpse/bathing_corpse_screen.dart';
import 'package:janaza_guide/screen/janaza_samskaranam/janaza_samskaranam.dart';
import 'package:janaza_guide/screen/kafan/kafan_screen.dart';
import 'package:janaza_guide/screen/mayyith_samskaranam/mayyith_samskaranam.dart';
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
      'title': 'മയ്യിത്ത് കുളിപ്പിക്കല്‍',
      'icon': IconClass.deadbodyicon,
      'screen': const BathingCorpseScreen(),
    },
    {
      'title': 'കഫന്‍ ചെയ്യല്‍',
      'icon': IconClass.deadbody2,
      'screen': const KafanScreen(),
    },
    {
      'title': 'മയ്യിത്ത് നമസ്കാരം',
      'icon': IconClass.prayericon,
      'screen': const SalatAlJanazaScreen(),
    },
    {
      'title': 'ജനാസ സംസ്കരണം',
      'icon': IconClass.prayericon,
      'screen': const JanazaSamskaranam(),
    },
    {
      'title': 'അറിയേണ്ട മറ്റു കാര്യങ്ങൾ',
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
                          fontSize: 18,
                          height: 2,
                          color: ColorClass.black,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'എല്ലാ മനുഷ്യരും മരണം രുചിക്കുന്നവരാണ്. നിങ്ങളുടെ കര്‍മഫലമെല്ലാം ഉയിര്‍ത്തെഴുന്നേല്‍പുനാളില്‍ മാത്രമാണ് പൂര്‍ണമായും നിങ്ങള്‍ക്കു നല്‍കുക. അപ്പോള്‍ നരകത്തീയില്‍ നിന്നകറ്റപ്പെടുകയും സ്വര്‍ഗത്തില്‍ പ്രവേശിപ്പിക്കപ്പെടുകയും ചെയ്യുന്നവനാണ് വിജയംവരിച്ചവന്‍. ഐഹികജീവിതം ചതിക്കുന്ന ചരക്കല്ലാതൊന്നുമല്ല. ( 3:185)',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.anekMalayalam(
                          fontSize: 15 ,
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
                    topRight: Radius.circular(45)
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
                  color: ColorClass.primaryColor.withOpacity(0.2),
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