import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/iconclass.dart';
import 'package:janaza_guide/constants/app_constants.dart';
import 'package:janaza_guide/screen/drawer/aboutscreen.dart';
import 'package:janaza_guide/screen/drawer/contactscreen.dart';
import 'package:provider/provider.dart';
import 'package:janaza_guide/provider/version_check_provider.dart';
// import 'package:janaza_guide/provider/language_provider.dart'; // Uncomment to enable language selection
import 'package:shake_flutter/shake_flutter.dart';
import 'package:shake_flutter/enums/shake_screen.dart';
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
                  Container(
                    height: 120,
                    decoration: BoxDecoration(color: ColorClass.primaryColor),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 60.0, bottom: 6.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              IconClass.logo,
                              height: 50,
                              width: 50,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              'Janaza Guide',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      _buildDrawerItem(
                        icon: Icons.home,
                        title: 'Home',
                        onTap: () => Navigator.pop(context),
                      ),

                      // Language Selector Button - Commented out for now
                      // Uncomment the lines below to enable language selection
                      /*
                      _buildDrawerItem(
                        icon: Icons.language,
                        title: 'Select Language',
                        onTap: () => _showLanguageDialog(context),
                      ),
                      */

                      _buildDrawerItem(
                        icon: Icons.favorite,
                        title: 'Donate',
                        onTap: () async {
                          final Uri url =
                              Uri.parse('https://rzp.io/rzp/janaza-guide');
                          await launchUrl(url,
                              mode: LaunchMode.externalApplication);
                        },
                      ),
                      _buildDrawerItem(
                        icon: Icons.call,
                        title: 'Contact',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactPage()),
                        ),
                      ),
                      _buildDrawerItem(
                        icon: Icons.info,
                        title: 'About',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutPage()),
                        ),
                      ),
                      _buildDrawerItem(
                        icon: Icons.bug_report,
                        title: 'Report Bug',
                        onTap: () {
                          Navigator.pop(context);
                          Shake.show(ShakeScreen.home);
                        },
                      ),
                      _buildDrawerItem(
                        icon: Icons.privacy_tip,
                        title: 'Privacy Policy',
                        onTap: () async {
                          final Uri url =
                              Uri.parse('https://d4dx.co/privacy-policy/');
                          await launchUrl(url,
                              mode: LaunchMode.externalApplication);
                        },
                      ),
                      // More space before Powered by section
                      const SizedBox(height: 24),
                      // Combined Powered by and Version section
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Consumer<VersionCheckProvider>(
                          builder: (context, versionProvider, child) {
                            return Column(
                              children: [
                                Text(
                                  "Powered by",
                                  style: GoogleFonts.poppins(
                                    color: ColorClass.blueGrey1,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Image.asset(
                                  IconClass.d4dxblue,
                                  height: 40,
                                  width: 100,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  "Version: ${AppConstants.appVersion}",
                                  style: GoogleFonts.poppins(
                                    color: ColorClass.blueGrey1,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                if (versionProvider.newVersion != null &&
                                    versionProvider.newVersion !=
                                        AppConstants.appVersion)
                                  Text(
                                    "Latest: ${versionProvider.newVersion}",
                                    style: GoogleFonts.poppins(
                                      color: ColorClass.blueGrey1,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
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
      title: Text(
        title,
        style: GoogleFonts.poppins(
          color: ColorClass.primaryColor,
          fontSize: 16,
        ),
      ),
      onTap: onTap,
    );
  }

  // Language Selection Methods - Commented out for now
  // Uncomment the methods below to enable language selection functionality
  /*
  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(
            'Select Language',
            style: GoogleFonts.poppins(
              color: ColorClass.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildLanguageOption(
                dialogContext,
                'ml',
                'മലയാളം',
                'Malayalam',
              ),
              const SizedBox(height: 8),
              _buildLanguageOption(
                dialogContext,
                'en',
                'English',
                'English',
              ),
              const SizedBox(height: 8),
              _buildLanguageOption(
                dialogContext,
                'ur',
                'اردو',
                'Urdu',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: Text(
                'Cancel',
                style: GoogleFonts.poppins(
                  color: ColorClass.primaryColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildLanguageOption(
    BuildContext context,
    String langCode,
    String nativeName,
    String englishName,
  ) {
    return Consumer<LanguageProvider>(
      builder: (context, langProvider, child) {
        final isSelected = langProvider.lang == langCode;

        return InkWell(
          onTap: () {
            // Try to access the language provider
            try {
              langProvider.loadLanguage(langCode);

              Navigator.of(context).pop();

              // Show confirmation
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Language changed to $englishName'),
                  duration: const Duration(seconds: 2),
                  backgroundColor: ColorClass.primaryColor,
                ),
              );
            } catch (e) {
              Navigator.of(context).pop();

              // Show error message
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Language feature will be available soon'),
                  duration: const Duration(seconds: 2),
                ),
              );
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.grey.withValues(alpha: 0.3),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.language,
                  color: ColorClass.primaryColor,
                  size: 20,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nativeName,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                      if (nativeName != englishName)
                        Text(
                          englishName,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                    ],
                  ),
                ),
                Icon(
                  isSelected ? Icons.check : Icons.crop_square,
                  color: ColorClass.primaryColor,
                  size: 16,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  */
}
