import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/screen/salat_janaza/prayersinhadith.dart';
import 'package:janaza_guide/screen/salat_janaza/prayerstepscreen.dart';

class SalatAlJanazaScreen extends StatefulWidget {
  const SalatAlJanazaScreen({super.key});

  @override
  State<SalatAlJanazaScreen> createState() => _SalatAlJanazaScreenState();
}

class _SalatAlJanazaScreenState extends State<SalatAlJanazaScreen> {
  // Constants for texts that contain Arabic
  static const String hadithText =
      'മയ്യിത്ത് നമസ്കാരം സാമൂഹ്യബാധ്യതയാണ്. സമൂഹത്തിൽ കുറച്ചു പേർ അതു നിർവഹിച്ചാൽ ബാധ്യതയിൽ നിന്ന് എല്ലാവരും മുക്തരാവും. അബൂഹുറൈറ (റ) ഉദ്ധരിക്കുന്നു. إن النبي كان يؤتى بالرجل المتوفى عليه الدين فيسأل هل ترك لدينه فضلا، فإن حدث أنه ترك وفاء صلى، وإلا قال للمسلمين: صلوا لى صاحبكم  (കട ബാധ്യതയോടുകൂടി മരിച്ച ആളെ നബി (സ)യുടെ മുമ്പിൽ കൊണ്ടുവരുമായിരുന്നു. അയാൾ കടം വീട്ടാൻ വല്ലതും മിച്ചം വെച്ചിട്ടുണ്ടോ എന്ന് നബി(സ) ചോദിക്കും. വീട്ടാൻ മിച്ചം വെച്ചിട്ടുണ്ടെന്ന് പറഞ്ഞാൽ അവിടുന്ന് നമസ്കരിക്കും. ഇല്ലെങ്കിൽ മുസ്ലിംകളോട് പറയും നിങ്ങളുടെ കൂട്ടുകാരന് വേണ്ടി നമസ്കരിക്കുക- ബുഖാരി, മുസ് ലിം)മയ്യിത്ത് നമസ്കാരം ഏറെ പ്രധാനപ്പെട്ട കാര്യമാണ്. നബി (സ) പറഞ്ഞതായി അബൂഹുറൈറ(റ) ഉദ്ധരിക്കുന്നു.من تبع جنازة وصلى عليها فله قيراط ومن تبعها حتى يفرغ منها فله قيراطان أحدهما مثل أحد (رواه الجماعة)(മയ്യിത്തിനെ പിന്തുടർന്നു ജനാസ നമസ്കരിച്ചവന് ഒരു ഖീറാത്ത് പ്രതിഫലമുണ്ട്. സംസ്കരണത്തിൽ നിന്ന് പൂർണമായി വിരമിക്കുംവരെ അതിനെ പിന്തുടരുന്നവന്ന് രണ്ട് ഖീറാത്താണ് പ്രതിഫലം. ഒരു ഖീറാത്ത് ഉഹ്ദു മലയ്ക്ക് തുല്യമാണ്.)';

  @override
  Widget build(BuildContext context) {
    // Check if this is being shown in a bottom sheet
    final bool isInBottomSheet = ModalRoute.of(context)?.settings.name == null;
    
    return Scaffold(
      backgroundColor: ColorClass.white,
      appBar: AppBar(
        backgroundColor: isInBottomSheet ? Colors.transparent : ColorClass.secondaryColor,
        elevation: isInBottomSheet ? 0 : 4,
        leading: IconButton(
          icon: Icon(
            isInBottomSheet ? Icons.close : Icons.arrow_back, 
            color: ColorClass.primaryColor
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'മയ്യിത്ത് നമസ്കാരം',
          style: GoogleFonts.anekMalayalam(
            fontSize: 20,
            color: ColorClass.primaryColor,
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrayerStepsSliderView(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  decoration: BoxDecoration(
                    color: ColorClass.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 2),
                        blurRadius: 6,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: ColorClass.primaryColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.format_list_bulleted,
                              color: ColorClass.primaryColor,
                              size: 20,
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'മയ്യിത്ത് നമസ്കാരം',
                            style: GoogleFonts.anekMalayalam(
                              fontSize: 18,
                              color: ColorClass.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: ColorClass.primaryColor,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                hadithText,
                style: GoogleFonts.anekMalayalam(
                  fontSize: 16,
                  color: ColorClass.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Prayersinhadith(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  decoration: BoxDecoration(
                    color: ColorClass.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 2),
                        blurRadius: 6,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: ColorClass.primaryColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.format_list_bulleted,
                              color: ColorClass.primaryColor,
                              size: 20,
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'ഹദീഥുകളിൽ നിന്നും',
                            style: GoogleFonts.anekMalayalam(
                              fontSize: 18,
                              color: ColorClass.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: ColorClass.primaryColor,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'മയ്യിത്ത് നമസ്കാരത്തിന്റെ നിർബന്ധഘടകങ്ങൾ താഴെ പറയുന്നവയാണ്.',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 18,
                  color: ColorClass.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                '1) നിയ്യത്ത്\n2) സാധിക്കുന്നവൻ നിൽക്കൽ\n3) നാലു തക്ബീർ,',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 18,
                  color: ColorClass.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'ജാബിർ (റ) പറയുന്നു:إن النبي ﷺ صلى على النجاشي فكبر أربعا (البخاري، مسلم))(നബി(സ) നജാശിക്കുവേണ്ടി നമസ്കരിച്ചു. നാലു തക്ബീർ ചൊല്ലി.\n4) ഒന്നാമത്തെ തക്ബീറിനുശേഷം ഫാതിഹ ഓതുക.\n5) രണ്ടാമത്തെ തക്ബീറിനുശേഷം നബി(സ)യുടെ പേരിൽ സ്വലാത് ചൊല്ലുക.\n6) മൂന്നാമത്തെ തക്ബീറിനു ശേഷം മയ്യിത്തിന് വേണ്ടി പ്രാർത്ഥിക്കുക.\n 7) നാലാമത്തെ തക്ബീറിന് ശേഷം സലാം ചൊല്ലുക.',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 18,
                  color: ColorClass.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
