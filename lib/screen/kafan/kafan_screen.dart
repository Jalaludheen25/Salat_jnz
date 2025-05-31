import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/kafanmodel.dart';

class KafanScreen extends StatefulWidget {
  const KafanScreen({super.key});

  @override
  _KafanScreenState createState() => _KafanScreenState();
}

class _KafanScreenState extends State<KafanScreen> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      _kafanSteps.length,
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

  final List<KafanModel> _kafanSteps = [
    KafanModel(
      title: 'നിര്ബന്ധമായ കഫൻ',
      description: 'ശരീരം മുഴുവൻ മൂടും വിധം മൃതശരീരത്തെ തുണികൊണ്ടോ മറ്റോ പൊതിയുകയാണ് കഫൻ ചെയ്യുന്നതിന്റെ പ്രഥമവും നിർബന്ധവുമായ രീതി.',
      imagePath: ImageClass.kalima,
      instructions: '',
    ),
    KafanModel(
      title: 'കഫൻ ചെയ്യുന്നതിന്റെ പൂർണ രൂപം',
      description: 'ശരീരം മുഴുവൻ മൂടാൻ പറ്റിയ വൃത്തിയുള്ള നല്ല വസ്ത്രം എടുക്കുക. വെളുത്ത വസ്ത്രമാണുത്തമം. ഊദ് കൊണ്ടോ മറ്റോ അത് പുകയ്ക്കുകയും സുഗന്ധദ്രവ്യം തളിക്കുകയും ചെയ്യുക. പുരുഷന് മൂന്നും സ്ത്രീക്ക് അഞ്ചും കഷ്ണം തുണിയാണ് വേണ്ടത്.',
      imagePath: ImageClass.kalima,
      instructions: '',
    ),
    KafanModel(
      title: 'കഫൻ ചെയ്യൽ (ഹദീസ് 1)',
      description: 'നബി(സ) പറഞ്ഞതായി അബൂഖതാദ (റ) ഉദ്ധരിക്കുന്നു.',
      imagePath: ImageClass.kalima,
      arabicText: 'إذا وليَ أحدكُم أخاهُ فليُحسِنْ كفنهُ',
      instructions: '(നിങ്ങളിൽ ആരെങ്കിലും തന്റെ സഹോദരന്റെ കാര്യം ഏറ്റെടുക്കുകയാണെങ്കിൽ അവനെ ഭംഗിയായി കഫൻ ചെയ്യണം.)',
      translation: '(ഇബ്നു മാജ, തിർമിദി)',
    ),
    KafanModel(
      title: 'കഫൻ ചെയ്യൽ (ഹദീസ് 2)',
      description: 'നബി (സ) പറഞ്ഞതായി ഇബ്നു അബ്ബാസ് (റ) ഉദ്ധരിക്കുന്നു.',
      imagePath: ImageClass.kalima,
      arabicText: 'البَسُوا مِن ثيابِكُم البياض، فإنها مِن خَيرِ ثيابِكُم، وكفِّنُوا فيها موتاكُم',
      instructions: '(നിങ്ങൾ വെള്ളവസ്ത്രം ധരിക്കുക. അത് നിങ്ങളുടെ ഉത്തമ വസ്ത്രമാണ്. മരണപ്പെട്ടവരെ നിങ്ങൾ അതിൽ കഫൻ ചെയ്യുക.)',
      translation: '(അഹ്മദ്, അബൂദാവൂദ്, തിർമിദി)',
    ),
    KafanModel(
      title: 'കഫൻ ചെയ്യൽ (ഹദീസ് 3)',
      description: 'നബി (സ) പറഞ്ഞതായി ജാബിർ ( റ ) ഉദ്ധരിക്കുന്നു.',
      imagePath: ImageClass.kalima,
      arabicText: 'إذا أجمرتم الميت فأجمروه ثلاثا',
      instructions: '(മയ്യിത്തിനു മൂന്നുപ്രാവശ്യം സുഗന്ധധൂമം കൊള്ളിക്കുക.)',
      translation: '(അഹ്മദ്, ഹാകിം)',
    ),
    KafanModel(
      title: 'നബി (സ)യുടെ കഫൻ',
      description: '',
      imagePath: ImageClass.kalima,
      arabicText: 'كفن رسول الله ﷺﷺ في ثلاثة أثواب بيض سحولية جدد ليس فيها عمامة قميص ولا',
      instructions: '(വെളുത്ത പുതിയ മൂന്ന് കഷ്ണം സഹൂലീ വസ്ത്രത്തിലാണ് നബി ( സ) യെ കഫൻ ചെയ്തത്. അതിൽ കുപ്പായവും തലപ്പാവുമില്ലായിരുന്നു.)',
      translation: '(റിപ്പോർട്ട്: ജമാഅത്ത്)',
    ),
    KafanModel(
      title: 'സൈനബ് (റ)യുടെ കഫൻ',
      description: '',
      imagePath: ImageClass.kalima,
      arabicText: 'إن النبي ﷺ ناولها إزارا ودرعا وخمارا وثوبين',
      instructions: '(മകൾ സൈനബി (റ)നെ കഫൻ ചെയ്യാൻ ഒരു ഉടുമുണ്ടും ഒരു കുപ്പായവും മുഖമക്കനയും രണ്ട് കഷ്ണം തുണിയും (നബി(സ) അവരെ ഏൽപിച്ചു. )',
    ),
    KafanModel(
      title: 'ഹജ്ജ് യാത്രയിൽ മരിച്ചാൽ',
      description: 'ഹജ്ജിൽ ഏർപ്പെട്ട ആൾ മരിച്ചാൽ മറ്റുള്ളവരെ കുളിപ്പിക്കും പ്രകാരം അയാളെയും കുളിപ്പിക്കണം. എന്നാൽ ഇഹ്റാമിന്റെ വസ്ത്രത്തിലാവണം അയാളെ കഫൻ ചെയ്യുന്നത്. പുരുഷന്റെ തല മൂടുകയോ സുഗന്ധം തളിക്കുകയോ ചെയ്യരുത്. ഇഹ്റാമിലെ അവസ്ഥ തുടരുകയാണ് അയാളുടെ കാര്യത്തിൽ ചെയ്യേയണ്ടത്.',
      imagePath: ImageClass.kalima,
      instructions: 'ഇബ്നു അബ്ബാസ് ( റ) പറയുന്നു:',
      arabicText: 'بينما رجل واقف مع رسول الله ﷺ بعرفة إذ وقع عن راحلته فوقصته فذكر ذلك للنبي ﷺ فقال: اغسلوه بماء وسدر وكفنوه في ثوبيه ولا تحنطوه ولا تخمروا رأسه فإن الله تعالى يبعثه يوم القيمة ملبيا',
      translation: '(ഒരാൾ റസൂലി(സ)ന്റെ കൂടെ അറഫയിൽ നിൽക്കുമ്പോൾ വാഹന പുറത്തുനിന്ന് വീണ് കഴുത്തൊടിഞ്ഞ് മരിച്ചു. സംഭവം നബി(സ)യോട് പറഞ്ഞു: അപ്പോൾ അവിടുന്നു പറഞ്ഞു: നിങ്ങൾ അദ്ദേഹത്തെ വെള്ളവും താളിയും ഉപയോഗിച്ച് കുളിപ്പിക്കുക. അദ്ദേഹത്തിന്റെ രണ്ട് വസ്ത്രത്തിൽ കഫൻ ചെയ്യുക. സുഗന്ധം പൂശുകയോ തല മൂടുകയോ ചെയ്യരുത്. അന്ത്യദിനത്തിൽ തൽബിയ്യത്തു ചൊല്ലുന്ന അവസ്ഥയിൽ അദ്ദേഹത്തെ അല്ലാഹു പുനരുജ്ജീവിപ്പിക്കും.',
    ),
    KafanModel(
      title: 'കഫൻ : പ്രധാന നിർദേശങ്ങൾ',
      description: 'കഫൻ മിതവും ചെലവ് കുറഞ്ഞതുമാവണം. അനാവശ്യ ചെലവുകൾ അരുത്. പട്ടുവസ്ത്രം പുരുഷൻമാർക്കു നിഷിദ്ധമാണ്. അതിനാൽ അവരുടെ കഫനും പട്ടാകാവതല്ല. പരേതന്റെ ധനത്തിൽ നിന്നു തന്നെയാണ് സംസ്കരണ ചെലവുകൾ നിർവ്വഹിക്കേണ്ടത്. അയാൾക്കു സമ്പത്തില്ലെങ്കിൽ അയാളുടെ ബാധ്യത കയ്യേൽക്കുന്നവർ ചെലവ് വഹിക്കണം. അത്തരം ആരും ഇല്ലെങ്കിൽ ബൈതുൽമാലിൽ നിന്ന്.',
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
          'കഫൻ ചെയ്യൽ',
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
                  ImageClass.covering,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _kafanSteps.length,
              itemBuilder: (context, index) {
                final step = _kafanSteps[index];
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
          ),
        ],
      ),
    );
  }
}
