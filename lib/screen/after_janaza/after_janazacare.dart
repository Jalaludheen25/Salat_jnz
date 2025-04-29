import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/model/janzacaremodel.dart';
import 'package:janaza_guide/provider/audio_service.dart';

class Janazacaredetails extends StatefulWidget {
  const Janazacaredetails({super.key});

  @override
  _JanazacaredetailsState createState() => _JanazacaredetailsState();
}

class _JanazacaredetailsState extends State<Janazacaredetails> {
  late AudioProvider _audioService;
  int? _expandedIndex;

  // Data model for burial steps
  final List<Janazacaremodel> _burialSteps = [
    Janazacaremodel(
      title: 'നമസ്കാരത്തിനു നേതൃത്വം നൽകേണ്ടതാരാണ്',
      description:
          'പിതാവ്, പിതാമഹൻ, മകൻ, മകന്റെ മകൻ, സഹോദരൻ, സഹോദര പുത്രൻ, പിതൃവ്യൻ, പിതൃവ്യപുത്രൻ എന്ന ക്രമമനുസരിച്ചാണ് മയ്യിത്ത് നമസ്കാരത്തിൽ നേതൃത്വം നൽകേണ്ടത് എന്നാണ് ഇമാം ശാഫിഈ (റ)യുടെ പക്ഷം.',
      imagePath: 'assets/images/janza cremation.png',
      audioPath: 'assets/audio/janaza_care1.mp3',
    ),
    Janazacaremodel(
      title: 'ജനാസക്കൊപ്പം അരുതാത്ത കാര്യങ്ങൾ',
      description:
          '1. ശബ്ദമുയർത്തി ദിക്ർ ചൊല്ലുക, ഖുർആൻ ഓതുക, മുതലായവ ചെയ്യരുത്. ഖൈസുബ്നു ഉബ്ബാദ് (റ) പറഞ്ഞതായി ഇബ്നുൽ മുൻദിർ ഉദ്ധരിക്കുന്നു.\n\nكان أصحاب رسول الله ﷺﷺ يكرهون رفع الصوت عند ثلاث: عند الجنائز وعند الذكر وعند القتال\n(മൂന്ന് സന്ദർഭത്തിൽ ശബ്ദമുയർത്തുന്നതു നബി(സ)യുടെ സഹാബിമാർ വെറുത്തിരുന്നു. ജനാസയുടെ അരികിൽ, ദിക്ർ ചൊല്ലുമ്പോൾ, യുദ്ധത്തിൽ.)\n\n2. ജനാസ യോടൊപ്പം തീ കൊണ്ടു പോകരുത്. അതൊരു അനിസ്ലാമികാചാരമാണ് എന്നതാണ് കാരണം.\n\n3. ജനാസക്കൊപ്പം പോകുന്നവർ ജനാസ താഴെ വെയ്ക്കും മുമ്പ് ഇരിക്കരുത്.\n\n4. സ്ത്രീകൾ ജനാസയെ പിന്തുടരരുത്.',
      imagePath: 'assets/images/janza cremation.png',
    ),
    Janazacaremodel(
      title: 'മയ്യിത്തിനെ ഖബറടക്കൽ',
      description:
          'മയ്യിത്തിനെ ഖബറടക്കൽ മുസ്ലിംകളുടെ സാമൂഹ്യബാധ്യതയാണ്. അതു രാത്രിയാവുന്നത് തെറ്റല്ല. നബി (സ)യുടെ കാലത്തും സ്വഹാബിമാരുടെ കാലത്തും പകലിലെന്നപോലെ രാത്രിയും മയ്യിത്ത് ഖബറടക്കിയിരുന്നു. അലി(റ) ഫാത്വിമ(റ)യെ രാത്രിയാണ് ഖബറടക്കിയത്. അബൂബകർ, ഉസ്മാൻ ഇബ്നു അഫ്ഫാൻ, ആഇശ, ഇബ്നു മസ്ഊദ് എന്നിവരെയൊക്കെ രാത്രിയാണ് മറമാടിയത്.\n\nസൂര്യന്റെ ഉദയാസ്തമയ സമയങ്ങളിലും നട്ടുച്ചനേരത്തും മയ്യിത്തിന് വല്ല മാറ്റവും വരുമെന്നുണ്ടെങ്കിൽ ഖബറടക്കാവുന്നതാണ്. എന്നാൽ കാരണമില്ലാതെ ഈ സമയങ്ങളിൽ മറമാടുന്നത് കറാഹത്താണ്.',
      imagePath: 'assets/images/janza cremation.png',
    ),
    Janazacaremodel(
      title: 'ഖബർ ആഴം കൂട്ടൽ',
      description:
          'ചീഞ്ഞളിയുമ്പോൾ ദുർഗന്ധം പുറത്തു വരാതെയും, വന്യജന്തുക്കൾ മാന്തി പുറത്തിടാതെയും ശരീരം ഭൂമിയിൽ മറവ് ചെയ്യുക. അതാണ് ഖബറടക്കം കൊണ്ടുദ്ദേശിക്കുന്നത്. ഖബർ ആഴം കൂട്ടുന്നതു നല്ലതാണ്.\n\nഹിശാമുബ്നു ആമിർ (റ) പറയുന്നു:\nشكونا إلى رسول الله يوم أحد فقلنا : يا رسول الله الحفر علينا لكل إنسان شدید. فقال رسول الله وادفنوا الاثنين والثلاثة في قبر واحد. فقالوا فمن نقدم يا رسول الله ؟ قال : قدموا أكثرهم قرآنا وكان أبي ثالث ثلاثة في قبر واحد (النسائي والترمذي)',
      imagePath: 'assets/images/janza cremation.png',
    ),
    Janazacaremodel(
      title: '"തഅ്സിയത്ത്"',
      description:
          'മരിച്ചതു അമുസ്ലിമാണങ്കിൽ പോലും പരേതന്റെ സന്തപ്ത കുടുംബത്തെ സമാശ്വസിപ്പിക്കൽ സുന്നത്താണ്. കുടുംബത്തിലെ പുരുഷന്മാർ, സ്ത്രീകൾ, വലിയവർ, കുട്ടികൾ എന്നീ വ്യത്യാസമില്ലാതെ എല്ലാവരെയും ആശ്വസിപ്പിക്കാവുന്നതാണ്. അത് മയ്യിത്ത് സംസ്കരിക്കുന്നതിനു മുമ്പും ശേഷവും ആകാം. സാധാരണഗതിയിൽ മൂന്നുദിവസം വരെയാണ് "തഅ്സിയത്തിന്റെ സമയം. ഒരാൾ യാത്രയിലായതിനാലോ മറ്റോ അതിനു സാധിച്ചില്ലെങ്കിൽ മൂന്നുദിവസം കഴിഞ്ഞും അതാകാം.\n\nആശ്വാസം പകരുന്ന, ക്ഷമിക്കാനും സഹിക്കാനും പ്രേരിപ്പിക്കുന്ന വാക്കുകൾ ഏതും തഅ്സിയത്തിൽ ഉപയോഗിക്കാവുന്നതാണ്. ആശ്വാസവാക്യമായി പണ്ഡിതന്മാരിൽ നിന്ന് ഇപ്രകാരം ഉദ്ധരിക്കപ്പെട്ടിട്ടുണ്ട്.',
      imagePath: 'assets/images/janza cremation.png',
    ),
    Janazacaremodel(
      title: 'ഖബർ സന്ദർശനം',
      description:
          'ഖബർ സന്ദർശനം പുരുഷന്മാർക്കു സുന്നത്താണ്. ഖബറിനടുത്ത് ചെല്ലുക, ഖബർവാസിക്കു സലാം ചൊല്ലുക, അയാളുടെ പാപമോചനത്തിനായി അല്ലാഹുവോട് പ്രാർത്ഥിക്കുക ഇത്രയുമാണ് ഖബർ സന്ദർശനം കൊണ്ടു ഉദ്ദേശിച്ചിട്ടുള്ളത്. സന്ദർശകന് പരലോകബോധം വർധിക്കാൻ അതു കാരണമാകും.\n\nഖബർ സന്ദർശനവേളയിൽ എന്തു പറയണമെന്ന് താഴെ ഹദീഥുകൾ വ്യക്തമാക്കുന്നു.\n1) ബുറൈദ (റ) പറയുന്നു:\nكان النبي ﷺﷺ يعلمهم إذا خرجوا إلى المقابر أن يقول قائلهم: السلام عليكم أهل الديار من المؤمنين والمسلمين وإنا إن شاء الله بكم لاحقون. أنتم فرطنا ونحن لكم تبع ونسأل الله لنا ولكم العافية (أحمد، مسلم)',
      imagePath: 'assets/images/janza cremation.png',
    ),
    Janazacaremodel(
      title: 'മയ്യിത്തിന് പ്രയോജനം ചെയ്യുന്ന കർമങ്ങൾ',
      description:
          'ഒരു മുസ്ലിം ജീവിതകാലത്ത് ചെയ്ത ഏതു സൽകർമ്മവും മരണാനന്തരം അയാൾക്ക് പ്രയോജനം ചെയ്യും. എന്നാൽ സ്ഥായിയായി നില നിൽക്കുന്നതും തുടർന്നും ഫലം കിട്ടുന്നതുമായ മൂന്നു കാര്യങ്ങളുണ്ട്.\n\nസ്ഥായിയായ ദാനം, പ്രയോജനപ്രദമായ വിജ്ഞാനം, തനിക്കുവേണ്ടി പ്രാർത്ഥിക്കുന്ന നല്ല സന്താനം എന്നിവയാണത്. നബി (സ) പറഞ്ഞതായി അബൂഹുറൈറ (റ) ഉദ്ധരിക്കുന്നു.\n\nإذا مات ابن آدم انقطع عمله إلا من ثلاث صدقة جارية أو علم ينتفع به أو ولد صالح يدعوله (مسلم)',
      imagePath: 'assets/images/janza cremation.png',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _audioService = AudioProvider();
  }

  @override
  void dispose() {
    _audioService.dispose();
    super.dispose();
  }

  Widget _buildAudioButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: ColorClass.primaryColor.withOpacity(0.1),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: ColorClass.primaryColor, size: 24),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close, color: ColorClass.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'ജനാസനാന്തര കാര്യങ്ങൾ',
          style: GoogleFonts.anekMalayalam(
            color: ColorClass.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'ജനാസയുമായി ബന്ധപ്പെട്ട കാര്യങ്ങൾ',
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
              itemCount: _burialSteps.length,
              itemBuilder: (context, index) {
                final step = _burialSteps[index];
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
                          onExpansionChanged: (expanded) {
                            setState(() {
                              _expandedIndex = expanded ? index : null;
                              if (!expanded) {
                                _audioService.stop();
                              }
                            });
                          },
                          initiallyExpanded: isExpanded,
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
                            isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                            color: ColorClass.primaryColor,
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (step.imagePath.isNotEmpty)
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        step.imagePath,
                                        width: double.infinity,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  const SizedBox(height: 16),
                                  Text(
                                    step.description,
                                    style: GoogleFonts.anekMalayalam(
                                      fontSize: 16,
                                      color: ColorClass.black,
                                      height: 1.5,
                                    ),
                                  ),
                                  if (step.audioPath != null) ...[
                                    const SizedBox(height: 16),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        _buildAudioButton(
                                          icon: Icons.replay,
                                          onTap: () async {
                                            await _audioService.loadAudio(step.audioPath!);
                                            await _audioService.play();
                                          },
                                        ),
                                        const SizedBox(width: 8),
                                        _buildAudioButton(
                                          icon: _audioService.isPlaying ? Icons.pause : Icons.play_arrow,
                                          onTap: () async {
                                            if (_audioService.isPlaying) {
                                              await _audioService.pause();
                                            } else {
                                              await _audioService.playPauseAudio(step.audioPath!);
                                            }
                                          },
                                        ),
                                      ],
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