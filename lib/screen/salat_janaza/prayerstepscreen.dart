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
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;
  late AudioProvider _audioService;
  String? _currentAudioPath;

  final List<PrayerStepModel> _prayerSteps = [
    PrayerStepModel(
      title: 'ഒന്നാം തക്ബീർ',
      description: 'തക്ബീർ പറയുക:',
      arabicTexts: ['الله أكبر'],
      meaning: 'അല്ലാഹു ഏറ്റവും വലിയവനാണ്.',
      imagePath: ImageClass.thakbir,
      instructions: 'പുരുഷന്മാർ കൈകൾ ചെവികളോളം ഉയർത്തണം. സ്ത്രീകൾ തോളോളം ഉയർത്തിയാൽ മതി.\n\nഒന്നാമത്തെ തക്ബീറിനുശേഷം ഫാതിഹ ഓതുക.\n\n\n  بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ ۝١ ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ ۝٢ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ ۝٣ مَـٰلِكِ يَوْمِ ٱلدِّينِ ۝٤ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ۝٥ ٱهْدِنَا ٱلصِّرَٰطَ ٱلْمُسْتَقِيمَ ۝٦ صِرَٰطَ ٱلَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ ٱلْمَغْضُوبِ عَلَيْهِمْ وَلَا ٱلضَّآلِّينَ ۝٧'   '\n\nപരമദയാലുവും കരുണാവാരിധിയുമായ അല്ലാഹുവിന്റെ നാമത്തില്‍. സര്‍വലോകത്തിന്റെയും റബ്ബായ അല്ലാഹുവിനു മാത്രമാകുന്നു സ്‌തോത്രം. അളവറ്റ ദയാപരനും കരുണാവാരിധിയുമാണവന്‍.പ്രതിഫലദിവസത്തിന്നധിപനായവന്‍.നിനക്കുമാത്രം ഞങ്ങള്‍ ഇബാദത്തുചെയ്യുന്നു.നിന്നോടുമാത്രം ഞങ്ങള്‍ സഹായം തേടുന്നു.നീ ഞങ്ങളെ നേര്‍വഴിയില്‍ നയിക്കേണമേ! നീ അനുഗ്രഹിച്ചവരുടെ മാര്‍ഗത്തില്‍ കോപത്തിനിരയായവരുടെയും വ്യതിചലിച്ചവരുടെയും മാര്‍ഗത്തിലല്ല.',
      audioPath: 'assets/audio/SuratAl-Fatihah.mp3',
    ),
    PrayerStepModel(
      title: 'രണ്ടാം തക്ബീർ ',
      description: 'രണ്ടാമത്തെ തക്ബീറിനുശേഷം നബി(സ)യുടെ പേരിൽ സ്വലാത് ചൊല്ലുക.',
      arabicTexts: ['اللهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ اَلَّلهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ'],
      imagePath: ImageClass.salat,
      instructions: 'അല്ലാഹുവേ... നിന്റെ അനുഗ്രഹം മുഹമ്മദിനും  കുടുംബത്തിനും നീ ചൊരിയേണമേ, (ഇബ്രാഹീമിനേയും കുടുംബത്തെയും നീ അനുഗ്രഹിച്ചത് പോലെ) തീര്‍ച്ചായും നീ മാത്രമാണ് മഹോന്നതനായ സ്തുത്യര്‍ഹന്‍. അല്ലാഹുവേ.. നിന്റെ ബര്‍കത്ത് മുഹമ്മദിനും കുടുംബത്തിനും നീ ചൊരിയേണമേ (ഇബ്രാഹീമിനും കുടുംബത്തിനും നീ ബര്‍ക്കത്ത് ചൈതത് പോലെ)തീര്‍ച്ചായും നീ മാത്രമാണ് മഹോന്നതനായ സ്തുത്യര്‍ഹന്‍.',
      audioPath: 'assets/audio/durood e ibrahimi.mp3',
    ),
    PrayerStepModel(
      title: 'മൂന്നാം തക്ബീർ ',
      description:  'മൂന്നാമത്തെ തക്ബീറിനു ശേഷം മയ്യിത്തിന് വേണ്ടി പ്രാർത്ഥിക്കുക.',
      arabicTexts: [' اَلَّلهُمَّ أغْفِرْلَهُ وَرْحَمْهُ وَعْفُ عَنْهُ وَعَافِهِ وَاَكْرِمْ نُزُلَهُ وَوَسِّعْ مَدْخَلَهُ وَغْسِلْهُ بِالْمَاءِ وَثَّلْجِ وَالْبَرَدِ وَنَقِّهِ مِنَالْخَطَايَا كَمَا يُنَقَّ الْثَّوْبُ الْاَبْيَضُ مِنَ الدَّنٍَسِ وَاَبْدِلْهُ دَارً خَيْرً مِنْ دَارِهِ وَاَهْلً خَيْرً مِّنْ اَهْلِهِ وَزَوْجً خَيْرًمِّنْ زَوْجِهِ وَاَدْخِلْهُ الْجَنَّتَ وَاَعِذْهُ مِنْ عَذَابِ الْقَبْرِ وَفِتْنَتِهِ وَمِنْ عَذَابِ الْنَّارٍ'],
      imagePath:  ImageClass.salat,
      instructions: 'അല്ലാഹുവേ നീ ഈ വ്യക്തിക്ക് പൊറുത്ത് കൊടുക്കുകയും കാരുണ്യം ചൊരിയുകയും പാപമോചനം നല്‍കുകയും, വാസസ്ഥലത്തെ ബഹുമാനിക്കുകയും ഖബറിനെ വിശാലമാക്കി കൊടുക്കകയും ചെയ്യേണമേ. ഇദ്ധേഹത്തെ പരിശുദ്ധ വെള്ളം കൊണ്ടും മഞ്ഞുവെള്ളം കൊണ്ടും ആലിപ്പഴം കൊണ്ടും കുളിപ്പിക്കുകയും വെള്ള വസ്ത്രത്തെ അലക്കി വൃത്തിയാക്കും വിധം ഇയാളുടെ ദോഷങ്ങളെ നീ ശുദ്ധിയാക്കുകയും ദുരിതങ്ങളെ അകറ്റുകയും ചെയ്യേണമേ.സ്വത്തിനേക്കാള്‍ നല്ല സ്വത്തിനേയും കുടുംബത്തെക്കാള്‍ നല്ല കുടുംബത്തേയും ഇണകളില്‍ വെച്ചേറ്റവും നല്ല ഇണകളേയും പ്രതിഫലം നല്‍കേണമേ, ഇയാളെ സ്വര്‍ഗ്ഗത്തില്‍ കടത്തുകയും കബറിലെ ശിക്ഷകളില്‍ നിന്ന് രക്ഷിക്കുകയും ചൈയ്യണേമേ',
      audioPath: 'assets/audio/Dua janaza.mp3',
    ),
    PrayerStepModel(
      title: 'നാലാം തക്ബീർ',
      description: '',
      arabicTexts: ['اَلَّلهُمَّ لاَ تُحَرِّمْنَا اَجْرَهُ وَ لاَ تَفْتِنَّا بَعْدَهُ وَغْفِرْلَنَا وَلَهُ رَبَّنَا اَتِنَا فِي الدُّنْياَ حَسَنَتً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَبَ النَّارِ'],
      imagePath:  ImageClass.salat,
      instructions: 'അല്ലാഹുവേ ഞങ്ങളെ നീ ഇതിന്റെ പ്രതിഫലത്തില്‍ നിന്നും തടയപ്പെട്ടവരാക്കല്ലേ, അദ്ധേഹത്തിന് ശേഷം നാശത്തിലകപ്പെട്ടവരുമാക്കല്ലേ...അയാള്‍കും ഞങ്ങള്‍കും നീ പൊറുത്ത് തരികയും ചൈയ്യേണമേ. ഞങ്ങളുടെ രക്ഷിതാവേ... ഞങ്ങള്‍ക് നീ ഇഹലോകത്തെ ഗുണങ്ങളും പരലോകത്തെ ഗുണങ്ങളും നല്‍കേണമേ\n\nശേഷം അസ്സലാമു അലൈകും വറഹ്‌മത്തുല്ലാഹി വബറക്കാത്തുഹൂഎന്ന് ചൊല്ലി സലാം വീട്ടുക.',
      audioPath: 'assets/audio/salam dua.mp3',
    ),
    // PrayerStepModel(
    //   title: 'സലാം ചൊല്ലുക',
    //   description: '',
    //   arabicTexts: ['اللهم لا تحرمنا أجره ولا تفتنا بعده'],
    //   imagePath:  ImageClass.endSalat,
    //   instructions: 'ഈ മയ്യിത്തിന്റെ പേരിൽ നമസ്കരിച്ച പ്രതിഫലം ഞങ്ങൾക്ക് തടയാതിരിക്കുകയും ഇദ്ദേഹത്തിന് ശേഷം ഞങ്ങളെ കുഴപ്പത്തിൽ പെടുത്താതിരിക്കുകയും ചെയ്യേണമേ',
    //   audioPath: 'assets/audio/salam dua.mp3',
    // ),
  ];

  @override
  void initState() {
    super.initState();
    _audioService = AudioProvider();
    _controllers = List.generate(
      _prayerSteps.length,
      (_) => ExpansionTileController(),
    );
  }

  @override
  void dispose() {
    _audioService.dispose();
    super.dispose();
  }

  void _handleExpansion(int index, bool isExpanded) {
    setState(() {
      if (isExpanded) {
        if (_expandedIndex != null && _expandedIndex != index) {
          _controllers[_expandedIndex!].collapse();
          if (_currentAudioPath != null) {
            _audioService.stop();
            _currentAudioPath = null;
          }
        }
        _expandedIndex = index;
      } else if (_expandedIndex == index) {
        _expandedIndex = null;
        if (_currentAudioPath != null) {
          _audioService.stop();
          _currentAudioPath = null;
        }
      }
    });
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
          'നാല് തക്ബീറുകൾ',
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
          //   padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          //   child: Text(
          //     'നമസ്കാരത്തിന്റെ ഘട്ടങ്ങൾ',
          //     style: GoogleFonts.anekMalayalam(
          //       fontSize: 16,
          //       color: ColorClass.black.withOpacity(0.6),
          //       fontWeight: FontWeight.w500,
          //     ),
          //   ),
          // ),
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