import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salat_al_janaza/constants/appkeys.dart';
import 'package:salat_al_janaza/constants/colorclass.dart';
import 'package:salat_al_janaza/screen/drawer/aboutscreen.dart';
import 'package:salat_al_janaza/screen/drawer/donatescreen.dart';

import 'package:salat_al_janaza/screen/drawer/contactscreen.dart';
import 'package:salat_al_janaza/screen/janazacare.dart';
import 'package:salat_al_janaza/screen/payerjanazascreen.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: ColorClass.secondaryColor,
        child: Column(
          children: [
            Expanded(
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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset(
                            'assets/icons/app logo.png',
                            height: 80,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Janaza Guide',
                          style: GoogleFonts.poppins(
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
                              builder: (context) => MayyithScreen()));
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
                              builder: (context) => SalatAlJanazaScreen()));
                    },
                  ),
                  _buildDrawerItem(
                    icon: Icons.favorite,
                    title: 'Donate',
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DonationDetails())),
                  ),
                  _buildDrawerItem(
                    icon: Icons.call,
                    title: 'Contact',
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ContactPage())),
                  ),
                  _buildDrawerItem(
                    icon: Icons.info,
                    title: 'About',
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutPage())),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Version: ${Appkeys.appversion}',
                style: GoogleFonts.poppins(
                  color: ColorClass.blueGrey1,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
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
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 16)),
      onTap: onTap,
    );
  }
}
