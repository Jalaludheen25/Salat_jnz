import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/screen/pages/prayerstepscreen.dart';

class SalatAlJanazaScreen extends StatefulWidget {
  const SalatAlJanazaScreen({super.key});

  @override
  State<SalatAlJanazaScreen> createState() => _SalatAlJanazaScreenState();
}

class _SalatAlJanazaScreenState extends State<SalatAlJanazaScreen> {
  // Constants for texts that contain Arabic
  static const String hadithText =
      'മയ്യിത്ത് നമസ്കാരം സാമൂഹ്യബാധ്യതയാണ്. സമൂഹത്തിൽ കുറച്ചു പേർ അതു നിർവഹിച്ചാൽ ബാധ്യതയിൽ നിന്ന് എല്ലാവരും മുക്തരാവും. അബൂഹുറൈറ (റ) ഉദ്ധരിക്കുന്നു. إن النبي كان يؤتى بالرجل المتوفى عليه الدين فيسأل هل ترك لدينه فضلا، فإن حدث أنه ترك وفاء صلى، وإلا قال للمسلمين: صلوا لى صاحبكم  (കട ബാധ്യതയോടുകൂടി മരിച്ച ആളെ നബി (സ)യുടെ മുമ്പിൽ കൊണ്ടുവരുമായിരുന്നു. അയാൾ കടം വീട്ടാൻ വല്ലതും മിച്ചം വെച്ചിട്ടുണ്ടോ എന്ന് നബി(സ) ചോദിക്കും. വീട്ടാൻ മിച്ചം വെച്ചിട്ടുണ്ടെന്ന് പറഞ്ഞാൽ അവിടുന്ന് നമസ്കരിക്കും. ഇല്ലെങ്കിൽ മുസ്ലിംകളോട് പറയും നിങ്ങളുടെ കൂട്ടുകാരന് വേണ്ടി നമസ്കരിക്കുക- ബുഖാരി, മുസ് ലിം)മയ്യിത്ത് നമസ്കാരം ഏറെ പ്രധാനപ്പെട്ട കാര്യമാണ്. നബി (സ) പറഞ്ഞതായി അബൂഹുറൈറ(റ) ഉദ്ധരിക്കുന്നു.من تبع جنازة وصلى عليها فله قيراط ومن تبعها حتى يفرغ منها فله قيراطان أحدهما مثل أحد (رواه الجماعة)(മയ്യിത്തിനെ പിന്തുടർന്നു ജനാസ നമസ്കരിച്ചവന് ഒരു ഖീറാത്ത് പ്രതിഫലമുണ്ട്. സംസ്കരണത്തിൽ നിന്ന് പൂർണമായി വിരമിക്കുംവരെ അതിനെ പിന്തുടരുന്നവന്ന് രണ്ട് ഖീറാത്താണ് പ്രതിഫലം. ഒരു ഖീറാത്ത് ഉഹ്ദു മലയ്ക്ക് തുല്യമാണ്.)';

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
            initialChildSize: 0.95,
            minChildSize: 0.5,
            maxChildSize: 1.0,
            builder: (_, controller) => Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
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
          'മയ്യിത്ത് നമസ്കാരം',
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    ImageClass.bgjanza,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
              SizedBox(height: 20),

              // Mixed text with Arabic and Malayalam
              Text(
                hadithText,
                style: GoogleFonts.anekMalayalam(
                  fontSize: 20,
                  color: ColorClass.white,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start ,
              ),

              const SizedBox(height: 20),
              // Prayer Steps Button
             

            
              
              const SizedBox(height: 20),
              Text(
                'മയ്യിത്ത് നമസ്കാരത്തിന്റെ നിർബന്ധഘടകങ്ങൾ താഴെ പറയുന്നവയാണ്.',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 12),
              Text(
                '1) നിയ്യത്ത്\n2) സാധിക്കുന്നവൻ നിൽക്കൽ\n3) നാലു തക്ബീർ,',
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
