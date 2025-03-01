import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/screen/pages/deadbodyverb.dart';
import 'package:janaza_guide/screen/pages/deadbodystepscreen.dart';

class MayyithScreen extends StatefulWidget {
  const MayyithScreen({super.key});

  @override
  State<MayyithScreen> createState() => _MayyithScreenState();
}

class _MayyithScreenState extends State<MayyithScreen> {
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
    return Scaffold(
      backgroundColor: ColorClass.detailprimary,
      appBar: AppBar(
        backgroundColor: ColorClass.secondaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorClass.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'മയ്യിത്ത് സംസ്കരണം',
          style: GoogleFonts.anekMalayalam(
            fontSize: 20,
            color: ColorClass.white,
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
                    ImageClass.bgmayyith,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'മയ്യിത്തിൻ്റെ പരിപാലന പ്രാധാന്യത്തെ കുറിച്ച്  വിവരിക്കുന്നു:',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 20,
                  color: ColorClass.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              // Improved Prayer Steps Button
              ElevatedButton(
                onPressed: _showMayyithStepsBottomSheet,
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
                          'മയ്യിത്ത് സംസ്കരണം',
                          style: GoogleFonts.anekMalayalam(
                            fontSize: 20,
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
                          style: TextStyle(
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
              // Prayer Details
              Text(
                "സമസ്ത മനുഷ്യരും മരണം രുചിക്കേണ്ടവരാകുന്നു. നിങ്ങളെല്ലാവരുടെയും കര്‍മഫലം അന്ത്യനാളില്‍ പരിപൂര്‍ണമായി നല്‍കപ്പെടും. അവിടെ നരകാഗ്നിയില്‍നിന്ന് അകറ്റപ്പെടുകയും സ്വര്‍ഗത്തില്‍ പ്രവേശിപ്പിക്കപ്പെടുകയും ചെയ്തവനാരോ, അവനത്രെ യഥാര്‍ഥത്തില്‍ വിജയം നേടിയവന്‍. ഈ ഭൗതികജീവിതമാകട്ടെ, വഞ്ചനാത്മകമായ ചരക്കു മാത്രമാകുന്നു'. ( 3:186)",
                style: GoogleFonts.anekMalayalam(
                  fontSize: 20,
                  color: ColorClass.white,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
              Text(
                'മരണം ഉറപ്പിച്ചാല്‍ നിര്‍വഹിക്കേണ്ട പ്രധാന കര്‍മങ്ങള്‍ നോക്കാം.',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 20,
                  color: ColorClass.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              // Improved Post-Death Actions Button
              ElevatedButton(
                onPressed: _showDeadBodyVerbBottomSheet,
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorClass.secondaryColor,
                  foregroundColor: ColorClass.white,
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
                          'മയ്യിത്ത് കുളിപ്പിക്കല്‍',
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
              Text(
                'മയ്യിത്ത് കുളിപ്പിക്കുന്നതു സംബന്ധിച്ച് ഉമ്മു അതിയ്യ (റ) പറയുന്നു. دخل علينا رسول اللہ ﷺ حين توفيت ابنته فقال : اغسلنها ثلاثا أو خمسا أو أكثر من ذلك إن رأيتن بماء وسدر واجعلن في الأخيرة كافورا أوشيئا من كافور فإذا فرغتن فآذتني فلما فرغنا آذناه فأعطانا حقوه فقال أشعرنها  إياه (رواه الجماعة)( മകൾ മരിച്ചപ്പോൾ റസൂൽ (സ) ഞങ്ങളുടെ അടുത്ത് വന്നു പറഞ്ഞു. വെള്ളവും താളിയും ഉപയോഗിച്ച് മൂന്നോ അഞ്ചോ വേണമെന്ന് നിങ്ങൾക്ക് തോന്നുന്നുവെങ്കിൽ – അതിൽ കൂടുതലോ തവണ നിങ്ങൾ അവളെ കുളിപ്പിക്കുക. അവസാന തവണ അല്പം കർപ്പൂരവും ചേർക്കുക. കുളിപ്പിച്ച് കഴിഞ്ഞാൽ വിവരം എന്നെ അറിയിക്കുക. അങ്ങനെ കുളിപ്പിച്ച് കഴിഞ്ഞപ്പോൾ ഞങ്ങൾ നബി(സ)യെ അറിയിച്ചു. അപ്പോൾ അദ്ദേഹം തന്റെ തുണി നൽകിയിട്ട് അത് അവരുടെ അടിവസ്ത്രമായി ധരിപ്പിക്കാൻ പറഞ്ഞു.',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 20,
                  color: ColorClass.white,
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
