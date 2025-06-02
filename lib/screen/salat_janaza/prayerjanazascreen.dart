import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/salatjanazamodel.dart';
import 'package:janaza_guide/screen/salat_janaza/prayersinhadith.dart';
import 'package:janaza_guide/screen/salat_janaza/prayerstepscreen.dart';
import 'package:janaza_guide/screen/salat_janaza/samshaya_nivaranam.dart';

class SalatAlJanazaScreen extends StatefulWidget {
  const SalatAlJanazaScreen({super.key});

  @override
  State<SalatAlJanazaScreen> createState() => _SalatAlJanazaScreenState();
}

class _SalatAlJanazaScreenState extends State<SalatAlJanazaScreen> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      _salatSteps.length,
      (_) => ExpansionTileController(),
    );
  }

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

  final List<SalatJanazaModel> _salatSteps = [
    SalatJanazaModel(
      title: 'സാമൂഹ്യബാധ്യത',
      description: 'മയ്യിത്ത് നമസ്കാരം സാമൂഹ്യബാധ്യതയാണ്. സമൂഹത്തിൽ കുറച്ചു പേർ അതു നിർവഹിച്ചാൽ ബാധ്യതയിൽ നിന്ന് എല്ലാവരും മുക്തരാവും.',
      imagePath: ImageClass.salat,
      instructions: 'അബൂഹുറൈറ (റ) ഉദ്ധരിക്കുന്നു:',
      arabicText: 'إن النبي كان يؤتى بالرجل المتوفى عليه الدين فيسأل هل ترك لدينه فضلا، فإن حدث أنه ترك وفاء صلى، وإلا قال للمسلمين: صلوا لى صاحبكم',
      translation: '(കട ബാധ്യതയോടുകൂടി മരിച്ച ആളെ നബി (സ)യുടെ മുമ്പിൽ കൊണ്ടുവരുമായിരുന്നു. അയാൾ കടം വീട്ടാൻ വല്ലതും മിച്ചം വെച്ചിട്ടുണ്ടോ എന്ന് നബി(സ) ചോദിക്കും. വീട്ടാൻ മിച്ചം വെച്ചിട്ടുണ്ടെന്ന് പറഞ്ഞാൽ അവിടുന്ന് നമസ്കരിക്കും. ഇല്ലെങ്കിൽ മുസ്ലിംകളോട് പറയും നിങ്ങളുടെ കൂട്ടുകാരന് വേണ്ടി നമസ്കരിക്കുക- ബുഖാരി, മുസ് ലിം)',
    ),
    SalatJanazaModel(
      title: 'പ്രതിഫലത്തിന്റെ പ്രാധാന്യം',
      description: 'മയ്യിത്ത് നമസ്കാരം ഏറെ പ്രധാനപ്പെട്ട കാര്യമാണ്.',
      imagePath: ImageClass.salat,
      instructions: 'നബി (സ) പറഞ്ഞതായി അബൂഹുറൈറ(റ) ഉദ്ധരിക്കുന്നു:',
      arabicText: 'من تبع جنازة وصلى عليها فله قيراط ومن تبعها حتى يفرغ منها فله قيراطان أحدهما مثل أحد',
      translation: '(മയ്യിത്തിനെ പിന്തുടർന്നു ജനാസ നമസ്കരിച്ചവന് ഒരു ഖീറാത്ത് പ്രതിഫലമുണ്ട്. സംസ്കരണത്തിൽ നിന്ന് പൂർണമായി വിരമിക്കുംവരെ അതിനെ പിന്തുടരുന്നവന്ന് രണ്ട് ഖീറാത്താണ് പ്രതിഫലം. ഒരു ഖീറാത്ത് ഉഹ്ദു മലയ്ക്ക് തുല്യമാണ്.)',
    ),
    SalatJanazaModel(
      title: 'നിർബന്ധ ഘടകങ്ങൾ',
      description: 'സമയമാവുക എന്നതൊഴിച്ച് മറ്റു നമസ്കാരങ്ങൾക്കുള്ള മുന്നുപാധികളെല്ലാം ജനാസ നമസ്കാരത്തിനും ഉപാധിയാണ്. മയ്യിത്ത് നമസ്കാരത്തിന്റെ നിർബന്ധഘടകങ്ങൾ താഴെ പറയുന്നവയാണ്.',
      imagePath: ImageClass.salat,
      instructions: '1) നിയ്യത്ത്\n2) സാധിക്കുന്നവൻ നിൽക്കൽ\n3) നാലു തക്ബീർ\n4) ഒന്നാമത്തെ തക്ബീറിനുശേഷം ഫാതിഹ ഓതുക\n5) രണ്ടാമത്തെ തക്ബീറിനുശേഷം നബി(സ)യുടെ പേരിൽ സ്വലാത് ചൊല്ലുക\n6) മൂന്നാമത്തെ തക്ബീറിനു ശേഷം മയ്യിത്തിന് വേണ്ടി പ്രാർത്ഥിക്കുക\n7) നാലാമത്തെ തക്ബീറിന് ശേഷം സലാം ചൊല്ലുക',
    ),
    SalatJanazaModel(
      title: 'നാലു തക്ബീറിന്റെ തെളിവ്',
      description: '',
      imagePath: ImageClass.salat,
      instructions: 'ജാബിർ (റ) പറയുന്നു:',
      arabicText: 'إن النبي ﷺ صلى على النجاشي فكبر أربعا',
      translation: '(നബി(സ) നജാശിക്കുവേണ്ടി നമസ്കരിച്ചു. നാലു തക്ബീർ ചൊല്ലി.) - ബുഖാരി, മുസ്‌ലിം',
    ),
    SalatJanazaModel(
      title: 'നമസ്കാരത്തിന്റെ രീതി',
      description: '',
      imagePath: ImageClass.salat,
      instructions: 'തന്നോട് ഒരു സഹാബി പറഞ്ഞെന്ന് അബൂഉമാമതുബ്നു സഹ്ൽ (റ) പറഞ്ഞതായി ഇമാം ശാഫിഈ(റ) മുസ്നദിൽ ഉദ്ധരിക്കുന്നു:',
      arabicText: 'إن السنة في الصلاة على الجنازة أن يكبر الإمام ثم يقرأ بفاتحة الكتاب بعد ويخلص الدعاء التكبيرة الأولى سرا في نفسه ثم يصلي على النبي في الجنازة في التكبيرات ولا يقرأ في شيئ منهن ثم يسلم سرا في نفسه',
      translation: '(ഇമാം തക്ബീർ ചൊല്ലുക, ഒന്നാമത്തെ തക്ബീറിനു ശേഷം പതുക്കെ ഫാതിഹ ഓതുകയും, പിന്നെ നബി(സ)യുടെ പേരിൽ സലാത്ത് ചൊല്ലുകയും തക്ബീറുകൾക്ക് ശേഷം മയ്യിത്തിനുവേണ്ടി ആത്മാർത്ഥമായി പ്രാർത്ഥിക്കുകയും ചെയ്യുക. അവിടെയൊന്നും ഖുർആൻ ഓതരുത്. പിന്നെ പതുക്കെ സലാം പറയുക എന്നതാണ് മയ്യിത്ത് നമസ്കാരത്തിൽ കൈകൊള്ളേണ്ട ചര്യ.)',
    ),
    SalatJanazaModel(
      title: 'ആത്മാർത്ഥമായ പ്രാർത്ഥന',
      description: 'ഇമാം തക്ബീറുകളും സലാമും ഉറക്കെ ചൊല്ലണം. മഅ്മൂമുകൾ മറ്റു നമസ്കാരങ്ങളിലേതു പോലെ തന്നെ പതുക്കെയും പറയണം. സാധാരണ നമസ്കാരത്തിൽ തശഹ്ഹുദിൽ ചൊല്ലുന്ന സലാത്ത് തന്നെയാണ് മയ്യിത്ത് നമസ്കാരത്തിലും ചൊല്ലേണ്ടത്. മയ്യിത്തിന്റെ നന്മക്കുവേണ്ടിയുള്ള ഏതു പ്രാർത്ഥനയുമാവാം. എന്നാൽ ഹദീഥിൽ വന്ന പ്രാർത്ഥനയാണ് ഏറ്റവും നല്ലത്.',
      imagePath: ImageClass.salat,
      instructions: 'നബി (സ) പറഞ്ഞു:',
      arabicText: 'إذا صليتم على الميت فأخلصوا له الدعاء',
      translation: '(മയ്യിത്തിന് വേണ്ടി നമസ്കരിക്കുമ്പോൾ നിങ്ങൾ അതിനു വേണ്ടി ആത്മാർത്ഥമായി പ്രാർത്ഥിക്കുക.) - അബൂദാവൂദ്, ബൈഹഖി, ഇബ്നു ഹിബ്ബാൻ',
    ),
    SalatJanazaModel(
      title: 'നമസ്കാരത്തിനു നേതൃത്വം നൽകേണ്ടതാരാണ്',
      description: 'ഇമാം ശാഫിഈ (റ)യുടെ പക്ഷം അനുസരിച്ച് മയ്യിത്ത് നമസ്കാരത്തിൽ നേതൃത്വം നൽകേണ്ടത് താഴെ പറയുന്ന ക്രമത്തിലാണ്:',
      imagePath: ImageClass.salat,
      instructions: '1) പിതാവ്\n2) പിതാമഹൻ\n3) മകൻ\n4) മകന്റെ മകൻ\n5) സഹോദരൻ\n6) സഹോദര പുത്രൻ\n7) പിതൃവ്യൻ\n8) പിതൃവ്യപുത്രൻ',
      arabicText: '',
      translation: '',
    ),
  ];

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    ImageClass.salat,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            // Navigation buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
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
                                'മയ്യിത്ത് നമസ്കാര ക്രമം',
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
                  SizedBox(height: 12),
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
                              SizedBox(
                                width: 200,
                                child: Text(
                                  'ഹദീസുകളിൽ വന്ന പ്രാർത്ഥനകൾ',
                                  style: GoogleFonts.anekMalayalam(
                                    fontSize: 18,
                                    color: ColorClass.primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SamshayaNivaranam(),
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
                              SizedBox(
                                width: 200,
                                child: Text(
                                  'സംശയ നിവാരണം',
                                  style: GoogleFonts.anekMalayalam(
                                    fontSize: 18,
                                    color: ColorClass.primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
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
                ],
              ),
            ),
            // Expandable content sections
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              itemCount: _salatSteps.length,
              itemBuilder: (context, index) {
                final step = _salatSteps[index];
                final isExpanded = _expandedIndex == index;

                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: isExpanded ? ColorClass.primaryColor.withOpacity(0.1) : Colors.white,
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
                          leading: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 213, 199, 235),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(
                                  color: isExpanded ? Colors.white : ColorClass.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          title: SizedBox(
                            width: 220,
                            child: Text(
                              step.title,
                              style: GoogleFonts.anekMalayalam(
                                fontSize: 16,
                                color: ColorClass.primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          trailing: Icon(
                            isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                            color: ColorClass.primaryColor,
                            size: 24,
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (step.description.isNotEmpty) ...[
                                    Text(
                                      step.description,
                                      style: GoogleFonts.anekMalayalam(
                                        fontSize: 16,
                                        color: ColorClass.black,
                                        height: 1.5,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                  ],
                                  if (step.instructions.isNotEmpty) ...[
                                    Text(
                                      step.instructions,
                                      style: GoogleFonts.anekMalayalam(
                                        fontSize: 16,
                                        color: ColorClass.black,
                                        height: 1.5,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                  ],
                                  if (step.arabicText != null && step.arabicText!.isNotEmpty) ...[
                                    Text(
                                      step.arabicText!,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        height: 1.5,
                                        fontFamily: 'Amiri',
                                      ),
                                      textDirection: TextDirection.rtl,
                                    ),
                                    const SizedBox(height: 16),
                                  ],
                                  if (step.translation != null && step.translation!.isNotEmpty)
                                    Text(
                                      step.translation!,
                                      style: GoogleFonts.anekMalayalam(
                                        fontSize: 16,
                                        color: ColorClass.black,
                                        height: 1.5,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                ],
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
          ],
        ),
      ),
    );
  }
}
