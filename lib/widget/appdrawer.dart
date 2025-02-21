import 'package:flutter/material.dart';
import 'package:salat_al_janaza/constants/colorclass.dart';
import 'package:salat_al_janaza/screen/drawer/aboutpage.dart';
import 'package:salat_al_janaza/screen/drawer/donatepage.dart';
import 'package:salat_al_janaza/screen/MayyithScreen.dart';
import 'package:salat_al_janaza/screen/drawer/conactpage.dart';
import 'package:salat_al_janaza/screen/salatalJanazascreen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: ColorClass.secondaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: ColorClass.primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/icons/app logo.png',
                    height: 80,
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
              onTap: () => Navigator.pop(context),
            ),
            _buildDrawerItem(
              icon: Icons.book,
              title: 'Prayer Guide',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MayyithScreen()));
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
                        builder: (context) => const SalatAlJanazaScreen()));
              },
            ),
            const Divider(color: Colors.grey),
            _buildDrawerItem(
              icon: Icons.favorite,
              title: 'Donate',
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DonationDetails())),
            ),
            _buildDrawerItem(
              icon: Icons.call,
              title: 'Contact',
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ContactPage())),
            ),
            _buildDrawerItem(
              icon: Icons.info,
              title: 'About',
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AboutPage())),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title,
          style: const TextStyle(color: Colors.white, fontSize: 16)),
      onTap: onTap,
    );
  }
}
