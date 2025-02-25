import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salat_al_janaza/constants/colorclass.dart';
import 'package:salat_al_janaza/constants/imagesclass.dart';
import 'package:salat_al_janaza/screen/pages/deadbodyverb.dart';
import 'package:salat_al_janaza/screen/pages/deadbodystepscreen.dart';

class MayyithScreen extends StatefulWidget {
  const MayyithScreen({Key? key}) : super(key: key);

  @override
  State<MayyithScreen> createState() => _MayyithScreenState();
}

class _MayyithScreenState extends State<MayyithScreen> {
  void _showMayyithStepsBottomSheet() {
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
                    child: const Mayyithstepscreen(),
                  ),
                ],
              ),
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
          'മയ്യിത്ത് പരിപാലനം',
          style: GoogleFonts.anekMalayalam(
            fontSize: 20,
            color: Colors.white,
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
                          'മയ്യിത്ത് പരിപാലനം',
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
                "മരണം സുനിശ്ചിതമാണ്. ആത്മാവ് ശരീരവുമായി വേര്‍പിരിയുന്നതാണ് മരണം. അല്ലാഹു പറയുന്നു: \"എതൊരു ശരീരവും മരണം രുചിക്കുന്നതാണ്. ഉയര്‍ത്തെഴുന്നേല്‍പ്പിന്‍റെ ദിനം മാത്രം ആണ് നിങ്ങളുടെ പ്രതിഫലങ്ങള്‍ നിങ്ങള്‍ക്ക് പൂര്‍ണമായും നല്‍കപ്പെടുന്നത്\" (ഖുര്‍ആന്‍ 3/185). മരണസ്മരണ വര്‍ധിപ്പിക്കാന്‍ തിരുനബി(സ്വ) പ്രത്യേക നിര്‍ദേശിച്ചിട്ടുണ്ട്. മരണം കൂടുതലായി ഓര്‍ക്കല്‍ വിശ്വാസികള്‍ക്ക് ശക്തമായ സുന്നത്താണ്. രോഗികള്‍ക്ക് അതിശക്തമായ സുന്നത്തും. മരണാസന്നനായ വ്യക്തിക്ക് ചില കാര്യങ്ങള്‍ ചെയ്തുകൊടുക്കാന്‍ ഇസ്ലാം പഠിപ്പിക്കുന്നുണ്ട്.",
                style: GoogleFonts.anekMalayalam(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
              Text(
                'മരണം ഉറപ്പിച്ചാല്‍ നിര്‍വഹിക്കേണ്ട പ്രധാന കര്‍മങ്ങള്‍ നോക്കാം.',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 20,
                  color: Colors.white,
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
                          'മരണാനന്തര ക്രിയകള്‍',
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
                'ഐഹിക ജീവിതത്തിൻ്റെ അന്ത്യവും മരണാനന്തര ജീവിതത്തിൻ്റെ തുടക്കവുമാണ് ഇസ്‌ലാമിലെ മരണം . മനുഷ്യശരീരത്തിൽ നിന്ന് ആത്മാവിൻ്റെ വേർപിരിയൽ, ഈ ലോകത്ത് നിന്ന് മരണാനന്തര ജീവിതത്തിലേക്കുള്ള കൈമാറ്റം എന്നിങ്ങനെയാണ് മരണത്തെ കാണുന്നത്',
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
