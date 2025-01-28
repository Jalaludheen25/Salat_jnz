import 'package:flutter/material.dart';
import 'package:salat_al_janaza/constants/textstyleclass.dart';
import 'package:salat_al_janaza/screen/pages/prayerstepscreen.dart';


class SalatAlJanazaScreen extends StatefulWidget {
  const SalatAlJanazaScreen({Key? key}) : super(key: key);

  @override
  State<SalatAlJanazaScreen> createState() => _SalatAlJanazaScreenState();
}

class _SalatAlJanazaScreenState extends State<SalatAlJanazaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Salat Al Janaza',
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
                  child: Image.asset(
                    'assets/images/janza image.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Prayer Steps Button
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
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A1A2E),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.format_list_bulleted, color: Colors.blue),
                      const SizedBox(width: 8),
                      Text(
                        'പ്രാർത്ഥനാ ഘട്ടങ്ങൾ',
                        style: TextStyleClass.primaryFontMalayalam(18, Colors.blue,FontWeight.w100),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Description Text
              Text(
                'ഈ പ്രാർത്ഥന എങ്ങനെ നന്നായി നിർവഹിക്കാമെന്ന് ഈ വിഭാഗം വിവരിക്കുന്നു',
                style: TextStyleClass.primaryFontMalayalam(18, Colors.white, FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // Prayer Details
              Text(
                'നിത്യജീവിതത്തിൽ വിശ്വാസി അനിവാര്യമായും അറിഞ്ഞിരിക്കേണ്ട ഒന്നാണ് മയ്യിത്ത് നിസ്കാരം. സ്വന്തം ബന്ധുക്കളുടെയും അല്ലാത്തതുമായി ധാരാളം പേരുടെ മയ്യിത്ത് നിസ്കരിക്കാൻ ഓരോരുത്തർക്കും അവസരമുണ്ടാകും. അതിനാൽ, അത് എങ്ങനെയാണെന്ന് മനസ്സിലാക്കിവെക്കൽ ആവശ്യമാണ്. അതാണ് ഇവിടെ വിവരിക്കുന്നു.',
                style: TextStyleClass.primaryFontMalayalam(16, Colors.white,FontWeight.w100),
              ),
              const SizedBox(height: 20),
              Text(
                'ഈ സ്വലാത്തിന് രണ്ട് ഭാഗങ്ങളുണ്ട്:',
                style: TextStyleClass.primaryFontMalayalam(18, Colors.white,FontWeight.w100),
              ),
              const SizedBox(height: 12),
              Text(
                '1) അല്ലാഹു അക്ബർ എന്ന് നാല് തവണ പറയുക\n\n'
                '2)  ഖിയാം അഥവാ മൂന്ന് സുന്നത്തെ മുഅക്കദകൾ: അൽ-ഫാതിഹ, ദുറൂദ് ഷരീഫ്, മയ്യിത്തിനു വേണ്ടിയുള്ള ദുആ',
               style: TextStyleClass.primaryFontMalayalam(16, Colors.white,FontWeight.w100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}