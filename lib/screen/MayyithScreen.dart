import 'package:flutter/material.dart';
import 'package:salat_al_janaza/constants/colorclass.dart';
import 'package:salat_al_janaza/constants/imagesclass.dart';
import 'package:salat_al_janaza/constants/textstyleclass.dart';
import 'package:salat_al_janaza/screen/pages/deadbodyverb.dart';
import 'package:salat_al_janaza/screen/pages/mayyithstepscreen.dart';



class MayyithScreen extends StatefulWidget {
  const MayyithScreen({Key? key}) : super(key: key);

  @override
  State<MayyithScreen> createState() => _MayyithScreenState();
}

class _MayyithScreenState extends State<MayyithScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'മയ്യിത്ത് പരിപാലനം',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
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
                  child: Image.asset(ImageClass.bgmayyith,
                  fit: BoxFit.cover,
                    
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'മയ്യിത്തിൻ്റെ പരിപാലന പ്രാധാന്യത്തെ കുറിച്ച്  വിവരിക്കുന്നു:',
                style: TextStyleClass.primaryFontMalayalam(18, Colors.white, FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // Prayer Steps Button
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
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color:  ColorClass.blueGrey1,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.format_list_bulleted, color: Colors.black),
                      const SizedBox(width: 8),
                      Text(
                        'മയ്യിത്ത് പരിപാലനം',
                        style: TextStyleClass.primaryFontMalayalam(18, Colors.black,FontWeight.w100),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              
              
             
              // Prayer Details
              Text(
                'മരണം സുനിശ്ചിതമാണ്. ആത്മാവ് ശരീരവുമായി വേര്‍പിരിയുന്നതാണ് മരണം. അല്ലാഹു പറയുന്നു: ‘എതൊരു ശരീരവും മരണം രുചിക്കുന്നതാണ്. ഉയര്‍ത്തെഴുന്നേല്‍പ്പിന്‍റെ ദിനം മാത്രമാണ് നിങ്ങളുടെ പ്രതിഫലങ്ങള്‍ നിങ്ങള്‍ക്ക് പൂര്‍ണമായും നല്‍കപ്പെടുന്നത് (ഖുര്‍ആന്‍ 3/185).മരണസ്മരണ വര്‍ധിപ്പിക്കാന്‍ തിരുനബി(സ്വ) പ്രത്യേകം നിര്‍ദേശിച്ചിട്ടുണ്ട്. മരണത്തെ കൂടുതലായി ഓര്‍ക്കല്‍ വിശ്വാസികള്‍ക്ക് ശക്തമായ സുന്നത്താണ്. രോഗികള്‍ക്ക് അതിശക്തമായ സുന്നത്തും. മരണാസന്നനായ വ്യക്തിക്ക് ചില കാര്യങ്ങള്‍ ചെയ്തുകൊടുക്കാന്‍ ഇസ്ലാം പഠിപ്പിക്കുന്നുണ്ട്.',
                style: TextStyleClass.primaryFontMalayalam(16, Colors.white,FontWeight.w100),
              ),
              const SizedBox(height: 20),
               Text(
                'മരണം ഉറപ്പിച്ചാല്‍ നിര്‍വഹിക്കേണ്ട പ്രധാന കര്‍മങ്ങള്‍ നോക്കാം.',
                style: TextStyleClass.primaryFontMalayalam(18, Colors.white,FontWeight.w100),
              ),
               const SizedBox(height: 20),
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
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: ColorClass.blueGrey1,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.format_list_bulleted, color: Colors.black),
                      const SizedBox(width: 8),
                      Text(
                        'മരണാനന്തര ക്രിയകള്‍',
                        style: TextStyleClass.primaryFontMalayalam(18, Colors.black,FontWeight.w100),
                      ),
                    ],
                  ),
                ),
              ),
             
               const SizedBox(height: 12),
                Text(
                        'ഐഹിക ജീവിതത്തിൻ്റെ അന്ത്യവും മരണാനന്തര ജീവിതത്തിൻ്റെ തുടക്കവുമാണ് ഇസ്‌ലാമിലെ മരണം . മനുഷ്യശരീരത്തിൽ നിന്ന് ആത്മാവിൻ്റെ വേർപിരിയൽ, ഈ ലോകത്ത് നിന്ന് മരണാനന്തര ജീവിതത്തിലേക്കുള്ള കൈമാറ്റം എന്നിങ്ങനെയാണ് മരണത്തെ കാണുന്നത്',
                        style: TextStyleClass.primaryFontMalayalam(16, Colors.white,FontWeight.w100),
                      ),
             
            ],
          ),
        ),
      ),
    );
  }
}