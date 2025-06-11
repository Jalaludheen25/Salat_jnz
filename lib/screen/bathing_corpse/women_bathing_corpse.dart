import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colorclass.dart';
import '../../constants/imagesclass.dart';
import '../../model/bathing_corpse_model.dart';

class WomenBathingCorpseScreen extends StatefulWidget {
  const WomenBathingCorpseScreen({super.key});

  @override
  _WomenBathingCorpseScreenState createState() => _WomenBathingCorpseScreenState();
}

class _WomenBathingCorpseScreenState extends State<WomenBathingCorpseScreen> {
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
      title: 'സ്ത്രീയെ കുളിപ്പിക്കുന്ന വിധം',
      description: 'സ്ത്രീയെ സ്ത്രീകളാണ് കുളിപ്പിക്കേണ്ടത്. എന്നാൽ, ഭർത്താവിനെ ഭാര്യക്കും ഭാര്യക്ക് ഭർത്താവിനെയും കുളിപ്പിക്കാം.',
    ),
    BathingCorpseModel(
      title: 'കുളിപ്പിക്കാൻ ഏറ്റവും നല്ലത്',
      description: 'മയ്യിത്ത് സ്ത്രീയാണെങ്കിൽ ഉമ്മ, ഉമ്മയുടെ ഉമ്മ, മകൾ, മകളുടെ മകൾ, പിതൃ സഹോദരി, മാതൃ സഹോദരി, അവരുടെ പെൺമക്കൾ, അന്യസ്ത്രീകൾ, ഭർത്താവ്.',
    ),
    BathingCorpseModel(
      title: 'പ്രത്യേക സാഹചര്യങ്ങൾ',
      description: '• അതുപോലെ ഒരു പുരുഷൻ മരിച്ചപ്പോൾ കുളിപ്പിക്കാൻ അന്യസ്ത്രീകൾ മാത്രമേ അവിടെയുള്ളൂവെങ്കിൽ, അല്ലെങ്കിൽ സ്ത്രീ മരിച്ചപ്പോൾ അവരെ കുളിപ്പിക്കാൻ അന്യപുരുഷന്മാർ മാത്രമേ ഉള്ളൂവെങ്കിൽ അത്തരം സന്ദർഭങ്ങളിൽ തയമ്മും ചെയ്‌തുകൊടുക്കുകയാണ് വേണ്ടത്.\n\n• അന്യസ്ത്രീകളുടെ മയ്യിത്ത് പുരുഷന്മാരോ അന്യപുരുഷന്മാരുടെ മയ്യിത്ത് അന്യസ്ത്രീകളോ കുളിപ്പിക്കാൻ പാടില്ല.\n\n• മൃതദേഹം കുളിപ്പിക്കുന്നതിനു മുമ്പ് വസ്ത്രം ഊരേണ്ടതാണ്. ചില മൃതദേഹങ്ങളിൽനിന്ന് വസ്ത്രം ഊരിയെടുക്കാൻ പ്രയാസമായിരിക്കും, അത്തരം സന്ദർഭങ്ങളിൽ കത്രികയോ ബ്ലെയ്‌ഡോ ഉപയോഗിച്ച് മുറിച്ചോ കീറിയോ എടുക്കലായിരിക്കും ഉത്തമം.',
    ),
    BathingCorpseModel(
      title: 'ഹജ്ജ് സമയത്തെ മരണം',
      description: 'ഹജ്ജിലായിരിക്കെ മരണപ്പെട്ടാൽ സാധാരണ ചെയ്യുംപോലെ കുളിപ്പിക്കണം. ഇഹ്റാമിൽ പ്രവേശിച്ച അതേ ഉടയാടകൾ കൊണ്ടായിരിക്കണം കഫൻ പൊതിയേണ്ടത്. ജനാസയുടെ തല മൂടുകയോ സുഗന്ധദ്രവ്യം പൂശുകയോ ചെയ്യരുത്. ഇഹ്റാമിൽ പ്രവേശിച്ച സ്ത്രീയാണെങ്കിൽ മുഖവും മുൻകൈയും ഒഴികെയാണല്ലോ വസ്ത്രം ധരിക്കേണ്ടത്. അങ്ങനെത്തന്നെയാണ് അവരെ കഫൻ ചെയ്യേണ്ടതും.',
    ),
    BathingCorpseModel(
      title: 'കുളിപ്പിക്കുന്നതിന് മുന്നൊരുക്കങ്ങൾ',
      description: 'കുളിപ്പിക്കാനാവശ്യമായ വെള്ളം സജ്ജീകരിക്കുക. മയ്യിത്തിനെ കുളിപ്പിക്കാൻ കിടത്തുന്നത് കട്ടിൽ, ടേബിൾ, ഡെസ്‌ക് തുടങ്ങി ഏതെങ്കിലും ഉയർന്ന പ്രതലങ്ങളിൽ വെച്ചാകാൻ ശ്രദ്ധിക്കുക.\n\nആവശ്യമായ സാധനങ്ങൾ:\n• ബക്കറ്റ്, കോപ്പ\n• സോപ്പ്, ഷാമ്പൂ\n• കഴുകാനുള്ള ചകിരി\n• ഡെറ്റോൾ\n• കർപ്പൂരം, കസ്‌തൂരി തുടങ്ങിയ സുഗന്ധങ്ങൾ\n• കോട്ടൻ\n• കത്രിക, ബ്ലേഡ്, നെയിൽ കട്ടർ\n• ടേപ്പുകൾ, പ്ലാസ്റ്ററുകൾ (രക്തം, ചലം മുതലായ സ്രവങ്ങൾ പുറത്തേക്ക് വരാതിരിക്കാൻ)',
    ),
    BathingCorpseModel(
      title: 'കുളിപ്പിക്കുന്ന രൂപം',
      description: '1. മയ്യിത്തിൻ്റെ നഗ്‌നത മറയ്ക്കുന്ന രൂപത്തിൽ എന്തെങ്കിലും വസ്ത്രം മൃതദേഹത്തിന്മേൽ ഇടുക.\n\n2. മയ്യിത്തിൻ്റെ തലഭാഗം അരയുടെ മേലോട്ട് അൽപം ഉയർത്തിപ്പിടിച്ച് വയറ്റത്ത് ലോലമായി തടവുക, കുളിപ്പിക്കുന്നവൻ ഗ്ലൗസ് (കൈയുറ) അണിയുക. കൈയിൽ ശീലയോ മറ്റോ ചുറ്റിയാലും മതി.\n\n3. ശൗചം ചെയ്തുകൊടുക്കുക.\n\n4. നമസ്കാരത്തിനെന്ന പോലെ വുദൂഅ് ചെയ്‌തുകൊടുക്കുക.\n\n5. തല സോപ്പ് ഉപയോഗിച്ച് കഴുകുക.\n\n6. വലതു വശവും തുടർന്ന് ഇടതു വശവും കഴുകുക. മൂന്ന് പ്രാവശ്യം ഇങ്ങനെ കഴുകണം.\n\n7. മൂന്നു പ്രാവശ്യം കൊണ്ടും ശുദ്ധിയായില്ലെങ്കിൽ അഞ്ച്, അല്ലെങ്കിൽ ഏഴ് തവണ കുളിപ്പിക്കാം.\n\n8. കുളിപ്പിച്ചുകഴിഞ്ഞാൽ തോർത്തിക്കൊടുക്കുക.\n\n9. സുജൂദിന്റെ സ്ഥാനത്തും ഗുഹ്യസ്ഥാനത്തും കക്ഷത്തിലും സുഗന്ധം പുരട്ടുക. ശരീരം മുഴുവൻ പുരട്ടുന്നത് നല്ലതാണ്.\n\n10. നഖം വലുതാണെങ്കിൽ വെട്ടിക്കളയണം.\n\n11. സ്ത്രീയുടെ മുടി മൂന്നായി ഭാഗിച്ച് പിൻഭാഗത്തേക്കിടുക.',
    ),
    BathingCorpseModel(
      title: 'കുളിപ്പിക്കുന്നതിൻ്റെ പൂർണരൂപം',
      description: 'ജനദൃഷ്ടിയിൽനിന്ന് മറയും വിധം പ്രത്യേക സ്ഥലത്ത് കട്ടിലോ പലകയോ ഒരു ഭാഗമുയർത്തി മയ്യിത്തിൻ്റെ തല ഉയർന്ന ഭാഗത്താക്കി മലർത്തിക്കിടത്തുക.\n\nശരീരം മുഴുവൻ വസ്ത്രംകൊണ്ട് മൂടുക. കുളിപ്പിക്കുന്ന ആൾ മയ്യിത്തിൻ്റെ ഇടതു ഭാഗത്ത് നിൽക്കുക. പിന്നീട് മയ്യിത്തിനെ താങ്ങി കുളിപ്പിക്കുന്നവൻ്റെ വലത് മുട്ടുകാൽ മയ്യിത്തിൻ്റെ മുതുകിനോട് ചേർത്തി കട്ടിലിൽ കയറ്റിവെക്കുക.\n\nവലതുകൈ തള്ളവിരൽ പിരടിക്കുഴിയിലാകും വിധം പിടിക്കുക. ഇടതു കൈ കൊണ്ട് വയറിന്മേൽ അമർത്തി ആവർത്തിച്ചു തടവുക. തദവസരം ഗുഹ്യഭാഗത്തു കൂടെ വല്ല വിസർജ്യങ്ങളും പുറത്തേക്കുവരാൻ സാധ്യതയുള്ളതിനാൽ ധാരാളം വെള്ളം ഒഴിക്കുക.\n\nശേഷം ആദ്യ രൂപത്തിൽ മലർത്തി ക്കിടത്തുക. ഇടതു കൈയിൽ ശീലചുറ്റി ഗുഹ്യഭാഗങ്ങൾ ശുദ്ധിയാക്കണം. ശേഷം വലതു കൈകൊണ്ട് പല്ലുതേച്ചുകൊടുക്കുക. അതുപോലെ മൂക്കിലുള്ള അഴുക്കുകൾ നീക്കുക. പിന്നീട് പരിപൂർണ വുദൂഅ് ചെയ്‌തുകൊടുക്കുക. എങ്കിലും ഉള്ളിലേക്ക് വെള്ളം ചേരാതിരിക്കാൻവേണ്ടി വായിൽ വെള്ളം കൊപ്ലിക്കുമ്പോൾ തല ചെരിക്കണം.\n\nനഖത്തിനിടയിലെ ചളി, മയമുള്ള കൊള്ളികൊണ്ട് നീക്കണം. സോപ്പോ താളിയോ ചേർന്ന വെള്ളം കൊണ്ട്  തല കഴുകണം. പിന്നീട് വലത്തെ മുൻഭാഗം പിരടി മുതൽ പാദം വരെ സോപ്പ് വെള്ളം ഉയോഗിച്ചുകൊണ്ട് കഴുകണം. ശേഷം ഇടതു മുൻഭാഗവും അപ്രകാരം കഴുകണം.\n\nപിന്നീട് മയ്യിത്തിനെ ഇടതു ഭാഗത്തേക്ക് ചരിച്ച് കിടത്തി വലത്തെ പിൻഭാഗം പിരടിമുതൽ പാദംവരെ സോപ്പ് വെള്ളം കൊണ്ട് കഴുകുക. പിന്നീട് വലതു ഭാഗത്തേക്ക് തിരിച്ചു കിടത്തി ഇടത് പിൻഭാഗവും അപ്രകാരം കഴുകണം. പിന്നീട് മലർത്തിക്കിടത്തി തല മുതൽ കാൽ വരെ ഒരു പ്രാവശ്യം വെള്ളമൊഴിക്കണം.\n\nപിന്നീട് ഫർദായ കുളിയെ ഞാൻ കുളിപ്പിക്കുന്നു എന്ന് നിയ്യത്ത് ചെയ്‌ത് ശുദ്ധമായ വെള്ളം തല മുതൽ കാലു വരെ മൂന്ന് തവണ ഒഴിക്കുക. അവസാനഘട്ടത്തിൽ അൽപം കർപ്പൂരം ചേർത്ത വെള്ളം മുൻ പറഞ്ഞ രീതിയിലോ മയ്യിത്തിനെ ഇരുത്തിയോ ഒഴിക്കാവുന്നതാണ്. പിന്നീട് നല്ല ശീലകൊണ്ട് ശരീരമാസകലം തോർത്തണം.',
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
          'സ്ത്രീയെ കുളിപ്പിക്കുന്ന വിധം',
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
