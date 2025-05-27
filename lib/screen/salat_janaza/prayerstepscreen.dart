import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/prayerstepmodel.dart';
import 'package:janaza_guide/provider/audio_service.dart';

class PrayerStepsSliderView extends StatefulWidget {
  const PrayerStepsSliderView({super.key});

  @override
  _PrayerStepsSliderViewState createState() => _PrayerStepsSliderViewState();
}

class _PrayerStepsSliderViewState extends State<PrayerStepsSliderView> {
  late AudioProvider _audioService;
  int? _expandedIndex;
  String? _currentAudioPath;

  final List<PrayerStepModel> _prayerSteps = [
    PrayerStepModel(
      title: 'തക്ബീർ',
      description: 'തക്ബീർ പറയുക:',
      arabicTexts: ['الله أكبر'],
      meaning: 'അല്ലാഹു ഏറ്റവും വലിയവനാണ്.',
      imagePath: ImageClass.thakbir,
      instructions: 'പുരുഷന്മാർ കൈകൾ ചെവികളോളം ഉയർത്തണം. സ്ത്രീകൾ തോളോളം ഉയർത്തിയാൽ മതി.',
      audioPath: 'assets/audio/allahakbarvoice.mp3',
    ),
    PrayerStepModel(
      title: 'ഖിയാം',
      description: '4) ഒന്നാമത്തെ തക്ബീറിനുശേഷം ഫാതിഹ ഓതുക.',
      arabicTexts: [' بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ\uFD3F١\uFD3E ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ \uFD3F٢\uFD3E ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ \uFD3F٣\uFD3E مَـٰلِكِ يَوْمِ ٱلدِّينِ \uFD3F٤\uFD3E إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ \uFD3F٥\uFD3E ٱهْدِنَا ٱلصِّرَٰطَ ٱلْمُسْتَقِيمَ \uFD3F٦\uFD3E صِرَٰطَ ٱلَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ ٱلْمَغْضُوبِ عَلَيْهِمْ وَلَا ٱلضَّآلِّينَ \uFD3F٧\uFD3E آمِينَ \uFD3F٨\uFD3E'],
      imagePath: ImageClass.salat,
      instructions: 'പരമദയാലുവും കരുണാവാരിധിയുമായ അല്ലാഹുവിന്റെ നാമത്തില്‍. സര്‍വലോകത്തിന്റെയും റബ്ബായ3 അല്ലാഹുവിനു മാത്രമാകുന്നു സ്‌തോത്രം. അളവറ്റ ദയാപരനും കരുണാവാരിധിയുമാണവന്‍.പ്രതിഫലദിവസത്തിന്നധിപനായവന്‍.നിനക്കുമാത്രം ഞങ്ങള്‍ ഇബാദത്തുചെയ്യുന്നു.നിന്നോടുമാത്രം ഞങ്ങള്‍ സഹായം തേടുന്നു.നീ ഞങ്ങളെ നേര്‍വഴിയില്‍ നയിക്കേണമേ! നീ അനുഗ്രഹിച്ചവരുടെ മാര്‍ഗത്തില്‍ കോപത്തിനിരയായവരുടെയും വ്യതിചലിച്ചവരുടെയും മാര്‍ഗത്തിലല്ല.',
      audioPath: 'assets/audio/SuratAl-Fatihah.mp3',
    ),
    PrayerStepModel(
      title: 'തശഹ്ഹുദ്',
      description: 'രണ്ടാമത്തെ തക്ബീറിനുശേഷം നബി(സ)യുടെ പേരിൽ സ്വലാത് ചൊല്ലുക.',
      arabicTexts: ['اللهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ اَلَّلهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ'],
      imagePath:  ImageClass.salat,
      instructions: 'അല്ലാഹുവേ പറയുക! ഇബ്രാഹിമിനും ഇബ്രാഹിമിൻ്റെ കുടുംബത്തിനും നീ സമാധാനം അയച്ചതുപോലെ, നിൻ്റെ ദാസനും നിൻ്റെ ദൂതനും മുഹമ്മദിനും സമാധാനം നൽകേണമേ , ഇബ്രാഹിമിനും ഇബ്രാഹിമിൻ്റെ കുടുംബത്തിനും നീ അനുഗ്രഹം അയച്ചതുപോലെ മുഹമ്മദിനും മുഹമ്മദിൻ്റെ കുടുംബത്തിനും നീ അനുഗ്രഹം നൽകണമേ',
      audioPath: 'assets/audio/durood e ibrahimi.mp3',
    ),
    PrayerStepModel(
      title: 'മയ്യിത്തിന് വേണ്ടി ദുആ',
      description: 'മൂന്നാമത്തെ തക്ബീറിനു ശേഷം മയ്യിത്തിന് വേണ്ടി പ്രാർത്ഥിക്കുക.',
      arabicTexts: [' اَلَّلهُمَّ أغْفِرْلَهُ وَرْحَمْهُ وَعْفُ عَنْهُ وَعَافِهِ وَاَكْرِمْ نُزُلَهُ وَوَسِّعْ مَدْخَلَهُ وَغْسِلْهُ بِالْمَاءِ وَثَّلْجِ وَالْبَرَدِ وَنَقِّهِ مِنَالْخَطَايَا كَمَا يُنَقَّ الْثَّوْبُ الْاَبْيَضُ مِنَ الدَّنٍَسِ وَاَبْدِلْهُ دَارً خَيْرً مِنْ دَارِهِ وَاَهْلً خَيْرً مِّنْ اَهْلِهِ وَزَوْجً خَيْرًمِّنْ زَوْجِهِ وَاَدْخِلْهُ الْجَنَّتَ وَاَعِذْهُ مِنْ عَذَابِ الْقَبْرِ وَفِتْنَتِهِ وَمِنْ عَذَابِ الْنَّارٍ'],
      imagePath:  ImageClass.salat,
      instructions: 'അല്ലാഹുവേ, അവനോട് പൊറുക്കുകയും കരുണ കാണിക്കുകയും അവന് ശക്തി നൽകുകയും ക്ഷമിക്കുകയും ചെയ്യേണമേ. അവനോട് ഉദാരമായി പെരുമാറുകയും അവൻ്റെ പ്രവേശനം വിശാലമാക്കുകയും വെള്ളവും മഞ്ഞും ആലിപ്പഴവും കൊണ്ട് അവനെ കഴുകുകയും ചെയ്യുക. വെള്ളവസ്ത്രം കറകളിൽനിന്ന് ശുദ്ധീകരിക്കപ്പെടുന്നതുപോലെ അവൻ്റെ അതിക്രമങ്ങളിൽനിന്നു അവനെ ശുദ്ധീകരിക്കേണമേ. അവൻ്റെ വീടിനേക്കാൾ ഉത്തമമായ ഒരു വാസസ്ഥലവും അവൻ്റെ കുടുംബത്തേക്കാൾ ഉത്തമമായ ഒരു കുടുംബവും അവൻ്റെ ഭാര്യയെക്കാൾ ഉത്തമമായ ഒരു ഭാര്യയും അവന് നൽകേണമേ. അവനെ സ്വർഗത്തിൽ പ്രവേശിപ്പിക്കുകയും ഖബറിലെ ശിക്ഷയിൽ നിന്നും [നരകാഗ്നിയുടെ ശിക്ഷയിൽ നിന്നും] അവനെ സംരക്ഷിക്കുകയും ചെയ്യുക.',
      audioPath: 'assets/audio/Dua janaza.mp3',
    ),
    PrayerStepModel(
      title: 'സലാം ചൊല്ലുക',
      description: '7) നാലാമത്തെ തക്ബീറിന് ശേഷം സലാം ചൊല്ലുക.',
      arabicTexts: ['اللهم لا تحرمنا أجره ولا تفتنا بعده'],
      imagePath:  ImageClass.endSalat,
      instructions: 'ഈ മയ്യിത്തിന്റെ പേരിൽ നമസ്കരിച്ച പ്രതിഫലം ഞങ്ങൾക്ക് തടയാതിരിക്കുകയും ഇദ്ദേഹത്തിന് ശേഷം ഞങ്ങളെ കുഴപ്പത്തിൽ പെടുത്താതിരിക്കുകയും ചെയ്യേണമേ',
      audioPath: 'assets/audio/salam dua.mp3',
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

  Future<void> _handleAudioPlayback(String audioPath) async {
    setState(() {
      if (_currentAudioPath != audioPath) {
        // If playing a different audio, stop current and load new
        _audioService.stop();
        _audioService.loadAudio(audioPath);
        _currentAudioPath = audioPath;
      }
    });
    
    if (_audioService.isPlaying) {
      await _audioService.pause();
    } else {
      await _audioService.play();
    }
    setState(() {}); // Update UI to reflect play/pause state
  }

  Future<void> _handleReplay(String audioPath) async {
    setState(() {
      _audioService.stop();
      _audioService.loadAudio(audioPath);
      _currentAudioPath = audioPath;
    });
    await _audioService.play();
    setState(() {}); // Update UI to reflect play state
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
          onPressed: () {
            _audioService.stop(); // Stop audio when leaving screen
            Navigator.pop(context);
          },
        ),
        title: Text(
          'നമസ്കാര കർമ്മങ്ങൾ',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'നമസ്കാരത്തിന്റെ ഘട്ടങ്ങൾ',
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
                final isExpanded = _expandedIndex == index;
                final isCurrentAudio = _currentAudioPath == step.audioPath;

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
                              if (!expanded && _currentAudioPath == step.audioPath) {
                                _audioService.stop();
                                _currentAudioPath = null;
                              }
                              _expandedIndex = expanded ? index : null;
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    step.description,
                                    style: GoogleFonts.anekMalayalam(
                                      fontSize: 16,
                                      color: ColorClass.black,
                                      height: 1.5,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  ...step.arabicTexts.map((text) => Padding(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      text,
                                      textAlign: TextAlign.right,
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 20,
                                        height: 2.0,
                                        color: ColorClass.black,
                                      ),
                                    ),
                                  )).toList(),
                                  if (step.instructions.isNotEmpty) ...[
                                    const SizedBox(height: 16),
                                    Text(
                                      step.instructions,
                                      style: GoogleFonts.anekMalayalam(
                                        fontSize: 16,
                                        color: ColorClass.black,
                                        height: 1.5,
                                      ),
                                    ),
                                  ],
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // _buildAudioButton(
                                      //   icon: Icons.replay,
                                      //   onTap: () => _handleReplay(step.audioPath),
                                      // ),
                                      const SizedBox(width: 8),
                                      _buildAudioButton(
                                        icon: (_currentAudioPath == step.audioPath && _audioService.isPlaying)
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        onTap: () => _handleAudioPlayback(step.audioPath),
                                      ),
                                    ],
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
}