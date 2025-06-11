import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colorclass.dart';
import '../../constants/imagesclass.dart';
import '../../model/bathing_corpse_model.dart';

class MenBathingCorpseScreen extends StatefulWidget {
  const MenBathingCorpseScreen({super.key});

  @override
  _MenBathingCorpseScreenState createState() => _MenBathingCorpseScreenState();
}

class _MenBathingCorpseScreenState extends State<MenBathingCorpseScreen> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      _bathingSteps.length,
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

  final List<BathingCorpseModel> _bathingSteps = [
    BathingCorpseModel(
      title: 'പുരുഷനെ കുളിപ്പിക്കുന്നത് ആരൊക്കെ?',
      description: 'പുരുഷനെ പുരുഷനാണ് കുളിപ്പിക്കേണ്ടത്. എന്നാൽ, ഭർത്താവിനെ ഭാര്യക്കും ഭാര്യക്ക് ഭർത്താവിനെയും കുളിപ്പിക്കാം.\n\nകുളിപ്പിക്കാൻ ഏറ്റവും നല്ലത് താഴെ പറയുന്നവരാണ്: മയ്യിത്ത് പുരുഷന്റെതാണെങ്കിൽ പിതാവ്, പിതാമഹൻ, മകൻ, പേരമകൻ (പൗത്രൻ), സഹോദരൻ, സഹോദരപുത്രൻ, പിതൃവ്യൻ, അവരുടെ ആൺമക്കൾ, ഇതര കുടുംബാദികൾ, അന്യപുരുഷന്മാർ എന്നീ ക്രമത്തിനനുസരിച്ച്.',
    ),
    BathingCorpseModel(
      title: 'പ്രത്യേക സാഹചര്യങ്ങൾ',
      description: '• മൃതദേഹം കുളിപ്പിക്കുന്നതിനു മുമ്പ് വസ്ത്രം ഊരേണ്ടതാണ്. ചില മൃതദേഹങ്ങളിൽനിന്ന് വസ്ത്രം ഊരിയെടുക്കാൻ പ്രയാസമായിരിക്കും, അത്തരം സന്ദർഭങ്ങളിൽ കത്രികയോ ബ്ലെയ്‌ഡോ ഉപയോഗിച്ച് മുറിച്ചോ കീറിയോ എടുക്കലായിരിക്കും ഉത്തമം.\n\n• ഹജ്ജിലായിരിക്കെ മരണപ്പെട്ടാൽ സാധാരണ ചെയ്യുംപോലെ കുളിപ്പിക്കണം. ഇഹ്റാമിൽ പ്രവേശിച്ച അതേ ഉടയാടകൾ കൊണ്ടായിരിക്കണം കഫൻ പൊതിയേണ്ടത്. ജനാസയുടെ തല മൂടുകയോ സുഗന്ധദ്രവ്യം പൂശുകയോ ചെയ്യരുത്.',
    ),
    BathingCorpseModel(
      title: 'കുളിപ്പിക്കുന്നതിന് മുന്നൊരുക്കങ്ങൾ',
      description: 'കുളിപ്പിക്കാനാവശ്യമായ വെള്ളം സജ്ജീകരിക്കുക. മയ്യിത്തിനെ കുളിപ്പിക്കാൻ കിടത്തുന്നത് കട്ടിൽ, ടേബിൾ, ഡെസ്‌ക് തുടങ്ങി ഏതെങ്കിലും ഉയർന്ന പ്രതലങ്ങളിൽ വെച്ചാകാൻ ശ്രദ്ധിക്കുക.\n\nആവശ്യമായ സാധനങ്ങൾ:\n• ബക്കറ്റ്, കോപ്പ\n• സോപ്പ്, ഷാമ്പൂ\n• കഴുകാനുള്ള ചകിരി\n• ഡെറ്റോൾ\n• കർപ്പൂരം, കസ്‌തൂരി തുടങ്ങിയ സുഗന്ധങ്ങൾ\n• കോട്ടൻ\n• കത്രിക, ബ്ലേഡ്, നെയിൽ കട്ടർ\n• ടേപ്പുകൾ, പ്ലാസ്റ്ററുകൾ (രക്തം, ചലം മുതലായ സ്രവങ്ങൾ പുറത്തേക്ക് വരാതിരിക്കാൻ)',
    ),
    BathingCorpseModel(
      title: 'കുളിപ്പിക്കുന്ന രൂപം',
      description: '1. മയ്യിത്തിൻ്റെ നഗ്‌നത മറയ്ക്കുന്ന രൂപത്തിൽ എന്തെങ്കിലും വസ്ത്രം മൃതദേഹത്തിന്മേൽ ഇടുക.\n\n2. മയ്യിത്തിൻ്റെ തലഭാഗം അരയുടെ മേലോട്ട് അൽപം ഉയർത്തിപ്പിടിച്ച് വയറ്റത്ത് ലോലമായി തടവുക, കുളിപ്പിക്കുന്നവൻ ഗ്ലൗസ് (കൈയുറ) അണിയുക. കൈയിൽ ശീലയോ മറ്റോ ചുറ്റിയാലും മതി.\n\n3. ശൗചം ചെയ്തുകൊടുക്കുക.\n\n4. നമസ്കാരത്തിനെന്ന പോലെ വുദൂഅ് ചെയ്‌തുകൊടുക്കുക.\n\n5. തല, താടി എന്നിവ സോപ്പ് ഉപയോഗിച്ച് കഴുകുക.\n\n6. വലതു വശവും തുടർന്ന് ഇടതു വശവും കഴുകുക. മൂന്ന് പ്രാവശ്യം ഇങ്ങനെ കഴുകണം. വീണ്ടും വല്ലതും പുറപ്പെട്ടിട്ടുണ്ടെങ്കിൽ ശുദ്ധീകരിച്ച് വീണ്ടും കഴുകിക്കൊടുക്കേണ്ടതാണ്.\n\n7. മൂന്നു പ്രാവശ്യം കൊണ്ടും ശുദ്ധിയായില്ലെങ്കിൽ അഞ്ച്, അല്ലെങ്കിൽ ഏഴ് തവണ കുളിപ്പിക്കാം.\n\n8. കുളിപ്പിച്ചുകഴിഞ്ഞാൽ തോർത്തിക്കൊടുക്കുക.\n\n9. സുജൂദിന്റെ സ്ഥാനത്തും ഗുഹ്യസ്ഥാനത്തും കക്ഷത്തിലും സുഗന്ധം പുരട്ടുക. ശരീരം മുഴുവൻ പുരട്ടുന്നത് നല്ലതാണ്.\n\n10. മീശ, നഖം എന്നിവ വലുതാണെങ്കിൽ വെട്ടിക്കളയണം.',
    ),
    BathingCorpseModel(
      title: 'കുളിപ്പിക്കുന്നതിൻ്റെ പൂർണരൂപം',
      description: 'ജനദൃഷ്ടിയിൽനിന്ന് മറയും വിധം പ്രത്യേക സ്ഥലത്ത് കട്ടിലോ പലകയോ ഒരു ഭാഗമുയർത്തി മയ്യിത്തിൻ്റെ തല ഉയർന്ന ഭാഗത്താക്കി മലർത്തിക്കിടത്തുക.\n\nശരീരം മുഴുവൻ വസ്ത്രംകൊണ്ട് മൂടുക. കുളിപ്പിക്കുന്ന ആൾ മയ്യിത്തിൻ്റെ ഇടതു ഭാഗത്ത് നിൽക്കുക. പിന്നീട് മയ്യിത്തിനെ താങ്ങി കുളിപ്പിക്കുന്നവൻ്റെ വലത് മുട്ടുകാൽ മയ്യിത്തിൻ്റെ മുതുകിനോട് ചേർത്തി കട്ടിലിൽ കയറ്റിവെക്കുക. വലതുകൈ തള്ളവിരൽ പിരടിക്കുഴിയിലാകും വിധം പിടിക്കുക. ഇടതു കൈ കൊണ്ട് വയറിന്മേൽ അമർത്തി ആവർത്തിച്ചു തടവുക.\n\nകാൽമുട്ടിൽ ചാരി ഇരുത്തി ഇടത് കൈകൊണ്ട് വയറ്റത്ത് ലോലമായി തടവുക. (വയറ്റിലുള്ളതൊക്കെ പുറത്തുവരാനാണ് ഇങ്ങനെ ചെയ്യുന്നത്) ഈ അവസരിത്തിൽ കുളിപ്പിക്കുന്നവൻ്റെ സഹായി വെള്ളമൊഴിച്ച് കൊണ്ടേയിരിക്കണം.\n\nമലർത്തിക്കിടത്തി കൈയുറ ധരിച്ചോ കൈയിൽ ശീലചുറ്റിയോ ശൗചം ചെയ്‌തു കൊടുക്കുക.\n\nകൈ കഴുകിയതിനു ശേഷം മറ്റൊരു ശീല ചുറ്റിയ ശേഷം ഇടത് കൈയിന്റെ ചൂണ്ടുവിരൽ കൊണ്ട് പല്ലും മൂക്കിൻ്റെ ദ്വാരങ്ങളും വൃത്തിയാക്കുക.\n\nനമസ്കാരത്തിന് വുദൂഅ് എടുക്കുന്ന പോലെ വുദൂഅ് എടുത്തുകൊടുക്കുക. തല, താടി എന്നിവ താളിയോ സോപ്പോ ഷാംബുവോ ഉപയോഗിച്ച് കഴുകുക.\n\nതാടിയും മുടിയും വാർന്നുവെക്കുക. ആദ്യം വലതു വശവും തുടർന്ന് ഇടതു വശവും കഴുകുക (തല മുതൽ കാലുവരെ). ശേഷം ഇടതു ഭാഗത്തേക്ക് ചെരിച്ചു കിടത്തി പുറംഭാഗത്ത് വലതു വശവും പിന്നെ വലത് ഭാഗത്ത് ചെരിച്ച് കിടത്തി ഇടത് ഭാഗവും കഴുകുക. മൂന്ന് പ്രാവശ്യം കഴുകൽ സുന്നത്താണ്. അതുകൊണ്ട് ശുദ്ധിയായില്ലെങ്കിൽ അഞ്ച്, ഏഴ് ഇങ്ങനെ എണ്ണം വർധിപ്പിക്കാവുന്നതാണ്. (ഒറ്റ സംഖ്യയാക്കൽ സുന്നത്താണ്.)\n\nഒന്നാമത്തെ കഴുകലിൽ ഷാംബുവോ സോപ്പോ ഉപയോഗിക്കുക.\n\nതാളിയുടേയോ സോപ്പിൻ്റെയോ അംശം കഴുകിക്കളഞ്ഞതിനു ശേഷം നല്ല വെള്ളം മൂന്ന് പ്രാവശ്യം ഒഴിക്കുക. ഈ മൂന്നാമത്തെ പ്രാവശ്യം, അതല്ലെങ്കിൽ ഏറ്റവുമൊടുവിൽ കർപ്പൂരം, കസ്‌തൂരി, മറ്റു സുഗന്ധദ്രവ്യങ്ങൾ എന്നിവ ഉപയോഗിക്കുന്നത് സുന്നത്താണ്. സന്ധികൾ മയപ്പെടുത്തി വെള്ളം തുണി കൊണ്ട് തുടച്ച് കളയുക.',
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
          'പുരുഷനെ കുളിപ്പിക്കുന്ന വിധം',
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
              itemCount: _bathingSteps.length,
              itemBuilder: (context, index) {
                final step = _bathingSteps[index];
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
                              child: Text(
                                step.description,
                                style: GoogleFonts.anekMalayalam(
                                  fontSize: 16,
                                  color: ColorClass.black,
                                  height: 1.5,
                                  fontWeight: FontWeight.w500,
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
