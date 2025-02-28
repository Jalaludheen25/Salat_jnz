import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/appkeys.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/screen/drawer/aboutscreen.dart';
import 'package:janaza_guide/screen/drawer/contactscreen.dart';
import 'package:janaza_guide/screen/drawer/donatescreen.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  Future<void> _sendFeedback() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'mail@d4dx.co',
      queryParameters: {
        'subject': 'Feedback for Janaza Guide App',
      },
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: ColorClass.primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: ColorClass.secondaryColor,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  if (!Platform.isIOS)
                    _buildSettingsItem(
                      context,
                      icon: Icons.favorite,
                      title: 'Donate',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DonationDetails()),
                      ),
                    ),
                  _buildSettingsItem(
                    context,
                    icon: Icons.call,
                    title: 'Contact',
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactPage()),
                    ),
                  ),
                  _buildSettingsItem(
                    context,
                    icon: Icons.feedback,
                    title: 'Send Feedback',
                    onTap: _sendFeedback,
                  ),
                  _buildSettingsItem(
                    context,
                    icon: Icons.info,
                    title: 'About',
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
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

  Widget _buildSettingsItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      onTap: onTap,
      trailing: const Icon(
        Icons.chevron_right,
        color: Colors.white,
      ),
    );
  }
}
