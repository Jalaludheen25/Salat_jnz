import 'package:flutter/material.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/textstyleclass.dart';
import 'package:janaza_guide/model/prayerstepmodel.dart';
import 'package:janaza_guide/provider/audio_service.dart';
import 'package:google_fonts/google_fonts.dart';

class PrayerStepsSliderView extends StatefulWidget {
  const PrayerStepsSliderView({super.key});

  @override
  _PrayerStepsSliderViewState createState() => _PrayerStepsSliderViewState();
}

class _PrayerStepsSliderViewState extends State<PrayerStepsSliderView> {
  final PageController _pageController = PageController();
  late AudioProvider _audioService;
  int _currentIndex = 0;

  // Data model for prayer steps
  final List<PrayerStepModel> _prayerSteps = [
    PrayerStepModel(
      title: 'തക്ബീർ',
      description: 'തക്ബീർ പറയുക:',
      arabicTexts: [
        'الله أكبر',
      ],
      meaning: 'അല്ലാഹു ഏറ്റവും വലിയവനാണ്.',
      imagePath: 'assets/images/muslim takbir.jpg',
      instructions:
          'പുരുഷന്മാർ കൈകൾ ചെവികളോളം ഉയർത്തണം. സ്ത്രീകൾ തോളോളം ഉയർത്തിയാൽ മതി.',
      audioPath: 'assets/audio/allahakbarvoice.mp3',
    ),
    PrayerStepModel(
      title: 'ഖിയാം',
      description: '4) ഒന്നാമത്തെ തക്ബീറിനുശേഷം ഫാതിഹ ഓതുക.',
      arabicTexts: [
        ' بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ\uFD3F١\uFD3E ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ \uFD3F٢\uFD3E ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ \uFD3F٣\uFD3E مَـٰلِكِ يَوْمِ ٱلدِّينِ \uFD3F٤\uFD3E إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ \uFD3F٥\uFD3E ٱهْدِنَا ٱلصِّرَٰطَ ٱلْمُسْتَقِيمَ \uFD3F٦\uFD3E صِرَٰطَ ٱلَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ ٱلْمَغْضُوبِ عَلَيْهِمْ وَلَا ٱلضَّآلِّينَ \uFD3F٧\uFD3E آمِينَ \uFD3F٨\uFD3E'
      ],
      imagePath: 'assets/images/qiyyam image.png',
      instructions:
          ' പരമദയാലുവും കരുണാവാരിധിയുമായ അല്ലാഹുവിന്റെ നാമത്തില്‍. സര്‍വലോകത്തിന്റെയും റബ്ബായ3 അല്ലാഹുവിനു മാത്രമാകുന്നു സ്‌തോത്രം. അളവറ്റ ദയാപരനും കരുണാവാരിധിയുമാണവന്‍.പ്രതിഫലദിവസത്തിന്നധിപനായവന്‍.നിനക്കുമാത്രം ഞങ്ങള്‍ ഇബാദത്തുചെയ്യുന്നു.നിന്നോടുമാത്രം ഞങ്ങള്‍ സഹായം തേടുന്നു.നീ ഞങ്ങളെ നേര്‍വഴിയില്‍ നയിക്കേണമേ! നീ അനുഗ്രഹിച്ചവരുടെ മാര്‍ഗത്തില്‍ കോപത്തിനിരയായവരുടെയും വ്യതിചലിച്ചവരുടെയും മാര്‍ഗത്തിലല്ല.',
      audioPath: 'assets/audio/SuratAl-Fatihah.mp3',
    ),
    PrayerStepModel(
      title: 'തശഹ്ഹുദ്',
      description:
          'രണ്ടാമത്തെ തക്ബീറിനുശേഷം നബി(സ)യുടെ പേരിൽ സ്വലാത് ചൊല്ലുക.',
      arabicTexts: [
        'اللهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ اَلَّلهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ',
      ],
      imagePath: 'assets/images/qiyyam image.png',
      instructions:
          'അല്ലാഹുവേ പറയുക! ഇബ്രാഹിമിനും ഇബ്രാഹിമിൻ്റെ കുടുംബത്തിനും നീ സമാധാനം അയച്ചതുപോലെ, നിൻ്റെ ദാസനും നിൻ്റെ ദൂതനും മുഹമ്മദിനും സമാധാനം നൽകേണമേ , ഇബ്രാഹിമിനും ഇബ്രാഹിമിൻ്റെ കുടുംബത്തിനും നീ അനുഗ്രഹം അയച്ചതുപോലെ മുഹമ്മദിനും മുഹമ്മദിൻ്റെ കുടുംബത്തിനും നീ അനുഗ്രഹം നൽകണമേ',
      audioPath: 'assets/audio/durood e ibrahimi.mp3',
    ),
    PrayerStepModel(
      title: 'മയ്യിത്തിന് വേണ്ടി ദുആ',
      description:
          'മൂന്നാമത്തെ തക്ബീറിനു ശേഷം മയ്യിത്തിന് വേണ്ടി പ്രാർത്ഥിക്കുക.',
      arabicTexts: [
        'اللهم اغفرله وارحمه واعف عنه وعافه وأكرم نزله ووسع مدخله واغسله بماء وثلج وبرد ونقه من الخطايا كما ينقى الثوب الأبيض من الدنس وأبدله دارا خيرا من داره وأهلا خيرا من أهله وزوجا خيرا من زوجه وقه فتنة القبر وعذاب النار (مسلم)',
      ],
      imagePath: 'assets/images/qiyyam image.png',
      instructions:
          'അല്ലാഹുവേ, അവനോട് പൊറുക്കുകയും കരുണ കാണിക്കുകയും അവന് ശക്തി നൽകുകയും ക്ഷമിക്കുകയും ചെയ്യേണമേ. അവനോട് ഉദാരമായി പെരുമാറുകയും അവൻ്റെ പ്രവേശനം വിശാലമാക്കുകയും വെള്ളവും മഞ്ഞും ആലിപ്പഴവും കൊണ്ട് അവനെ കഴുകുകയും ചെയ്യുക. വെള്ളവസ്ത്രം കറകളിൽനിന്ന് ശുദ്ധീകരിക്കപ്പെടുന്നതുപോലെ അവൻ്റെ അതിക്രമങ്ങളിൽനിന്നു അവനെ ശുദ്ധീകരിക്കേണമേ. അവൻ്റെ വീടിനേക്കാൾ ഉത്തമമായ ഒരു വാസസ്ഥലവും അവൻ്റെ കുടുംബത്തേക്കാൾ ഉത്തമമായ ഒരു കുടുംബവും അവൻ്റെ ഭാര്യയെക്കാൾ ഉത്തമമായ ഒരു ഭാര്യയും അവന് നൽകേണമേ. അവനെ സ്വർഗത്തിൽ പ്രവേശിപ്പിക്കുകയും ഖബറിലെ ശിക്ഷയിൽ നിന്നും [നരകാഗ്നിയുടെ ശിക്ഷയിൽ നിന്നും] അവനെ സംരക്ഷിക്കുകയും ചെയ്യുക.',
      audioPath: 'assets/audio/Dua janaza.mp3',
    ),
    PrayerStepModel(
      title: 'സലാം ചൊല്ലുക',
      description: '7) നാലാമത്തെ തക്ബീറിന് ശേഷം സലാം ചൊല്ലുക.',
      arabicTexts: ['اللهم لا تحرمنا أجره ولا تفتنا بعده'],
      imagePath: 'assets/images/qiyyam image.png',
      instructions:
          'ഈ മയ്യിത്തിന്റെ പേരിൽ നമസ്കരിച്ച പ്രതിഫലം ഞങ്ങൾക്ക് തടയാതിരിക്കുകയും ഇദ്ദേഹത്തിന് ശേഷം ഞങ്ങളെ കുഴപ്പത്തിൽ പെടുത്താതിരിക്കുകയും ചെയ്യേണമേ',
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

  void _goToNextPage() {
    if (_currentIndex < _prayerSteps.length - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      setState(() {
        _currentIndex++;
      });
    }
  }

  void _goToPreviousPage() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      setState(() {
        _currentIndex--;
      });
    }
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

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorClass.bottomsheet1,
            ColorClass.bottomsheet2,
          ],
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.close, color: ColorClass.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            'നമസ്കാര കർമ്മങ്ങൾ',
            style: GoogleFonts.anekMalayalam(
              color: ColorClass.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            // Main content
            Column(
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
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
              ],
            ),

            // Navigation buttons positioned at the bottom
           
          ],
        ),
      ),
    );
  }

  Widget _buildStepIndicator() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
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
                        : Colors.grey[700],
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
        style: TextStyleClass.primaryFontArabic(
          fontSize,
          Colors.white,
        ).copyWith(height: 2.0),
      ),
    );
  }
}
