import 'package:flutter/material.dart';
import 'package:salat_al_janaza/constants/textstyleclass.dart';
import 'package:salat_al_janaza/services/audio_service.dart';
import 'package:dots_indicator/dots_indicator.dart';

class PrayerStepsSliderView extends StatefulWidget {
  const PrayerStepsSliderView({Key? key}) : super(key: key);

  @override
  _PrayerStepsSliderViewState createState() => _PrayerStepsSliderViewState();
}

class _PrayerStepsSliderViewState extends State<PrayerStepsSliderView> {
  // Data model for prayer steps
  final List<PrayerStep> _prayerSteps = [
    PrayerStep(
      title: 'തക്ബീർ',
      description: 'തക്ബീർ പറയുക:',
      arabicTexts: [
        'അല്ലാഹു അക്ബർ',
      ],
      meaning: 'അല്ലാഹു ഏറ്റവും വലിയവനാണ്.',
      imagePath: 'assets/images/muslim takbir.jpg',
      instructions: 'പുരുഷന്മാർ കൈകൾ ചെവികളോളം ഉയർത്തണം. സ്ത്രീകൾ തോളോളം ഉയർത്തിയാൽ മതി.',
      audioPath: 'assets/audio/allahuakbarvoice.mp3',
    ),
    PrayerStep(
      title: 'ഖിയാം',
      description: 'നിന്ന നിലയിൽ തന്നെ തുടരുക, ഖുർആനിലെ പ്രാരംഭ പ്രാർത്ഥനയായ അൽ-ഫാതിഹ പാരായണം ചെയ്യുക',
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
       instructions: 'പരമകാരുണികനും പ്രത്യേകം കരുണാനിധിയുമായ അല്ലാഹുവിൻ്റെ നാമത്തിൽ. (എല്ലാ) സ്തുതിയും (എല്ലാം) ലോകരക്ഷിതാവായ അല്ലാഹുവിനാണ്. പരിപൂർണ്ണ കാരുണ്യവാനും, പ്രത്യേകിച്ച് കാരുണ്യവാനും, പ്രതിഫല ദിനത്തിൻ്റെ പരമാധികാരി. നിന്നെയാണ് ഞങ്ങൾ ആരാധിക്കുന്നത്, നിന്നോട് ഞങ്ങൾ സഹായം ചോദിക്കുന്നു. നേരായ പാതയിലേക്ക് ഞങ്ങളെ നയിക്കേണമേ. (നിൻ്റെ) കോപം ഉണർത്തുന്നവരുടെയോ വഴിപിഴച്ചവരുടെയോ അല്ല, നീ അനുഗ്രഹിച്ചവരുടെ പാത.',
      audioPath: 'assets/audio/SuratAl-Fatihah.mp3',
    ),
    PrayerStep(
      title: 'തശഹ്ഹുദ്',
      description: 'രണ്ടാം തക്ബീര്‍ ചൊല്ലി വീണ്ടും കൈ കെട്ടി ഇബ്രാഹിമീയ സ്വലാത്ത് ചൊല്ലുക:',
      arabicTexts: [
          'اللهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ',
          'اَلَّلهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرِاهِيمَ وَعَلَى آلِ إِبْرِاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ',
        // Add more lines of Surah Al-Fatihah
      ],
      //  meaning: 'പ്രാരംഭ പ്രാർത്ഥനയായ അൽ-ഫാതിഹ',
      imagePath: 'assets/images/qiyyam image.png',
       instructions: 'അല്ലാഹുവേ പറയുക! ഇബ്രാഹിമിനും ഇബ്രാഹിമിൻ്റെ കുടുംബത്തിനും നീ സമാധാനം അയച്ചതുപോലെ, നിൻ്റെ ദാസനും നിൻ്റെ ദൂതനും മുഹമ്മദിനും സമാധാനം നൽകേണമേ , ഇബ്രാഹിമിനും ഇബ്രാഹിമിൻ്റെ കുടുംബത്തിനും നീ അനുഗ്രഹം അയച്ചതുപോലെ മുഹമ്മദിനും മുഹമ്മദിൻ്റെ കുടുംബത്തിനും നീ അനുഗ്രഹം നൽകണമേ',
      audioPath: 'assets/audio/surat_al_fatiha.mp3',
    ),
    PrayerStep(
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
      audioPath: 'assets/audio/surat_al_fatiha.mp3',
    ),
    PrayerStep(
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
      instructions: 'നിന്ന നിലയിൽ തന്നെ തുടരുക, ഖുർആനിലെ പ്രാരംഭ പ്രാർത്ഥനയായ അൽ-ഫാതിഹ പാരായണം ചെയ്യുക',
      audioPath: 'assets/audio/surat_al_fatiha.mp3',
    ),
    // PrayerStep(
    //   title: 'ഖിയാം',
    //   description: 'നിന്ന നിലയിൽ തുടരുക, അൽ-ഫാതിഹ പാരായണം ചെയ്യുക:',
    //   arabicTexts: [
    //     'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ',
    //     'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
    //     // Add more lines of Surah Al-Fatihah
    //   ],
    //   // meaning: 'പ്രാരംഭ പ്രാർത്ഥനയായ അൽ-ഫാതിഹ',
    //   imagePath: 'assets/images/qiyyam_image.png',
    //   instructions: 'നിന്ന നിലയിൽ തന്നെ തുടരുക, ഖുർആനിലെ പ്രാരംഭ പ്രാർത്ഥനയായ അൽ-ഫാതിഹ പാരായണം ചെയ്യുക',
    // ),
    // Add more prayer steps as needed
  ];

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'പ്രാർത്ഥനാ ഘട്ടങ്ങൾ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
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
                return _buildPrayerStepPage(_prayerSteps[index]);
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

  Widget _buildPrayerStepPage(PrayerStep step) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Container
          Container(
            width: double.infinity,
            height: 300,
            margin: const EdgeInsets.all(16),
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
                    fit: BoxFit.contain,
                  ),
                ),
                // Play Button
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: GestureDetector(
                    onTap: () async {
                      try {
                        final audioService = AudioService();
                        await audioService.playAudio(step.audioPath);
                        setState(() {});
                      } catch (e) {
                        debugPrint('Error in play button: $e');
                        if (mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Audio error: ${e.toString()}'),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                        }
                      }
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        AudioService().isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.blue,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              step.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              step.description,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16,
              ),
            ),
          ),
          
          // Arabic Texts
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: step.arabicTexts.map(_prayerLine).toList(),
            ),
          ),
          
          // // Meaning
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          //   child: Text(
          //     step.meaning,
          //     style: TextStyle(
          //       color: Colors.grey[500],
          //       fontSize: 16,
          //     ),
          //   ),
          // ),
          
          // Instructions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              step.instructions,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _prayerLine(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        style: TextStyleClass.primaryFontArabic(16, Colors.white),
      ),
    );
  }

  Widget _buildBottomIndicator() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
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

// Data model for prayer steps
class PrayerStep {
  final String title;
  final String description;
  final List<String> arabicTexts;
  final String? meaning;
  final String imagePath;
  final String instructions;
  final String audioPath;

  PrayerStep({
    required this.title,
    required this.description,
    required this.arabicTexts,
    this.meaning,
    required this.imagePath,
    required this.instructions,
    required this.audioPath,
  });
}