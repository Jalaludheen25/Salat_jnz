import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/mayyithmodel.dart';

class Mayyithstepscreen extends StatefulWidget {
  const Mayyithstepscreen({super.key});

  @override
  _MayyithstepscreenState createState() => _MayyithstepscreenState();
}

class _MayyithstepscreenState extends State<Mayyithstepscreen> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      _prayerSteps.length,
      (_) => ExpansionTileController(),
    );
  }

  final List<Mayyithmodel> _prayerSteps = [
    Mayyithmodel(
      title: 'لآ اِلَهَ اِلّا اللّهُ ചൊല്ലിക്കൊടുക്കല്‍',
      description: 'لقِّنوا مَوْتاكم لا إلهَ إلَّا اللهُ (مسلم، أبوداود، الترمذي) (നിങ്ങൾ മരണാസന്നർക്കു لا إله إلا الله എന്ന് ചൊല്ലിക്കൊടുക്കുക) എന്ന് നബി (സ) പറഞ്ഞതായി അബൂസഈദിൽ ഖിദ് രി (റ) ഉദ്ധരിച്ചി ട്ടുണ്ട്. ഒരിക്കൽ ചൊല്ലിയാൽ പിന്നെ മറ്റു വല്ലതും സംസാരിച്ചാൽ മാത്രമേ വീണ്ടും ചൊല്ലിക്കൊടുക്കേണ്ടതുള്ളൂ. അതുചൊല്ലാൻ നിർബന്ധിക്കുകയോ ചൊല്ലാൻ പറയുകപോലുമോ ചെയ്യരുത്.',
      imagePath: ImageClass.kalima,
      instructions: '',
    ),
    Mayyithmodel(
      title: 'ഖിബ് ലക്കഭിമുഖമായി വലതുഭാഗത്തേക്ക് ചരിച്ച് കിടത്തുക',
      description:
          'ഭൂരിപക്ഷം പണ്ഡിതന്മാരുടെയും അഭിപ്രായം ഇതാണ്. എന്നാൽ കാൽ രണ്ടും ഖിബ് ലയുടെ നേരെയാക്കി തല അല്പം ഉയർത്തി വെച്ച് മലർത്തിക്കിടത്തണമെന്നാണ് ഇമാം ശാഫിഈ (റ) യുടെ അഭിപ്രായം.',
      imagePath: ImageClass.kalima, instructions: '',
    ),
    Mayyithmodel(
      title: 'സൂറ യാസീൻ ഓതുക:',
      description:
          'മരണാസന്നന്റെ സമീപം സൂറ യാസീൻ ഓതുക. നബി (സ) പറഞ്ഞതായി അബൂദർറും അബുദ്ദർദാഉം (റ) ഉദ്ധരിക്കുന്നു.ا ما منْ ميتٍ يموتُ، فيُقرأُ عندهُ سورةُ ( يس )، إلا هوَّنَ اللهُ عز وجل عليهِ (مسند الفردوس)(മരിച്ചുകൊണ്ടിരിക്കുന്ന ഏതൊരാളുടെ അരികിൽ വെച്ചും യാസീൻ ഓതിയാൽ അല്ലാഹു അയാൾക്ക് ആശ്വാസം നൽകാതിരിക്കയില്ല.)',
      imagePath: ImageClass.quran, instructions: '',
    ),
    Mayyithmodel(
      title: 'കണ്ണുകൾ അടച്ചുകൊടുക്കൽ',
      description:
          'മരിച്ചു കഴിഞ്ഞാൽ കണ്ണു രണ്ടും അടക്കുക. അബൂ സലമ (റ) മരിച്ചപ്പോൾ നബി (സ) അദ്ദേഹത്തിന്റെ കണ്ണ് അടച്ചു കൊടുത്തിരുന്നു.',
      imagePath:ImageClass.eyeclosing, instructions: '',
    ),
    Mayyithmodel(
      title: 'ശരീരം മുഴുവൻ മൂടുക',
      description:
          'ശരീരം മുഴുവൻ ഒരു വസ്ത്രം കൊണ്ടു മൂടുക. തിരുശരീരം വരകളുള്ള വസ്ത്രം കൊണ്ട് മൂടിയിരുന്നതായി ആയിശ(റ) ഉദ്ധരിച്ചിട്ടുണ്ട്. മൃതശരീരം ചുംബിക്കാവുന്നതാണ്. നബി (സ) ഉഥ്മാനുബ്നു മള്ഊനിനെയും അബൂബകർ (റ) നബി (സ)യെയും മരണശേഷം ചുംബിച്ചതായി റിപ്പോർട്ടുകളുണ്ട്',
      imagePath: ImageClass.covering, instructions: '',
    ),
    Mayyithmodel(
      title: 'എത്രയും വേഗം മയ്യിത്ത് സംസ്കരിക്കുക',
      description:
          'എത്രയും വേഗം മയ്യിത്ത് സംസ്കരിക്കുക. മരണശയ്യയിൽ കിടക്കുകയായിരുന്ന ത്വൽഹത് ബ്നു ബറാഇ(റ)നെ സന്ദർശിച്ച ശേഷം നബി (സ) പറഞ്ഞു:\nني لا أرى طلحة إلا قد حدث فيه الموت فأذنوني به وعجلوا فإنه لا ينبغي لجيفة مسلم أن تحبس بين ظهري أهله (أبوداود)(ത്വൽഹക്കു മരണം സംഭവിക്കുമെന്നാണ് എനിക്ക് തോന്നുന്നത്. അതിനാൽ എന്നെ വിവരം അറിയിക്കുകയും കാര്യങ്ങൾ വേഗത്തിലാക്കുകയും ചെയ്യുക. കാരണം ഒരു മുസ്ലിമിന്റെയും ജഡം അയാളുടെ വീട്ടുകാരുടെ മുമ്പിൽ വെച്ചുകൊണ്ടിരിക്കാവതല്ല.)\nസംസ്കരണത്തിന് മയ്യിത്തിന്റെ വലിയ്യി (കൈകാര്യാവകാശി) നെയല്ലാതെ മറ്റാരെയും കാത്തിരിക്കേണ്ടതില്ല. വലിയ്യിനെ തന്നെയും കാത്തിരിക്കേണ്ടത് മൃതശരീരത്തിന് പറയത്തക്ക മാറ്റമൊന്നും സംഭവിക്കുകയില്ലെങ്കിലാണ്. നബി (സ) അലി (റ) യോട് പറഞ്ഞു:\n يا عليُّ، ثلاثٌ لا تؤخِّرْها: الصَّلاةُ إذا آنَت والجِنازةُ إذا حضَرَت والأيِّمُ إذا وجدَت لها كُفُؤًا \n(അലിയെ, മൂന്നു കാര്യങ്ങൾ വെച്ചു താമസിപ്പിക്കരുത്. നമസ്കാരം സമയമായാൽ, ജനാസ മുമ്പിലെത്തിക്കഴിഞ്ഞാൽ, അവിവാഹിത അനുയോജ്യനെ കിട്ടിക്കഴിഞ്ഞാൽ- അഹ്മദ്, തിർമിദി)',
      imagePath: ImageClass.cremation, instructions: '',
    ),
    Mayyithmodel(
      title: 'കടബാധ്യതയുണ്ടെങ്കിൽ  കൊടുത്തു തീര്ക്കുക',
      description:
          'മയ്യിത്തിന് കടബാധ്യതയുണ്ടെങ്കിൽ കഴിയുംവേഗം അത് കൊടുത്തു തീർക്കണം. അതു കഴിഞ്ഞേ അയാളുടെ സമ്പത്ത് ഭാഗിക്കാൻ പാടുള്ളൂ. നബി (സ) പറഞ്ഞതായി അബൂഹുറൈറ (റ) ഉദ്ധരിക്കുന്നു.\n نفس المؤمن مُعلَّقة بدَيْنِه حتى يُقْضَى عنه  (أحمد، ابن ماجه، الترمذي)   \n(വിശ്വാസിയുടെ ആത്മാവ് അവന്റെ കടം വീട്ടുംവരെ അതുമായി കെട്ടുപിണഞ്ഞിരിക്കും.)',
      imagePath: 'assets/images/debt man.png',
      instructions:'കടം വീട്ടാതെ മരിച്ച ആളുകൾക്ക് വേണ്ടി നബി (സ) ജനാസ നമസ്കരിക്കാതെ മറ്റു സഹാബിമാരോട് നമസ്കരിക്കാൻ പറയുകയാണു ചെയ്തിരുന്നത്. '
    ),
    // Mayyithmodel(
    //   title: 'മരണവൃത്താന്തം അറിയിക്കൽ',
    //   description:
    //       'മരണവൃത്താന്തം ബന്ധുക്കളെയും സുഹൃത്തുക്കളെയും അറിയിക്കൽ നല്ലതാണ്. അവർക്കെല്ലാവർക്കും മയ്യിത്ത് സംസ്കരണത്തിൽ പങ്കുകൊള്ളാൻ സൗകര്യപ്പെടാനാണത്. എത്യോപ്യയിൽ നജാശി മരിച്ച വിവരം നബി (സ) സഹാബിമാരെ അറിയിക്കുകയും അദ്ദേഹത്തിന് വേണ്ടി അവരോടൊപ്പം മയ്യിത്ത് നമസ്കരിക്കുകയും ചെയ്തിട്ടുണ്ട്. സൈദുബ്നു ഹാരിഥ, ജഅ്ഫറുബ്നു അബീതാലിബ്, അബ്ദുല്ലാഹി ബ്നു റവാഹ (റ) എന്നിവർ യുദ്ധത്തിൽ ശഹീദായതിനെപ്പറ്റി നബി (സ) സഹാബിമാർക്ക് അപ്പപ്പോൾ വിവരം നൽകിക്കൊണ്ടിരുന്നു.',
    //   imagePath: 'assets/images/debt man.png',
    //   instructions:'മയ്യിത്തിന്റെ പേരിൽ അലമുറയിട്ട് വിലപിക്കൽമയ്യിത്തിന്റെ പേരിൽ അലമുറയിട്ട് വിലപിക്കുന്നത് നിഷിദ്ധമാണ്. ഒച്ചയും ബഹളവുമില്ലാതെ വിതുമ്പുകയും കണ്ണീരൊഴുക്കുകയും ചെയ്യുന്നത് തെറ്റല്ല. അത് മനുഷ്യസഹജമായ ദുഃഖത്തിന്റെ ലക്ഷണമാണ്. മകൻ ഇബ്രാഹീം മരിച്ചപ്പോഴും, സൈനബിന്റെ മകൾ ഉമൈമ മരിച്ചപ്പോഴും നബി (സ) കണ്ണീരൊഴുക്കി വിതുമ്പുകയുണ്ടായി.എന്നാൽ മരിച്ചവരെച്ചൊല്ലി ഒച്ചവെച്ചു കരയുന്നതും മുടി അഴിച്ചിട്ടും മുഖത്തടിച്ചും വസ്ത്രം വലിച്ചുകീറിയും ദുഃഖം പ്രകടിപ്പിക്കുന്നതും അനുവദനീയമല്ല. അബൂമൂസൽ അശ്അരി (റ) പറഞ്ഞതായി ഉദ്ധരിക്കപ്പെടുന്നു.أنا بريئ ممن برئ منه رسول الله ﷺ إن رسول الله برئ من الصالقة والحالقة والشاقة (متفق عليه)(നബി (സ)ക്കു ബന്ധമില്ലാത്തവരുമായി എനിക്കും ബന്ധമില്ല. (മരിച്ചവരെച്ചൊല്ലി) ഒച്ചവെച്ചു കരയുന്നവരുമായും തലമുണ്ഡനം ചെയ്യുന്നവരുമായും മാറിടം മാന്തിക്കീറുന്നവരുമായും നബി(സ)ക്കു ബന്ധമില്ല.)'
    // ),
      
  ];

  void _handleExpansion(int index, bool isExpanded) {
    setState(() {
      if (isExpanded) {
        if (_expandedIndex != null && _expandedIndex != index) {
          _controllers[_expandedIndex!].collapse();
        }
        _expandedIndex = index;
      } else if (_expandedIndex == index) {
        _expandedIndex = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: ColorClass.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'മരണാസന്നനുമായി ബന്ധപ്പെട്ട് ശ്രദ്ധിക്കേണ്ടത്',
          style: GoogleFonts.anekMalayalam(
            fontSize: 16,
            color: ColorClass.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'മരണാസന്നനുമായി ബന്ധപ്പെട്ട് മറ്റുള്ളവർ ശ്രദ്ധിക്കേണ്ടത്',
              style: GoogleFonts.anekMalayalam(
                fontSize: 16,
                color: ColorClass.black.withOpacity(0.6),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _prayerSteps.length,
              itemBuilder: (context, index) {
                final step = _prayerSteps[index];
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: _expandedIndex == index ? ColorClass.primaryColor.withOpacity(0.1) : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: ColorClass.primaryColor.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: Colors.transparent,
                        ),
                        child: ExpansionTile(
                          controller: _controllers[index],
                          onExpansionChanged: (expanded) => _handleExpansion(index, expanded),
                          title: Row(
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: ColorClass.primaryColor.withOpacity(0.1),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    '${index + 1}',
                                    style: TextStyle(
                                      color: ColorClass.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  step.title,
                                  style: GoogleFonts.anekMalayalam(
                                    fontSize: 16,
                                    color: ColorClass.primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          trailing: Icon(
                            _expandedIndex == index ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                            color: ColorClass.primaryColor,
                          ),
                          children: [
                            if (step.imagePath.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    step.imagePath,
                                    width: double.infinity,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                step.description,
                                style: GoogleFonts.anekMalayalam(
                                  fontSize: 16,
                                  color: ColorClass.black,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            if (step.instructions.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  step.instructions,
                                  style: GoogleFonts.anekMalayalam(
                                    fontSize: 16,
                                    color: ColorClass.black,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
