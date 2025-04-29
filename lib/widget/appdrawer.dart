import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/appkeys.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/screen/drawer/aboutscreen.dart';
import 'package:janaza_guide/screen/drawer/contactscreen.dart';
import 'package:janaza_guide/screen/drawer/donatescreen.dart';
import 'package:shake_flutter/enums/shake_screen.dart';
import 'package:shake_flutter/shake_flutter.dart';

import 'package:url_launcher/url_launcher.dart';

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
        color: ColorClass.white,
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
                    icon: Icons.favorite,
                    title: 'Donate',
                     onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  DonationDetails())),
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
                  _buildDrawerItem(
                    icon: Icons.info,
                    title: 'Raise a bug',
                     onTap: () {
            Navigator.pop(context);
            Shake.show(ShakeScreen.home);
          },
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
      leading: Icon(icon, color: ColorClass.primaryColor),
      title: Text(title,
          style: GoogleFonts.poppins(color: ColorClass.primaryColor, fontSize: 16)),
      onTap: onTap,
    );
  }

  Future<void> _openDonationPage() async {
    final Uri donationUri =
        Uri.parse('https://pages.razorpay.com/janaza-guide');
    if (await canLaunchUrl(donationUri)) {
      await launchUrl(donationUri, mode: LaunchMode.externalApplication);
    }
  }
}
