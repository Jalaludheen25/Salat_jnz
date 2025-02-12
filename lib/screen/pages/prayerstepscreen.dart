import 'package:flutter/material.dart';
import 'package:salat_al_janaza/constants/textstyleclass.dart';
import 'package:salat_al_janaza/model/prayerstepmodel.dart';
import 'package:salat_al_janaza/services/audio_service.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class PrayerStepsSliderView extends StatefulWidget {
  const PrayerStepsSliderView({Key? key}) : super(key: key);

  @override
  _PrayerStepsSliderViewState createState() => _PrayerStepsSliderViewState();
}

class _PrayerStepsSliderViewState extends State<PrayerStepsSliderView> {
  // Data model for prayer steps remains the same
  final List<PrayerStepModel> _prayerSteps = [
    PrayerStepModel(
      title: 'തക്ബീർ',
      description: 'തക്ബീർ പറയുക:',
      arabicTexts: [
        'അല്ലാഹു അക്ബർ',
      ],
      meaning: 'അല്ലാഹു ഏറ്റവും വലിയവനാണ്.',
      imagePath: 'assets/images/muslim takbir.jpg',
      instructions: 'പുരുഷന്മാർ കൈകൾ ചെവികളോളം ഉയർത്തണം. സ്ത്രീകൾ തോളോളം ഉയർത്തിയാൽ മതി.',
      audioPath: 'assets/audio/allahakbarvoice.mp3',
    ),
    PrayerStepModel(
      title: 'ഖിയാം',
      description: 'നിന്ന നിലയിൽ തുടരുക, ഖുർആനിലെ പ്രാരംഭ പ്രാർത്ഥനയായ അൽ-ഫാതിഹ പാരായണം ചെയ്യുക',
      arabicTexts: [
        'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ',
        'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
        'الرَّحْمَٰنِ الرَّحِيمِ',
        'مَالِكِ يَوْمِ الدِّينِ',
        'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
        'اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ ، صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ',
        'غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ.\nآمِينَ',
      ],
      imagePath: 'assets/images/qiyyam image.png',
       instructions: ' പരമദയാലുവും കരുണാവാരിധിയുമായ അല്ലാഹുവിന്റെ നാമത്തില്‍. സര്‍വലോകത്തിന്റെയും റബ്ബായ3 അല്ലാഹുവിനു മാത്രമാകുന്നു സ്‌തോത്രം. അളവറ്റ ദയാപരനും കരുണാവാരിധിയുമാണവന്‍.പ്രതിഫലദിവസത്തിന്നധിപനായവന്‍.നിനക്കുമാത്രം ഞങ്ങള്‍ ഇബാദത്തുചെയ്യുന്നു.നിന്നോടുമാത്രം ഞങ്ങള്‍ സഹായം തേടുന്നു.നീ ഞങ്ങളെ നേര്‍വഴിയില്‍ നയിക്കേണമേ! നീ അനുഗ്രഹിച്ചവരുടെ മാര്‍ഗത്തില്‍ കോപത്തിനിരയായവരുടെയും വ്യതിചലിച്ചവരുടെയും മാര്‍ഗത്തിലല്ല.',
      audioPath: 'assets/audio/SuratAl-Fatihah.mp3',
    ),
    PrayerStepModel(
      title: 'തശഹ്ഹുദ്',
      description: 'രണ്ടാം തക്ബീര്‍ ചൊല്ലി വീണ്ടും കൈ കെട്ടി ഇബ്രാഹിമീയ സ്വലാത്ത് ചൊല്ലുക:',
      arabicTexts: [
          'اللهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ',
          'اَلَّلهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ',
        
      ],
      
      imagePath: 'assets/images/qiyyam image.png',
       instructions: 'അല്ലാഹുവേ പറയുക! ഇബ്രാഹിമിനും ഇബ്രാഹിമിൻ്റെ കുടുംബത്തിനും നീ സമാധാനം അയച്ചതുപോലെ, നിൻ്റെ ദാസനും നിൻ്റെ ദൂതനും മുഹമ്മദിനും സമാധാനം നൽകേണമേ , ഇബ്രാഹിമിനും ഇബ്രാഹിമിൻ്റെ കുടുംബത്തിനും നീ അനുഗ്രഹം അയച്ചതുപോലെ മുഹമ്മദിനും മുഹമ്മദിൻ്റെ കുടുംബത്തിനും നീ അനുഗ്രഹം നൽകണമേ',
      audioPath: 'assets/audio/durood e ibrahimi.mp3',
    ),
    PrayerStepModel(
      title: 'മയ്യിത്തിന് വേണ്ടി ദുആ',
      description: 'മൂന്നാം തക്ബീര്‍ ചൊല്ലി വീണ്ടും കൈ കെട്ടി മയ്യിത്തിന് വേണ്ടി ദുആ ചൈയ്യുക:',
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
       instructions: 'അല്ലാഹുവേ, അവനോട് പൊറുക്കുകയും കരുണ കാണിക്കുകയും അവന് ശക്തി നൽകുകയും ക്ഷമിക്കുകയും ചെയ്യേണമേ. അവനോട് ഉദാരമായി പെരുമാറുകയും അവൻ്റെ പ്രവേശനം വിശാലമാക്കുകയും വെള്ളവും മഞ്ഞും ആലിപ്പഴവും കൊണ്ട് അവനെ കഴുകുകയും ചെയ്യുക. വെള്ളവസ്ത്രം കറകളിൽനിന്ന് ശുദ്ധീകരിക്കപ്പെടുന്നതുപോലെ അവൻ്റെ അതിക്രമങ്ങളിൽനിന്നു അവനെ ശുദ്ധീകരിക്കേണമേ. അവൻ്റെ വീടിനേക്കാൾ ഉത്തമമായ ഒരു വാസസ്ഥലവും അവൻ്റെ കുടുംബത്തേക്കാൾ ഉത്തമമായ ഒരു കുടുംബവും അവൻ്റെ ഭാര്യയെക്കാൾ ഉത്തമമായ ഒരു ഭാര്യയും അവന് നൽകേണമേ. അവനെ സ്വർഗത്തിൽ പ്രവേശിപ്പിക്കുകയും ഖബറിലെ ശിക്ഷയിൽ നിന്നും [നരകാഗ്നിയുടെ ശിക്ഷയിൽ നിന്നും] അവനെ സംരക്ഷിക്കുകയും ചെയ്യുക.',
      audioPath: 'assets/audio/Dua janaza.mp3',
    ),
    PrayerStepModel(
      title: 'സലാം ചൊല്ലുക',
      description: 'നാലാം തക്ബീര്‍ ചൊല്ലി വീണ്ടും കൈ കെട്ടി എല്ലാവര്‍കും വേണ്ടി ദുആ ചൈയ്യുക',
      arabicTexts: [
        'اَلَّلهُمَّ لاَ تُحَرِّمْنَا اَجْرَهُ',
        'وَ لاَ تَفْتِنَّا بَعْدَهُ',
        'وَغْفِرْلَنَا وَلَهُ',
        'رَبَّنَا اَتِنَا فِي الدُّنْياَ حَسَنَتً',
        'وَفِي الْآخِرَةِ حَسَنَةً',
        'وَقِنَا عَذَبَ النَّارِ',
      ],
      imagePath: 'assets/images/qiyyam image.png',
      instructions: 'അല്ലാഹുവേ ഞങ്ങളെ നീ ഇതിന്റെ പ്രതിഫലത്തില്‍ നിന്നും തടയപ്പെട്ടവരാക്കല്ലേ, അദ്ധേഹത്തിന് ശേഷം നാശത്തിലകപ്പെട്ടവരുമാക്കല്ലേ...അയാള്‍കും ഞങ്ങള്‍കും നീ പൊറുത്ത് തരികയും ചൈയ്യേണമേ. ഞങ്ങളുടെ രക്ഷിതാവേ... ഞങ്ങള്‍ക് നീ ഇഹലോകത്തെ ഗുണങ്ങളേയും പരലോകത്തെ ഗുണങ്ങളേയും നല്‍കേണമേ',
      audioPath: 'assets/audio/salam dua.mp3',
    ),
  ];

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;
    
    // Calculate responsive sizes
    final double imageHeight = screenHeight * 0.35; // 35% of screen height
    final double titleFontSize = screenWidth * 0.045; // 4.5% of screen width
    final double descriptionFontSize = screenWidth * 0.04; // 4% of screen width
    final double arabicFontSize = screenWidth * 0.045; // 4.5% of screen width
    final double instructionsFontSize = screenWidth * 0.04; // 4% of screen width

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'പ്രാർത്ഥനാ ഘട്ടങ്ങൾ',
          style: GoogleFonts.anekMalayalam(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
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
          _buildBottomIndicator(),
        ],
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
                            final audioService = AudioService();
                            await audioService.replay();
                            setState(() {});
                          } catch (e) {
                            if (mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Error replaying: ${e.toString()}')),
                              );
                            }
                          }
                        },
                      ),
                      const SizedBox(width: 8),
                      _buildAudioButton(
                        icon: AudioService().isPlaying ? Icons.pause : Icons.play_arrow,
                        onTap: () async {
                          try {
                            final audioService = AudioService();
                            await audioService.playPauseAudio(step.audioPath);
                            setState(() {});
                          } catch (e) {
                            if (mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Audio error: ${e.toString()}')),
                              );
                            }
                          }
                        },
                      ),
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
            fontSize: 20,
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
            fontSize: 20,
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
              children: step.arabicTexts.map(
                (text) => _prayerLine(text, arabicFontSize),
              ).toList(),
            ),
          ),
          
          // Instructions with responsive font size
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04,
            ),
            child: Text(
              step.instructions,
              style: GoogleFonts.anekMalayalam(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
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

  Widget _buildBottomIndicator() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.02,
      ),
      child: DotsIndicator(
        dotsCount: _prayerSteps.length,
        position: _pageController.hasClients 
            ? (_pageController.page ?? 0).round() 
            : 0,
        decorator: DotsDecorator(
          activeColor: Colors.blue,
          color: Colors.grey[800]!,
          size: const Size(8.0, 8.0),
          activeSize: const Size(24.0, 8.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          spacing: const EdgeInsets.all(4),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}