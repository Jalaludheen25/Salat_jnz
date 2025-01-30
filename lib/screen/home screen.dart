import 'package:flutter/material.dart';
import 'package:salat_al_janaza/constants/colorclass.dart';
import 'package:salat_al_janaza/constants/iconclass.dart';
import 'package:salat_al_janaza/constants/textstyleclass.dart';
import 'package:salat_al_janaza/screen/drawer/aboutpage.dart';
import 'package:salat_al_janaza/screen/drawer/donatepage.dart';


import 'package:salat_al_janaza/screen/MayyithScreen.dart';
import 'package:salat_al_janaza/screen/drawer/conactpage.dart';
import 'package:salat_al_janaza/screen/salatalJanazascreen.dart';

class PrayerScreen extends StatefulWidget {
  const PrayerScreen({Key? key}) : super(key: key);

  @override
  State<PrayerScreen> createState() => _PrayerScreenState();
}

class _PrayerScreenState extends State<PrayerScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,  // Move the key to Scaffold instead of AppBar
      backgroundColor: ColorClass.darkGrey1,
      
      drawer: _buildDrawer(),  // Using the new drawer method
      body: Column(
        children: [
          
          _buildHeader(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Prayers List',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 10),
              children: [
                _buildPrayerItem(
                  leading: Image.asset(
                    IconClass.deadbodyicon,
                    color: ColorClass.blueGrey1,
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
                _buildPrayerItem(
                  leading: Image.asset(
                    IconClass.prayericon,
                    color: ColorClass.blueGrey1,
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Implemented drawer builder method
  Widget _buildDrawer() {
    return Drawer(
     
      child: Container(
        color: ColorClass.darkGrey1,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                  Image.asset(
                  'assets/icons/app logo.png', // Replace with actual asset
                  height: 80,
                  // color: const Color(0xFF009688),
                ),
                  
                  
                  SizedBox(height: 10),
                  Text(
                    'Salath Learning',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            _buildDrawerItem(
              icon: Icons.home,
              title: 'Home',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            _buildDrawerItem(
              icon: Icons.book,
              title: 'Prayer Guide',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MayyithScreen(),
                  ),
                );
              },
            ),
            _buildDrawerItem(
              icon: Icons.mosque,
              title: 'Janaza Prayer',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SalatAlJanazaScreen(),
                  ),
                );
              },
            ),
            const Divider(color: Colors.grey),
            _buildDrawerItem(
              icon: Icons.favorite,
              title: 'Donate',
              onTap: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const  DonationDetails(),
                  ),
                );
              },
            ),
            _buildDrawerItem(
              icon: Icons.call,
              title: 'Contact',
              onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const  ContactPage(),
                  ),
                );
              },
            ),
            _buildDrawerItem(
              icon: Icons.info,
              title: 'About',
              onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const  AboutPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build drawer items
  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      onTap: onTap,
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
       
        
        children: [
          
          Row(
            children: [
              IconButton(
              icon: const Icon(
                Icons.format_list_bulleted,
                color: Colors.white,
              ),
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
            SizedBox(width: 40,),
              Text(
                    'Salath Learning',
                    style: TextStyleClass.primaryFont600(24, Colors.white,),
                  ),
              
            ],
          ),
           const Text(
                    'Step by step',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
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
          trailing: const Icon(
            Icons.chevron_right,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 72, right: 16),
          child: Container(
            height: 0.5,
            color: Colors.grey.withOpacity(0.3),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}