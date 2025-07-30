import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';

class JanazaSamskaranam extends StatefulWidget {
  const JanazaSamskaranam({super.key});

  @override
  _JanazaSamskaranamState createState() => _JanazaSamskaranamState();
}

class _JanazaSamskaranamState extends State<JanazaSamskaranam> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      _samskaranamSteps.length,
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

  final List<Map<String, dynamic>> _samskaranamSteps = [
    {
      'title': 'സംസ്ക്കരണം വേഗത്തിലാക്കുക',
      'description':
          'ജനാസ സംസ്കരണം കഴിയുന്നതും വേഗത്തിലാക്കുകയാണ് വേണ്ടത്. മറമാടാൻ ജനാസ കൊണ്ടു പോവുന്നതും അങ്ങനെ തന്നെ. പതുക്കെ നടന്നു നീങ്ങുകയല്ല, അല്പം ധൃതിയിൽ നടക്കണം.',
      'arabicText':
          'لقد رأيتنا مع رسول الله ﷺ وسلم وإنا لنكاد نرمل بالجنازة رملا',
      'translation':
          'ഞങ്ങൾ ജനാസയും കൊണ്ട് നബി(സ)യോടൊപ്പം വേഗത്തിൽ നടക്കുന്നതു ഞാൻ കണ്ടതാണ്- അഹ്മദ്, നസാഈ',
      'source': 'അബൂബകർ (റ) പറയുന്നു',
      'imagePath': ImageClass.cremation,
    },
    {
      'title': 'മയ്യിത്ത് കട്ടിൽ എങ്ങനെ താങ്ങണം',
      'description':
          'ചുമലിളക്കി ധൃതിപിടിച്ചുള്ള നടത്തമാണ് റമൽ. മയ്യിത്ത് കട്ടിലിന്റെ നാലുതണ്ട് നാല് മൂലകളിൽ നിന്നും പിടിക്കുന്നതല്ല, ചുറ്റും താങ്ങുന്ന രീതിയാണ് ഉത്തമം.',
      'arabicText': 'من اتبع جنازة فليحمل بجوانب السرير كلها فإنه من السنة',
      'translation':
          'ജനാസയെ അനുഗമിക്കുന്നവർ കട്ടിലിന്റെ എല്ലാ ഭാഗത്തുനിന്നും താങ്ങണം. അതാണ് പ്രവാചകചര്യ.',
      'source': 'ഇബ്നു മസ്ഊദ് (റ) പറയുന്നു',
      'imagePath': ImageClass.cremation,
    },
    {
      'title': 'ജനാസയോടൊപ്പം സഞ്ചരിക്കുന്ന വിധം',
      'description':
          'നടക്കുന്നവർ മയ്യിത്ത് കട്ടിലിന് മുമ്പിലും പിമ്പിലും വലത്തും ഇടത്തുമായി സഞ്ചരിക്കുകയാണ് വേണ്ടത്. വാഹനത്തിൽ സഞ്ചരിക്കുന്നവർ പിന്നിലും.',
      'arabicText':
          'الراكب خلف الجنازة والماشي خلفها وأمامها وعن يمينها و عن يسارها قريبا منها والسقط يصلى عليه ويدعى لوالديه بالمغفرة والرحمة',
      'translation':
          'വാഹനത്തിൽ സഞ്ചരിക്കുന്നവൻ ജനാസക്കു പിന്നിലും, കാൽ നടയായി സഞ്ചരിക്കുന്നവൻ അതിനു മുമ്പിലോ പിമ്പിലോ വലതു ഭാഗത്തോ ഇടതു ഭാഗത്തോ തൊട്ടടുത്തായും സഞ്ചരിക്കണം. ചാപിള്ളക്കും നമസ്കരിക്കണം. അതിന്റെ മാതാപിതാക്കൾക്കു പാപ മോചനത്തിനും കാരുണ്യത്തിനും വേണ്ടിയാണ് പ്രാർത്ഥിക്കേണ്ടത്',
      'source': 'നബി(സ) പറഞ്ഞതായി മുഗീറതുബ്നു ശുഅ്ബ(റ) ഉദ്ധരിക്കുന്നു',
      'imagePath': ImageClass.cremation,
    },
    {
      'title': 'ജനാസക്കൊപ്പം അരുതാത്ത കാര്യങ്ങൾ',
      'description':
          '1. ശബ്ദമുയർത്തി ദിക്ർ ചൊല്ലുക, ഖുർആൻ ഓതുക മുതലായവ\n2. ജനാസ യോടൊപ്പം തീ കൊണ്ടു പോകരുത്\n3. ജനാസക്കൊപ്പം പോകുന്നവർ ജനാസ താഴെ വെയ്ക്കും മുമ്പ് ഇരിക്കരുത്\n4. സ്ത്രീകൾ ജനാസയെ പിന്തുടരരുത്',
      'arabicText':
          'كان أصحاب رسول الله ﷺﷺ يكرهون رفع الصوت عند ثلاث: عند الجنائز وعند الذكر وعند القتال',
      'translation':
          'മൂന്ന് സന്ദർഭത്തിൽ ശബ്ദമുയർത്തുന്നതു നബി(സ)യുടെ സഹാബിമാർ വെറുത്തിരുന്നു. ജനാസയുടെ അരികിൽ, ദിക്ർ ചൊല്ലുമ്പോൾ, യുദ്ധത്തിൽ.',
      'source': 'ഖൈസുബ്നു ഉബ്ബാദ് (റ) പറയുന്നു',
      'imagePath': ImageClass.cremation,
    },
    {
      'title': 'ഖബറടക്കൽ',
      'description':
          'മയ്യിത്തിനെ ഖബറടക്കൽ മുസ്ലിംകളുടെ സാമൂഹ്യബാധ്യതയാണ്. അതു രാത്രിയാവുന്നത് തെറ്റല്ല. നബി (സ)യുടെ കാലത്തും സ്വഹാബിമാരുടെ കാലത്തും പകലിലെന്നപോലെ രാത്രിയും മയ്യിത്ത് ഖബറടക്കിയിരുന്നു.',
      'arabicText': '',
      'translation': '',
      'source': '',
      'imagePath': ImageClass.cremation,
    },
    {
      'title': 'ഖബർ ആഴം കൂട്ടൽ',
      'description':
          'ചീഞ്ഞളിയുമ്പോൾ ദുർഗന്ധം പുറത്തു വരാതെയും, വന്യജന്തുക്കൾ മാന്തി പുറത്തിടാതെയും ശരീരം ഭൂമിയിൽ മറവ് ചെയ്യുക. അതാണ് ഖബറടക്കം കൊണ്ടുദ്ദേശിക്കുന്നത്. ഖബർ ആഴം കൂട്ടുന്നതു നല്ലതാണ്.',
      'arabicText': '',
      'translation': '',
      'source': 'ഹിശാമുബ്നു ആമിർ (റ)',
      'imagePath': ImageClass.kabrKuzhikkunnu,
    },
    {
      'title': 'മയ്യിത്ത് ഖബറിൽ താഴ്ത്തേണ്ട വിധം',
      'description':
          'മയ്യിത്ത് ഖബറിൽ താഴ്ത്തേണ്ടതു ആദ്യം കാലിന്റെ ഭാഗമാണ്. മുഖം ഖിബ് ലയിലേക്ക് തിരിച്ച് വലതു ഭാഗത്തിന്മേൽ ചരിച്ചാണ് മയ്യിത്ത് കിടത്തേണ്ടത്. കഫൻ പുടവയുടെ കെട്ടുകൾ അഴിച്ചിടണം.',
      'arabicText': '',
      'translation': '',
      'source': '',
      'imagePath': ImageClass.cremation,
    },
    {
      'title': 'ഖബറടക്കിയശേഷമുള്ള പ്രാർത്ഥന',
      'description':
          'ഖബറടക്കിക്കഴിഞ്ഞാൽ മയ്യിത്തിന് പാപമോചനത്തിന് വേണ്ടിയും ചോദ്യം ചെയ്യുമ്പോൾ സൈ്ഥര്യത്തിനുവേണ്ടിയും പ്രാർത്ഥിക്കണം.',
      'arabicText': 'استغفروا لأخيكم وسلوا له التثبيت فإنه الآن يسأل',
      'translation':
          'നിങ്ങളുടെ സഹോദരന് വേണ്ടി മാപ്പിരക്കുക, അദ്ദേഹത്തിന് സ്ഥര്യത്തിന് അപേക്ഷിക്കുക. അദ്ദേഹം ഇപ്പോൾ ചോദ്യം ചെയ്യപ്പെടാൻ പോവുകയാണ്.',
      'source': 'നബി(സ)',
      'imagePath': ImageClass.kabarZiyarath,
    },
    {
      'title': 'കബറിന് അടയാളം വെക്കൽ',
      'description':
          'തിരിച്ചറിയാൻ പാകത്തിൽ ഖബറിന്മേൽ കല്ലോ മറ്റോ നാട്ടുന്നതു നല്ലതാണ്.',
      'arabicText': 'أتعلم بها قبر أخي وأدفن إليه من مات من أهلي',
      'translation':
          'അതുവഴി ഞാൻ എന്റെ സഹോദരന്റെ ഖബർ തിരിച്ചറിയും. എന്റെ കുടുംബക്കാരിൽ മരിക്കുന്നവരെ അതിന്നടുത്തു ഞാൻ ഖബറടക്കുകയും ചെയ്യും.',
      'source': 'നബി(സ)',
      'imagePath': ImageClass.kabarZiyarath,
    },
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
          'ജനാസ സംസ്കരണം',
          style: GoogleFonts.anekMalayalam(
            fontSize: 20,
            color: ColorClass.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(
          //   padding:
          //       const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          //   child: Text(
          //     'ജനാസ സംസ്കരണത്തിലെ നിയമങ്ങൾ',
          //     style: GoogleFonts.anekMalayalam(
          //       fontSize: 16,
          //       color: ColorClass.black.withOpacity(0.6),
          //       fontWeight: FontWeight.w500,
          //     ),
          //   ),
          // ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
                  ImageClass.cremation,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _samskaranamSteps.length,
              itemBuilder: (context, index) {
                final step = _samskaranamSteps[index];
                final isExpanded = _expandedIndex == index;

                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: isExpanded
                            ? ColorClass.primaryColor.withOpacity(0.1)
                            : Colors.white,
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
                                  step['title'],
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
                            isExpanded
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            color: ColorClass.primaryColor,
                          ),
                          children: [
                            if (step['imagePath'] != null)
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    step['imagePath'],
                                    width: double.infinity,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (step['source'].isNotEmpty)
                                    Text(
                                      step['source'],
                                      style: GoogleFonts.anekMalayalam(
                                        fontSize: 14,
                                        color:
                                            ColorClass.black.withOpacity(0.6),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  const SizedBox(height: 8),
                                  Text(
                                    step['description'],
                                    style: GoogleFonts.anekMalayalam(
                                      fontSize: 16,
                                      color: ColorClass.black,
                                      height: 1.5,
                                    ),
                                  ),
                                  if (step['arabicText'].isNotEmpty) ...[
                                    const SizedBox(height: 16),
                                    Text(
                                      step['arabicText'],
                                      textAlign: TextAlign.right,
                                      textDirection: TextDirection.rtl,
                                      style: GoogleFonts.notoSansArabic(
                                        fontSize: 18,
                                        height: 2.0,
                                        color: ColorClass.black,
                                      ),
                                    ),
                                  ],
                                  if (step['translation'].isNotEmpty) ...[
                                    const SizedBox(height: 16),
                                    Text(
                                      step['translation'],
                                      style: GoogleFonts.anekMalayalam(
                                        fontSize: 16,
                                        color: ColorClass.black,
                                        height: 1.5,
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
