import 'package:flutter/material.dart';
import 'package:salat_al_janaza/constants/colorclass.dart';
import 'package:salat_al_janaza/constants/iconclass.dart';
import 'package:salat_al_janaza/screen/MayyithScreen.dart';
import 'package:salat_al_janaza/screen/salatalJanazascreen.dart';

class PrayerScreen extends StatefulWidget {
  const PrayerScreen({Key? key}) : super(key: key);

  @override
  State<PrayerScreen> createState() => _PrayerScreenState();
}

class _PrayerScreenState extends State<PrayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.darkGrey1,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Prayers',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          _buildPrayerItem(
            leading: Image.asset(
              IconClass.deadbodyicon,
              color: Colors.blue,
              width: 40,
              height: 40,
            ),
            title: 'മയ്യിത്ത് പരിപാലനം',
            hasVideo: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MayyithScreen(),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          _buildPrayerItem(
            leading: Image.asset(
              IconClass.prayericon,
              color: Colors.blue,
              width: 40,
              height: 40,
            ),
            title: 'ജനാസ നമസ്കാരം',
            hasVideo: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SalatAlJanazaScreen(),
                ),
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Prayers list',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        currentIndex: 0,
        onTap: (index) {
          // Handle bottom navigation
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.mosque),
            label: 'Prayers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Quran Teacher',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Widget _buildPrayerItem({
    required Widget leading,
    required String title,
    required VoidCallback onTap,
    required bool hasVideo,
  }) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: leading,
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (hasVideo)
                
              const SizedBox(width: 8),
              const Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 72, right: 16),
          child: Container(
            height: 0.5,
            color: Colors.grey.withOpacity(0.3),
          ),
        ),
      ],
    );
  }
}