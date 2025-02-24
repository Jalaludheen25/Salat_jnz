import 'package:flutter/material.dart';
import 'package:salat_al_janaza/constants/colorclass.dart';
import 'package:salat_al_janaza/constants/textstyleclass.dart';
import 'package:salat_al_janaza/model/prayerstepmodel.dart';
import 'package:salat_al_janaza/provider/audio_service.dart';
import 'package:google_fonts/google_fonts.dart';

class PrayerStepsSliderView extends StatefulWidget {
  const PrayerStepsSliderView({Key? key}) : super(key: key);

  @override
  _PrayerStepsSliderViewState createState() => _PrayerStepsSliderViewState();
}

class _PrayerStepsSliderViewState extends State<PrayerStepsSliderView> {
  final PageController _pageController = PageController();
  late AudioProvider _audioService;

  // Data model for prayer steps
  final List<PrayerStepModel> _prayerSteps = [
    PrayerStepModel(
      title: 'തക്ബീർ',
      description: 'തക്ബീർ പറയുക:',
      arabicTexts: [
        'അല്ലാഹു അക്ബർ',
      ],
      meaning: 'അല്ലാഹു ഏറ്റവും വലിയവനാണ്.',
      imagePath: 'assets/images/muslim takbir.jpg',
      instructions:
          'പുരുഷന്മാർ കൈകൾ ചെവികളോളം ഉയർത്തണം. സ്ത്രീകൾ തോളോളം ഉയർത്തിയാൽ മതി.',
      audioPath: 'assets/audio/allahakbarvoice.mp3',
    ),
    PrayerStepModel(
      title: 'ഖിയാം',
      description:
          'നിന്ന നിലയിൽ തുടരുക, ഖുർആനിലെ പ്രാരംഭ പ്രാർത്ഥനയായ അൽ-ഫാതിഹ പാരായണം ചെയ്യുക',
      arabicTexts: [
        'بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ ۝١ ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ ۝٢ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ ۝٣ مَـٰلِكِ يَوْمِ ٱلدِّينِ ۝٤ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ۝٥ ٱهْدِنَا ٱلصِّرَٰطَ ٱلْمُسْتَقِيمَ ۝٦ صِرَٰطَ ٱلَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ ٱلْمَغْضُوبِ عَلَيْهِمْ وَلَا ٱلضَّآلِّينَ ۝٧ آمِينَ ۝٨',
      ],
      imagePath: 'assets/images/qiyyam image.png',
      instructions:
          ' പരമദയാലുവും കരുണാവാരിധിയുമായ അല്ലാഹുവിന്റെ നാമത്തില്‍. സര്‍വലോകത്തിന്റെയും റബ്ബായ3 അല്ലാഹുവിനു മാത്രമാകുന്നു സ്‌തോത്രം. അളവറ്റ ദയാപരനും കരുണാവാരിധിയുമാണവന്‍.പ്രതിഫലദിവസത്തിന്നധിപനായവന്‍.നിനക്കുമാത്രം ഞങ്ങള്‍ ഇബാദത്തുചെയ്യുന്നു.നിന്നോടുമാത്രം ഞങ്ങള്‍ സഹായം തേടുന്നു.നീ ഞങ്ങളെ നേര്‍വഴിയില്‍ നയിക്കേണമേ! നീ അനുഗ്രഹിച്ചവരുടെ മാര്‍ഗത്തില്‍ കോപത്തിനിരയായവരുടെയും വ്യതിചലിച്ചവരുടെയും മാര്‍ഗത്തിലല്ല.',
      audioPath: 'assets/audio/SuratAl-Fatihah.mp3',
    ),
    PrayerStepModel(
      title: 'തശഹ്ഹുദ്',
      description:
          'രണ്ടാം തക്ബീര്‍ ചൊല്ലി വീണ്ടും കൈ കെട്ടി ഇബ്രാഹിമീയ സ്വലാത്ത് ചൊല്ലുക:',
      arabicTexts: [
        'اللهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ',
        'اَلَّلهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ',
      ],
      imagePath: 'assets/images/qiyyam image.png',
      instructions:
          'അല്ലാഹുവേ പറയുക! ഇബ്രാഹിമിനും ഇബ്രാഹിമിൻ്റെ കുടുംബത്തിനും നീ സമാധാനം അയച്ചതുപോലെ, നിൻ്റെ ദാസനും നിൻ്റെ ദൂതനും മുഹമ്മദിനും സമാധാനം നൽകേണമേ , ഇബ്രാഹിമിനും ഇബ്രാഹിമിൻ്റെ കുടുംബത്തിനും നീ അനുഗ്രഹം അയച്ചതുപോലെ മുഹമ്മദിനും മുഹമ്മദിൻ്റെ കുടുംബത്തിനും നീ അനുഗ്രഹം നൽകണമേ',
      audioPath: 'assets/audio/durood e ibrahimi.mp3',
    ),
    PrayerStepModel(
      title: 'മയ്യിത്തിന് വേണ്ടി ദുആ',
      description:
          'മൂന്നാം തക്ബീര്‍ ചൊല്ലി വീണ്ടും കൈ കെട്ടി മയ്യിത്തിന് വേണ്ടി ദുആ ചൈയ്യുക:',
      arabicTexts: [
        'اَلَّلهُمَّ أغْفِرْلَهُ وَرْحَمْهُ وَعْفُ عَنْهُ وَعَافِهِ',
        'وَاَكْرِمْ نُزُلَهُ وَوَسِّعْ مَدْخَلَهُ',
        'وَغْسِلْهُ بِالْمَاءِ وَثَّلْجِ وَالْبَرَدِ',
        'وَنَقِّهِ مِنَالْخَطَايَا كَمَا يُنَقَّ الْثَّوْبُ الْاَبْيَضُ مِنَ الدَّنٍَسِ',
        'وَاَبْدِلْهُ دَارً خَيْرً مِنْ دَارِهِ وَاَهْلً خَيْرً مِّنْ اَهْلِهِ',
        'وَزَوْجً خَيْرًمِّنْ زَوْجِهِ وَاَدْخِلْهُ الْجَنَّتَ',
        'وَاَعِذْهُ مِنْ عَذَابِ الْقَبْرِ وَفِتْنَتِهِ وَمِنْ عَذَابِ الْنَّارٍ',
      ],
      imagePath: 'assets/images/qiyyam image.png',
      instructions:
          'അല്ലാഹുവേ, അവനോട് പൊറുക്കുകയും കരുണ കാണിക്കുകയും അവന് ശക്തി നൽകുകയും ക്ഷമിക്കുകയും ചെയ്യേണമേ. അവനോട് ഉദാരമായി പെരുമാറുകയും അവൻ്റെ പ്രവേശനം വിശാലമാക്കുകയും വെള്ളവും മഞ്ഞും ആലിപ്പഴവും കൊണ്ട് അവനെ കഴുകുകയും ചെയ്യുക. വെള്ളവസ്ത്രം കറകളിൽനിന്ന് ശുദ്ധീകരിക്കപ്പെടുന്നതുപോലെ അവൻ്റെ അതിക്രമങ്ങളിൽനിന്നു അവനെ ശുദ്ധീകരിക്കേണമേ. അവൻ്റെ വീടിനേക്കാൾ ഉത്തമമായ ഒരു വാസസ്ഥലവും അവൻ്റെ കുടുംബത്തേക്കാൾ ഉത്തമമായ ഒരു കുടുംബവും അവൻ്റെ ഭാര്യയെക്കാൾ ഉത്തമമായ ഒരു ഭാര്യയും അവന് നൽകേണമേ. അവനെ സ്വർഗത്തിൽ പ്രവേശിപ്പിക്കുകയും ഖബറിലെ ശിക്ഷയിൽ നിന്നും [നരകാഗ്നിയുടെ ശിക്ഷയിൽ നിന്നും] അവനെ സംരക്ഷിക്കുകയും ചെയ്യുക.',
      audioPath: 'assets/audio/Dua janaza.mp3',
    ),
    PrayerStepModel(
      title: 'സലാം ചൊല്ലുക',
      description:
          'നാലാം തക്ബീര്‍ ചൊല്ലി വീണ്ടും കൈ കെട്ടി എല്ലാവര്‍കും വേണ്ടി ദുആ ചൈയ്യുക',
      arabicTexts: [
        'اَلَّلهُمَّ لاَ تُحَرِّمْنَا اَجْرَهُ',
        'وَ لاَ تَفْتِنَّا بَعْدَهُ',
        'وَغْفِرْلَنَا وَلَهُ',
        'رَبَّنَا اَتِنَا فِي الدُّنْياَ حَسَنَتً',
        'وَفِي الْآخِرَةِ حَسَنَةً',
        'وَقِنَا عَذَبَ النَّارِ',
      ],
      imagePath: 'assets/images/qiyyam image.png',
      instructions:
          'അല്ലാഹുവേ ഞങ്ങളെ നീ ഇതിന്റെ പ്രതിഫലത്തില്‍ നിന്നും തടയപ്പെട്ടവരാക്കല്ലേ, അദ്ധേഹത്തിന് ശേഷം നാശത്തിലകപ്പെട്ടവരുമാക്കല്ലേ...അയാള്‍കും ഞങ്ങള്‍കും നീ പൊറുത്ത് തരികയും ചൈയ്യേണമേ. ഞങ്ങളുടെ രക്ഷിതാവേ... ഞങ്ങള്‍ക് നീ ഇഹലോകത്തെ ഗുണങ്ങളേയും പരലോകത്തെ ഗുണങ്ങളേയും നല്‍കേണമേ',
      audioPath: 'assets/audio/salam dua.mp3',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _audioService = AudioProvider();
    _audioService.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _audioService.removeListener(() {
      setState(() {});
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get screen size for responsive sizing
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    // Calculate responsive sizes
    final double imageHeight = screenHeight * 0.35;
    final double titleFontSize = screenWidth * 0.045;
    final double descriptionFontSize = screenWidth * 0.04;
    final double arabicFontSize = screenWidth * 0.045;
    final double instructionsFontSize = screenWidth * 0.04;

    return Scaffold(
      backgroundColor: ColorClass.detailprimary,
      body: SafeArea(
        child: Column(
          children: [
            _buildStepIndicator(),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _prayerSteps.length,
                itemBuilder: (context, index) {
                  return _buildPrayerStepPage(
                    _prayerSteps[index],
                    imageHeight,
                    titleFontSize,
                    descriptionFontSize,
                    arabicFontSize,
                    instructionsFontSize,
                  );
                },
                onPageChanged: (index) {
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepIndicator() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        color: ColorClass.detailprimary,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(_prayerSteps.length * 2 - 1, (index) {
          // If index is even, show circle, if odd show line
          if (index % 2 == 0) {
            final stepIndex = index ~/ 2;
            final currentPage =
                (_pageController.hasClients ? _pageController.page ?? 0 : 0)
                    .round();
            final isActive = stepIndex == currentPage;
            final isCompleted = stepIndex < currentPage;

            return Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isCompleted
                    ? ColorClass.secondaryColor
                    : isActive
                        ? ColorClass.secondaryColor
                        : ColorClass.grey,
              ),
              child: Center(
                child: Text(
                  '${stepIndex + 1}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          } else {
            final lineIndex = index ~/ 2;
            final currentPage =
                (_pageController.hasClients ? _pageController.page ?? 0 : 0)
                    .round();
            return Container(
              width: 20,
              height: 2,
              color: lineIndex < currentPage
                  ? ColorClass.secondaryColor
                  : Colors.grey[700],
            );
          }
        }),
      ),
    );
  }

  Widget _buildPrayerStepPage(
    PrayerStepModel step,
    double imageHeight,
    double titleFontSize,
    double descriptionFontSize,
    double arabicFontSize,
    double instructionsFontSize,
  ) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Container with responsive height
          Container(
            width: double.infinity,
            height: imageHeight,
            margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    step.imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                // Play Button
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Row(
                    children: [
                      _buildAudioButton(
                        icon: Icons.replay,
                        onTap: () async {
                          try {
                            await _audioService.replay();
                          } catch (e) {
                            if (mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        'Error replaying: ${e.toString()}')),
                              );
                            }
                          }
                        },
                      ),
                      const SizedBox(width: 8),
                      _buildAudioButton(
                        icon: _audioService.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                        onTap: () async {
                          try {
                            if (_audioService.isPlaying) {
                              await _audioService
                                  .playPauseAudio(step.audioPath);
                            } else {
                              // Try to resume if it's the same file, otherwise start playing
                              if (_audioService.currentAssetPath ==
                                  step.audioPath) {
                                await _audioService.resume();
                              } else {
                                await _audioService
                                    .playPauseAudio(step.audioPath);
                              }
                            }
                          } catch (e) {
                            if (mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content:
                                        Text('Audio error: ${e.toString()}')),
                              );
                            }
                          }
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Title with responsive font size
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04,
            ),
            child: Text(
              step.title,
              style: GoogleFonts.anekMalayalam(
                fontSize: titleFontSize,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // Description with responsive font size
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04,
              vertical: MediaQuery.of(context).size.height * 0.02,
            ),
            child: Text(
              step.description,
              style: GoogleFonts.anekMalayalam(
                fontSize: descriptionFontSize,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // Arabic Texts with responsive font size
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: step.arabicTexts
                  .map(
                    (text) => _prayerLine(text, arabicFontSize),
                  )
                  .toList(),
            ),
          ),

          // Instructions with responsive font size
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04,
              vertical: MediaQuery.of(context).size.height * 0.02,
            ),
            child: Text(
              step.instructions,
              style: GoogleFonts.anekMalayalam(
                fontSize: instructionsFontSize,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // Add some bottom padding for better scrolling experience
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
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
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.blue, size: 24),
      ),
    );
  }

  Widget _prayerLine(String text, double fontSize) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        style: TextStyleClass.primaryFontArabic(fontSize, Colors.white),
      ),
    );
  }
}
