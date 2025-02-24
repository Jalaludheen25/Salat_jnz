import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salat_al_janaza/constants/appkeys.dart';
import 'package:salat_al_janaza/constants/colorclass.dart';
import 'package:salat_al_janaza/constants/iconclass.dart';
import 'package:salat_al_janaza/constants/imagesclass.dart';
import 'package:salat_al_janaza/screen/mayyithScreen.dart';
import 'package:salat_al_janaza/screen/salatalJanazascreen.dart';
import 'package:salat_al_janaza/widget/appdrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Map<String, dynamic>> prayerItems = [
    {
      'title': 'മയ്യിത്ത് പരിപാലനം',
      'icon': IconClass.deadbodyicon,
      'screen': const MayyithScreen(),
    },
    {
      'title': 'ജനാസ നമസ്കാരം',
      'icon': IconClass.prayericon,
      'screen': const SalatAlJanazaScreen(),
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
                appkeys.appname,
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
      body: Stack(
        children: [
          // Background image (now covers the entire screen including AppBar area)
          Positioned.fill(
            child: Image.asset(
              ImageClass.homebg,
              fit: BoxFit.cover,
            ),
          ),
          // Overlay container with opacity (covers entire screen)
          Positioned.fill(
            child: Container(
              color: ColorClass.primaryColor.withOpacity(0.7),
            ),
          ),
          // Content - now with padding from top to account for AppBar
          SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 200),
                child: ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  itemCount: prayerItems.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 32),
                  itemBuilder: (context, index) {
                    return _buildPrayerItem(prayerItems[index]);
                  },
                ),
              ),
            ),
          ),
        ],
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
      child: AspectRatio(
        aspectRatio: 1,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                item['icon'],
                color: ColorClass.primaryColor,
                width: 60,
                height: 60,
              ),
              const SizedBox(height: 10),
              Text(
                item['title'],
                textAlign: TextAlign.center,
                style: const TextStyle(
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
