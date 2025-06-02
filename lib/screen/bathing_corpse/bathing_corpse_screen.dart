import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/deadboadyverbmodel.dart';

class BathingCorpseScreen extends StatefulWidget {
  const BathingCorpseScreen({super.key});

  @override
  _BathingCorpseScreenState createState() => _BathingCorpseScreenState();
}

class _BathingCorpseScreenState extends State<BathingCorpseScreen> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      _deadBodySteps.length,
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

  final List<BathingCorpsemodel> _deadBodySteps = [
    BathingCorpsemodel(
      title: 'നിർബന്ധമായ കുളി',
      description: 'മൃതശരീരം മുഴുവൻ ഒരു തവണ വെള്ളം നനക്കുക എന്നതാണ് കുളിയിൽ നിർബന്ധം.',
      imagePath: ImageClass.kalima,
      instructions: '',
    ),
    BathingCorpsemodel(
      title: 'കുളിപ്പിക്കുമ്പോള്‍ ആദ്യമായി ചെയ്യേണ്ട 7 കാര്യങ്ങള്‍',
      description: '1. എഴുന്നേല്‍പ്പിച്ച് ഇരുത്തി വയര്‍തടവുക.\n2. ഇടത് കൈകൊണ്ട് ഗുഹ്യാവയവം വൃത്തിയാക്കുക.\n3. പല്ല് വൃത്തിയാക്കുക.\n4. മൂക്ക് വൃത്തിയാക്കുക.\n5. പൂര്‍ണമായി വുളൂഅ് എടുത്ത് കൊടുക്കു.\n6. താടിയും തലയും സോപ്പോ താളിയോ ഉപയോഗിച്ച് കഴുകിവൃത്തിയാക്കുക.\n7. മുടിചീകുക (സ്ത്രീകളാണെങ്കില്‍ മുടി 3 ആക്കി മെടഞ്ഞിടുക)',
      imagePath: ImageClass.kalima,
      instructions: '',
    ),
    BathingCorpsemodel(
      title: 'കുളിയുടെ ക്രമം',
      description: '1. വലത് ഭാഗം കഴുത്ത്മുതല്‍ കാലറ്റം വരെ 3 പ്രാവശ്യം വെള്ളം ഒഴുക്കുക.\n2. ഇടതു ഭാഗം കഴുത്ത്മുതല്‍ കാലറ്റം വരെ 3 പ്രാവശ്യം വെള്ളം ഒഴുക്കുക.\n3. വലത് ഭാഗം ചരിച്ച് കിടത്തി വശവും പുറംഭാഗവും 3 പ്രാവശ്യം വെള്ളം ഒഴുക്കുക.\n4. ഇടതു ഭാഗം ചരിച്ച് കിടത്തി വശവും പുറംഭാഗവും 3 പ്രാവശ്യം വെള്ളം ഒഴുക്കുക.\n5. ശരീരത്തിന്റെ വലത്തും ഇടത്തും പുറവും കഴുത്ത് മുതല്‍ കാലറ്റംവരെ മുഴുവന്‍ ഭാഗങ്ങളിലും സോപ്പോ താളിയോ ഉപയോഗിക്കുക.\n6. ആദ്യം വലത് ഭാഗം വൃത്തിയാക്കുക. (3 പ്രാവശ്യം വെള്ളം ഒഴിക്കുക)\n7. പിന്നെ ഇടത് ഭാഗം വൃത്തിയാക്കുക. (3 പ്രാവശ്യം വെള്ളം ഒഴിക്കുക)\n8. പിന്നെ വലത് വശവും പുറവും വൃത്തിയാക്കുക. (3 പ്രാവശ്യം വെള്ളം ഒഴിക്കുക)\n9. പിന്നെ ഇടത് വശവും പുറവും വൃത്തിയാക്കുക. (3 പ്രാവശ്യം വെള്ളം ഒഴിക്കുക)\n10. സുഗന്ധമോ കര്‍പ്പൂരമോ കലര്‍ത്തിയ വെള്ളം ആദ്യം വലത് ഭാഗത്ത് ഒഴിക്കുക. ( 3 പ്രാവശ്യം)\n11. പിന്നെ 3 പ്രാവശ്യം ഇടത് ഭാഗത്ത് ഒഴിക്കുക.\n12. വലത് ഭാഗം ചെരിച്ച് കിടത്തി 3 പ്രാവശ്യം വലതു വശത്തും പുറം ഭാഗത്തും ഒഴുക്കുക.\n13. പിന്നെ ഇടത് ഭാഗം ചെരിച്ച് കിടത്തി 3 പ്രാവശ്യം വശവും പുറം ഭാഗവും വെള്ളം ഒഴുക്കുക.\n14. തോര്‍ത്തോ തുണിയോ ഉപയോഗിച്ച് എല്ലാഭാഗത്തെയും വെള്ളം തുടച്ച് കളഞ്ഞ് മുണ്ട് ഉടുപ്പിക്കുക.',
      imagePath: ImageClass.kalima,
      instructions: '',
    ),
    BathingCorpsemodel(
      title: 'കുളിയുടെ പൂർണ്ണരൂപം',
      description: 'മയ്യിത്തിനെ നിലത്തുനിന്ന് വെള്ളം തെറിക്കാത്ത വിധം അല്പം ഉയരമുള്ള ഒരിടത്ത് കിടത്തുക.',
      imagePath: ImageClass.kalima,
      instructions: 'ഒരു തുണി കൊണ്ട് ഔറത്ത് മറച്ച ശേഷം സാധാരണ വസ്ത്രങ്ങൾ നീക്കുക. കുളിപ്പിക്കാൻ അവശ്യം വേണ്ട ആളുകൾ, അതും വിശ്വസ്തർ മാത്രമേ കുളിപ്പിക്കുന്നിടത്ത് പ്രവേശിക്കാവൂ. ആവശ്യമെങ്കിൽ വെള്ളം ചൂടാക്കാം. കുളിപ്പിക്കുകയാണെന്ന് നിയ്യത്തോടുകൂടി തുടങ്ങുക. മയ്യിത്തിന്റെ വലതുഭാഗത്ത് കൂടി താങ്ങി അരക്കു മേലോട്ടു അല്പം പൊക്കി ഇടതു കൈകൊണ്ട് വയർ മൃദുലമായി അല്പം തടവുക. മാലിന്യങ്ങളുണ്ടെങ്കിൽ പോകാനാണിത്. ഇടതുകൈയിൽ ശീലയോ മറ്റോ ചുറ്റി മലമൂത്രവിസർജ്ജനദ്വാരങ്ങൾ കഴുകിയശേഷം നമസ്കാരത്തിനെന്നപോലെ വുദു ഉണ്ടാക്കിക്കൊടുക്കുക. പിന്നെ തലയിൽ വെള്ളം ഒഴിക്കുക. പിന്നെ വലതുഭാഗവും ഇടതുഭാഗവും കഴുകുക. ചെളിയും മറ്റും പോവാൻ സോപ്പോ, താളിയോ ഉപയോഗിക്കണം.\n\nസ്ത്രീകളുടെ മുടി അഴിച്ച് ഉള്ളിൽ വെള്ളം ചേർത്ത് കഴുകി മൂന്നായി മെടഞ്ഞ് പിന്നിലേക്ക് ഞാത്തിയിടണം. ശരീരം ചുരുങ്ങിയതു മൂന്നുതവണ കഴുകണം. കൂടുതൽ തവണ കഴുകണമെന്നുണ്ടങ്കിൽ അഞ്ച്, ഏഴ് എന്നിങ്ങനെ ഒറ്റയിൽ അവസാനിപ്പിക്കണം. അവസാനതവണ വെള്ളത്തിൽ അല്പം കർപ്പൂരം ചേർക്കണം. കുളിപ്പിച്ച് കഴിഞ്ഞാൽ വൃത്തിയുള്ള നേരിയ തുണി കൊണ്ട് ശരീരം തുവർത്തണം. കഫൻ പുടവ നനയാതിരിക്കാൻ അതാവശ്യമാണ്. അനന്തരം മൂന്ന് തവണ സാമ്പ്രാണിയോ മറ്റോ പുകക്കണം. മയ്യിത്തിന്റെ നഖം, രോമം ആദിയായവ മുറിച്ചുകളയാൻ പാടില്ല. കുളിപ്പിച്ച ശേഷം കഫൻ ചെയ്യുന്നതിന് മുമ്പ് മലമൂത്രാദി വല്ല നജസും പുറത്തുവന്നാൽ ആ ഭാഗം മാത്രം കഴുകിയാൽ മതി.',
    ),
    BathingCorpsemodel(
      title: 'കുളിയുടെ രൂപം (ഹദീസ് 1)',
      description: 'മയ്യിത്ത് കുളിപ്പിക്കുന്നതു സംബന്ധിച്ച് ഉമ്മു അതിയ്യ (റ) പറയുന്നു.',
      imagePath: ImageClass.kalima,
      instructions: '(മകൾ മരിച്ചപ്പോൾ റസൂൽ (സ) ഞങ്ങളുടെ അടുത്ത് വന്നു പറഞ്ഞു. വെള്ളവും താളിയും ഉപയോഗിച്ച് മൂന്നോ അഞ്ചോ വേണമെന്ന് നിങ്ങൾക്ക് തോന്നുന്നുവെങ്കിൽ – അതിൽ കൂടുതലോ തവണ നിങ്ങൾ അവളെ കുളിപ്പിക്കുക. അവസാന തവണ അല്പം കർപ്പൂരവും ചേർക്കുക. കുളിപ്പിച്ച് കഴിഞ്ഞാൽ വിവരം എന്നെ അറിയിക്കുക. അങ്ങനെ കുളിപ്പിച്ച് കഴിഞ്ഞപ്പോൾ ഞങ്ങൾ നബി(സ)യെ അറിയിച്ചു. അപ്പോൾ അദ്ദേഹം തന്റെ തുണി നൽകിയിട്ട് അത് അവരുടെ അടിവസ്ത്രമായി ധരിപ്പിക്കാൻ പറഞ്ഞു.)',
      arabicText: 'دخل علينا رسول اللہ ﷺ حين توفيت ابنته فقال : اغسلنها ثلاثا أو خمسا أو أكثر من ذلك إن رأيتن بماء وسدر واجعلن في الأخيرة كافورا أوشيئا من كافور فإذا فرغتن فآذتني فلما فرغنا آذناه فأعطانا حقوه فقال أشعرنها إياه (رواه الجماعة)',
    ),
    BathingCorpsemodel(
      title: 'കുളിയുടെ രൂപം (ഹദീസ് 2)',
      description: 'നബി (സ) പറഞ്ഞു:',
      imagePath: ImageClass.kalima,
      instructions: '(അവളുടെ വലതുഭാഗത്തുനിന്ന്, അവളുടെ വുദുവിന്റെ അവയവങ്ങൾ കൊണ്ട് തുടങ്ങുക.)',
      arabicText: 'ابدأن بميامنها ومواضع الوضوء منها',
    ),
    BathingCorpsemodel(
      title: 'തയമ്മും ചെയ്യണ്ട സന്ദർഭങ്ങൾ',
      description: 'കുളിപ്പിക്കാൻ വെള്ളം ലഭിക്കാതെ വരികയോ, കുളിപ്പിക്കാൻ പറ്റാത്ത വിധം മയ്യിത്ത് അഴുകിപ്പോവുകയോ, കുളിപ്പിക്കാൻ പറ്റിയ ബന്ധുക്കളാരുമില്ലാത്ത വിധം പുരുഷൻമാർ മാത്രമുള്ളിടത്ത് വെച്ച് സ്ത്രീയോ, സ്ത്രീകൾ മാത്രമുള്ളിടത്ത് പുരുഷനോ മരിക്കുകയോ ചെയ്താൽ തയമ്മും ചെയ്യുകയാണ് വേണ്ടത്.',
      imagePath: ImageClass.kalima,
      instructions: '',
    ),
    BathingCorpsemodel(
      title: 'ഭാര്യാഭർത്താക്കന്മാർക് കുളിപ്പിക്കാം',
      description: 'ഭാര്യയെ ഭർത്താവിനും ഭർത്താവിനെ ഭാര്യയ്ക്കും കുളിപ്പിക്കാവുന്നതാണ്. അലി(റ)യാണ് ഫാതിമ(റ)യെ കുളിപ്പിച്ചത്.',
      imagePath: ImageClass.kalima,
      instructions: 'ആയിശ(റ) പറഞ്ഞു:',
      arabicText: 'لو استقبلتُ من أمري ما استدبرتُ ما غسلَه إلا نساؤُه',
      translation: '(ഞാൻ പിന്നീടറിഞ്ഞത് നേരത്തെ അറിഞ്ഞിരുന്നുവെങ്കിൽ നബി (സ)യെ അവിടുത്തെ ഭാര്യമാർ മാത്രമേ കുളിപ്പിക്കുമായിരുന്നുള്ളൂ- അഹ്മദ്, അബൂദാവൂദ്, ഹാകിം)',
    ),
    BathingCorpsemodel(
      title: 'ചെറിയ ആൺകുട്ടികളെ സ്ത്രീകൾക് കുളിപ്പിയ്ക്കാം',
      description: 'ചെറിയ ആൺകുട്ടിയെ സ്ത്രീകൾക്കു കുളിപ്പിക്കാമെന്ന കാര്യത്തിൽ തർക്കമില്ല.',
      imagePath: ImageClass.kalima,
      instructions: '',
    ),
  ];

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
          'മയ്യിത്ത് കുളിപ്പിക്കല്‍',
          style: GoogleFonts.anekMalayalam(
            fontSize: 22,
            color: ColorClass.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
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
                      ImageClass.bathing,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
           ),
           Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _deadBodySteps.length,
              itemBuilder: (context, index) {
                final step = _deadBodySteps[index];
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
                          title: Row(
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 213, 199, 235)  ,
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
                              const SizedBox(width: 16),
                              SizedBox(
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
                            ],
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
                                  Text(
                                    step.description,
                                    style: GoogleFonts.anekMalayalam(
                                      fontSize: 16,
                                      color: ColorClass.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  if (step.arabicText != null && step.arabicText!.isNotEmpty) ...[
                                    const SizedBox(height: 16),
                                    Text(
                                      step.arabicText!,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        height: 1.5,
                                        fontFamily: 'Amiri',
                                      ),
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ],
                                  if (step.instructions.isNotEmpty) ...[
                                    const SizedBox(height: 16),
                                    Text(
                                      step.instructions,
                                      style: GoogleFonts.anekMalayalam(
                                        fontSize: 16,
                                        color: ColorClass.black,
                                        height: 1.5,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                  if (step.translation != null && step.translation!.isNotEmpty) ...[
                                    const SizedBox(height: 16),
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
          ),
        ],
      ),
    );
  }
}
