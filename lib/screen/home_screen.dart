import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/appkeys.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/iconclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/screen/janazacare.dart';
import 'package:janaza_guide/screen/pages/janazacare.dart';
import 'package:janaza_guide/screen/prayerjanazascreen.dart';

import 'package:janaza_guide/widget/appdrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Map<String, dynamic>> prayerItems = [
    {
      'title': 'മയ്യിത്ത് സംസ്കരണം',
      'icon': IconClass.deadbodyicon,
      'screen': const MayyithScreen(),
    },
    {
      'title': 'ജനാസ\nനമസ്കാരം',
      'icon': IconClass.prayericon,
      'screen': const SalatAlJanazaScreen(),
    },
    {
      'title': 'ജനാസനാന്തര\nകാര്യങ്ങൾ',
      'icon': IconClass.deadbodyicon,
      'screen': const Janazacaredetails(),
    },
    // Add more prayer items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // Set to transparent so the Stack shows through
      backgroundColor: Colors.transparent,
      // Make the AppBar transparent with no elevation
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
                color: ColorClass.white,
                size: 30,
              ),
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            ),
          ),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 10),
              Text(
                Appkeys.appname,
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: ColorClass.white,
                  letterSpacing: 0.8,
                  shadows: [
                    Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 3.0,
                      color: ColorClass.black.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
      ),
      drawer: AppDrawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageClass.homebg),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: ColorClass.primaryColor.withOpacity(0.7),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    // Quranic Verse Container
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: ColorClass.secondaryColor.withOpacity(0.5),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'كُلُّ نَفْسٍ ذَائِقَةُ الْمَوْتِ ۗ وَإِنَّمَا تُوَفَّوْنَ أُجُورَكُمْ يَوْمَ الْقِيَامَةِ ۖ فَمَن زُحْزِحَ عَنِ النَّارِ وَأُدْخِلَ الْجَنَّةَ فَقَدْ فَازَ ۗ وَمَا الْحَيَاةُ الدُّنْيَا إِلَّا مَتَاعُ الْغُرُورِ ﴿١٨٥﴾',
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.amiri(
                              fontSize: 20,
                              height: 1.8,
                              color: Colors.white,
                              
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'എല്ലാ മനുഷ്യരും മരണം രുചിക്കുന്നവരാണ്. നിങ്ങളുടെ കര്‍മഫലമെല്ലാം ഉയിര്‍ത്തെഴുന്നേല്‍പുനാളില്‍ മാത്രമാണ് പൂര്‍ണമായും നിങ്ങള്‍ക്കു നല്‍കുക. അപ്പോള്‍ നരകത്തീയില്‍ നിന്നകറ്റപ്പെടുകയും സ്വര്‍ഗത്തില്‍ പ്രവേശിപ്പിക്കപ്പെടുകയും ചെയ്യുന്നവനാണ് വിജയംവരിച്ചവന്‍. ഐഹികജീവിതം ചതിക്കുന്ന ചരക്കല്ലാതൊന്നുമല്ല. (3:185)',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.anekMalayalam(
                              fontSize: 16,
                              height: 1.5,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Prayer Items Grid
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16.0, left: 4.0),
                            child: Text(
                              'ജനാസ കർമ്മങ്ങൾ',
                              style: GoogleFonts.anekMalayalam(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 180,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: prayerItems.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 160,
                                  margin: EdgeInsets.only(right: 16),
                                  child: _buildPrayerItem(prayerItems[index]),
                                );
                              },
                            ),
                          ),
                          // Add some bottom padding
                          SizedBox(height: 70),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPrayerItem(Map<String, dynamic> item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => item['screen']),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: ColorClass.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: ColorClass.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                item['icon'],
                color: ColorClass.primaryColor,
                width: 60,
                height: 60,
              ),
              const SizedBox(height: 12),
              Text(
                item['title'],
                textAlign: TextAlign.center,
                style: GoogleFonts.anekMalayalam(
                  color: ColorClass.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
