import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salat_al_janaza/constants/colorclass.dart';
import 'package:salat_al_janaza/constants/imagesclass.dart';
import 'package:salat_al_janaza/screen/pages/prayerstepscreen.dart';

class SalatAlJanazaScreen extends StatefulWidget {
  const SalatAlJanazaScreen({Key? key}) : super(key: key);

  @override
  State<SalatAlJanazaScreen> createState() => _SalatAlJanazaScreenState();
}

class _SalatAlJanazaScreenState extends State<SalatAlJanazaScreen> {
  void _showPrayerStepsBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {}, // Prevent taps from closing the bottom sheet
          child: DraggableScrollableSheet(
            initialChildSize: 0.95, // 95% of screen height
            minChildSize: 0.5,
            maxChildSize: 1.0,
            builder: (_, controller) => Container(
              child: Stack(
                children: [
                  // Prayer Steps Content
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 70), // Adjust for title space
                    child: const PrayerStepsSliderView(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.detailprimary,
      appBar: AppBar(
        backgroundColor: ColorClass.secondaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorClass.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'സ്വലാത്ത് ജനാസ',
          style: GoogleFonts.anekMalayalam(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Prayer Icon Card
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    ImageClass.bgjanza,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Improved Prayer Steps Button
              ElevatedButton(
                onPressed: _showPrayerStepsBottomSheet,
                style: ElevatedButton.styleFrom(
                  foregroundColor: ColorClass.white,
                  backgroundColor: ColorClass.secondaryColor,
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.format_list_bulleted,
                            color: ColorClass.white),
                        SizedBox(width: 12),
                        Text(
                          'പ്രാർത്ഥനാ ഘട്ടങ്ങൾ',
                          style: GoogleFonts.anekMalayalam(
                            fontSize: 18,
                            color: ColorClass.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'View All',
                          style: GoogleFonts.poppins(
                            color: ColorClass.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: ColorClass.white,
                          size: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Description Text
              Text(
                'ഈ പ്രാർത്ഥന എങ്ങനെ നന്നായി നിർവഹിക്കാമെന്ന് ഈ വിഭാഗം വിവരിക്കുന്നു',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 20,
                  color: ColorClass.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              // Prayer Details
              Text(
                'നിത്യജീവിതത്തിൽ വിശ്വാസി അനിവാര്യമായും അറിഞ്ഞിരിക്കേണ്ട ഒന്നാണ് മയ്യിത്ത് നിസ്കാരം. സ്വന്തം ബന്ധുക്കളുടെയും അല്ലാത്തതുമായി ധാരാളം പേരുടെ മയ്യിത്ത് നിസ്കരിക്കാൻ ഓരോരുത്തർക്കും അവസരമുണ്ടാകും. അതിനാൽ, അത് എങ്ങനെയാണെന്ന് മനസ്സിലാക്കിവെക്കൽ ആവശ്യമാണ്. അതാണ് ഇവിടെ വിവരിക്കുന്നു.',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 20,
                  color: ColorClass.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'ഈ സ്വലാത്തിന് രണ്ട് ഭാഗങ്ങളുണ്ട്:',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                '1) അല്ലാഹു അക്ബർ എന്ന് നാല് തവണ പറയുക\n\n'
                '2)  ഖിയാം അഥവാ മൂന്ന് സുന്നത്തെ മുഅക്കദകൾ: അൽ-ഫാതിഹ, ദുറൂദ് ഷരീഫ്, മയ്യിത്തിനു വേണ്ടിയുള്ള ദുആ',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
