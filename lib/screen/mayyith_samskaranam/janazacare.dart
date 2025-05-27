import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/screen/mayyith_samskaranam/deadbodyverb.dart';
import 'package:janaza_guide/screen/mayyith_samskaranam/deadbodystepscreen.dart';

class MayyithScreen extends StatefulWidget {
  const MayyithScreen({super.key});

  @override
  State<MayyithScreen> createState() => _MayyithScreenState();
}

class _MayyithScreenState extends State<MayyithScreen> {
  bool get isPortrait => MediaQuery.of(context).orientation == Orientation.portrait;

  void _showMayyithStepsBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: ColorClass.transparent,
      builder: (context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {}, // Prevent taps from closing the bottom sheet
          child: DraggableScrollableSheet(
            initialChildSize: 0.95,
            minChildSize: 0.5,
            maxChildSize: 1.0,
            builder: (_, controller) => Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: const Mayyithstepscreen(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showDeadBodyVerbBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: ColorClass.transparent,
      builder: (context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {}, // Prevent taps from closing the bottom sheet
          child: DraggableScrollableSheet(
            initialChildSize: 0.95,
            minChildSize: 0.5,
            maxChildSize: 1.0,
            builder: (_, controller) => Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: const Deadbodyverbscreen(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

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
            color: ColorClass.black
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'മയ്യിത്ത് സംസ്കരണം',
          style: GoogleFonts.anekMalayalam(
            fontSize: 20,
            color: ColorClass.primaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Prayer Icon Card
              // Prayer Icon Card with orientation awareness
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
                    ImageClass.kalima,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'മയ്യിത്തിൻ്റെ പരിപാലന പ്രാധാന്യത്തെ കുറിച്ച്  വിവരിക്കുന്നു:',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 18,
                  color: ColorClass.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              // Improved Prayer Steps Button
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Mayyithstepscreen(),
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
                            'മയ്യിത്ത് സംസ്കരണം',
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
              // Prayer Details
              Text(
                "كُلُّ نَفْسٍ ذَائِقَةُ الْمَوْتِ ۗ وَإِنَّمَا تُوَفَّوْنَ أُجُورَكُمْ يَوْمَ الْقِيَامَةِ ۖ فَمَن زُحْزِحَ عَنِ النَّارِ وَأُدْخِلَ الْجَنَّةَ فَقَدْ فَازَ ۗ وَمَا الْحَيَاةُ الدُّنْيَا إِلَّا مَتَاعُ الْغُرُورِ ﴿١٨٥﴾എല്ലാ മനുഷ്യരും മരണം രുചിക്കുന്നവരാണ്. നിങ്ങളുടെ കര്‍മഫലമെല്ലാം ഉയിര്‍ത്തെഴുന്നേല്‍പുനാളില്‍ മാത്രമാണ് പൂര്‍ണമായും നിങ്ങള്‍ക്കു നല്‍കുക. അപ്പോള്‍ നരകത്തീയില്‍ നിന്നകറ്റപ്പെടുകയും സ്വര്‍ഗത്തില്‍ പ്രവേശിപ്പിക്കപ്പെടുകയും ചെയ്യുന്നവനാണ് വിജയംവരിച്ചവന്‍. ഐഹികജീവിതം ചതിക്കുന്ന ചരക്കല്ലാതൊന്നുമല്ല. ( 3:185)",
                style: GoogleFonts.anekMalayalam(
                  fontSize: 18,
                  color: ColorClass.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
              Text(
                'മരണം ഉറപ്പിച്ചാല്‍ നിര്‍വഹിക്കേണ്ട പ്രധാന കര്‍മങ്ങള്‍ നോക്കാം.',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 18,
                  color: ColorClass.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              // Improved Post-Death Actions Button
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Deadbodyverbscreen(),
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
                            'മയ്യിത്ത് കുളിപ്പിക്കല്‍',
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
                'മയ്യിത്ത് കുളിപ്പിക്കുന്നതു സംബന്ധിച്ച് ഉമ്മു അതിയ്യ (റ) പറയുന്നു. دخل علينا رسول اللہ ﷺ حين توفيت ابنته فقال : اغسلنها ثلاثا أو خمسا أو أكثر من ذلك إن رأيتن بماء وسدر واجعلن في الأخيرة كافورا أوشيئا من كافور فإذا فرغتن فآذتني فلما فرغنا آذناه فأعطانا حقوه فقال أشعرنها  إياه (رواه الجماعة)( മകൾ മരിച്ചപ്പോൾ റസൂൽ (സ) ഞങ്ങളുടെ അടുത്ത് വന്നു പറഞ്ഞു. വെള്ളവും താളിയും ഉപയോഗിച്ച് മൂന്നോ അഞ്ചോ വേണമെന്ന് നിങ്ങൾക്ക് തോന്നുന്നുവെങ്കിൽ – അതിൽ കൂടുതലോ തവണ നിങ്ങൾ അവളെ കുളിപ്പിക്കുക. അവസാന തവണ അല്പം കർപ്പൂരവും ചേർക്കുക. കുളിപ്പിച്ച് കഴിഞ്ഞാൽ വിവരം എന്നെ അറിയിക്കുക. അങ്ങനെ കുളിപ്പിച്ച് കഴിഞ്ഞപ്പോൾ ഞങ്ങൾ നബി(സ)യെ അറിയിച്ചു. അപ്പോൾ അദ്ദേഹം തന്റെ തുണി നൽകിയിട്ട് അത് അവരുടെ അടിവസ്ത്രമായി ധരിപ്പിക്കാൻ പറഞ്ഞു.',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 18,
                  color: ColorClass.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
