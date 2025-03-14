import 'package:flutter/material.dart';
import 'package:janaza_guide/constants/colorclass.dart';

import 'package:janaza_guide/provider/audio_service.dart';
import 'package:google_fonts/google_fonts.dart';

// Define the model class
class PrayerModel {
  final String title;
  final String description;
  final List<String> arabicTexts;
  final String translation;
  final String audioPath;
  final String? imagePath; // Optional, using default if not provided

  const PrayerModel({
    required this.title,
    required this.description,
    required this.arabicTexts,
    required this.translation,
    required this.audioPath,
    this.imagePath,
  });
}

class Prayersinhadith extends StatefulWidget {
  const Prayersinhadith({super.key});

  @override
  _PrayersinhadithState createState() => _PrayersinhadithState();
}

class _PrayersinhadithState extends State<Prayersinhadith> {
  final PageController _pageController = PageController();
  late AudioProvider _audioService;
  int _currentIndex = 0;

  // Data model for prayer steps
  final List<PrayerModel> _prayerSteps = [
    const PrayerModel(
      title: 'നബി (സ) പഠിപ്പിച്ച ദുആ',
      description: 'ജനാസ നമസ്കാരത്തിൽ റസൂൽ (സ) ഇപ്രകാരം പ്രാർത്ഥിച്ചതായി അബൂഹുറൈറ(റ) പറയുന്നു:',
      arabicTexts: [
        'اللهم أنت ربها وأنت خلقتها وأنت رزقتها وأنت هديتها للإسلام وأنت قبضت روحها وأنت أعلم بسرها وعلانيتها جئنا شفعاء له فاغفر له ذنبه'
      ],
      translation: 'അല്ലാഹുവേ, നീയാണ് ഇതിന്റെ ഉടമ; അതിനെ സൃഷ്ടിച്ചതും നീ, ഭക്ഷണം നൽകിയതും നീ. ഇസ്ലാമിലേക്ക് വഴി കാണിച്ചതും നീ, അതിന്റെ ആത്മാവിനെ നീ തിരിച്ചു പിടിച്ചിരിക്കുന്നുവല്ലോ. അതിന്റെ രഹസ്യവും പരസ്യവും അറിയുന്നവൻ നീ മാത്രം. അവന് വേണ്ടി ശുപാർശ ചെയ്യാനാണ് ഞങ്ങൾ വന്നിരിക്കുന്നത്. അതിനാൽ നീ അവന്റെ പാപം പൊറുക്കേണമേ!',
      audioPath: 'assets/audio/janaza_dua1.mp3',
      imagePath: 'assets/images/prayer_image.png',
    ),
    const PrayerModel(
      title: 'വാഥിലുബ്നുൽ അഅ് (റ) പറയുന്ന ദുആ',
      description: 'നബി (സ) ഞങ്ങൾക്ക് നേതൃത്വം നൽകി ഒരു മുസ്ലിമിന്റെ മയ്യിത്ത് നമസ്കാരം നിർവ്വഹിച്ചു. നബി (സ) അപ്പോൾ പറയുന്നതു ഞാൻ കേട്ടു:',
      arabicTexts: [
        'اللهم إن فلان بن فلان في ذمتك وحبل جوارك فقه من فتنة القبر وعذاب النار وأنت أهل الوفاء والحق اللهم فاغفر له وارحمه فانك أنت الغفور الرحيم'
      ],
      translation: 'അല്ലാഹുവേ, ഇന്നയാളുടെ മകൻ ഇന്നയാൾ (ഇവിടെ പരേതന്റെ പേർ പിതാവിന്റെ പേരിനോട് ചേർത്തു പറയണം) നിന്റെ സംരക്ഷണയിലും പരിരക്ഷാപാശത്തിലുമാണ്. അതിനാൽ ഖബർ ശിക്ഷയിൽ നിന്നും നരകശിക്ഷയിൽ നിന്നും നീ അദ്ദേഹത്തെ രക്ഷിക്കേണമേ. കരാർ പാലിക്കുന്നവനും അവകാശം നൽകുന്നവനുമാണു നീ. അല്ലാഹുവേ നീ ഇദ്ദേഹത്തിന് പൊറുക്കുകയും കരുണ ചൊരിയുകയും ചെയ്യേണമേ! നീ മാത്രമാണ് പൊറുക്കുന്നവനും കാരുണ്യവാനും.',
      audioPath: 'assets/audio/janaza_dua2.mp3',
      imagePath: 'assets/images/prayer_image.png',
    ),
    const PrayerModel(
      title: 'ഔഫ്ബ്നു മാലിക് (റ) പറയുന്ന ദുആ',
      description: 'ഒരു ജനാസ നമസ്കാരം നിർവ്വഹിച്ചുകൊണ്ട് നബി (സ) പറയുന്നത് ഞാൻ കേട്ടു:',
      arabicTexts: [
        'اللهم اغفرله وارحمه واعف عنه وعافه وأكرم نزله ووسع مدخله واغسله بماء وثلج وبرد ونقه من الخطايا كما ينقى الثوب الأبيض من الدنس وأبدله دارا خيرا من داره وأهلا خيرا من أهله وزوجا خيرا من زوجه وقه فتنة القبر وعذاب النار'
      ],
      translation: 'അല്ലാഹുവേ, ഇദ്ദേഹത്തിന് പൊറുക്കുകയും കരുണ ചൊരിയുകയും ചെയ്യണേണമേ! ഇദ്ദേഹത്തിന് മാപ്പ് നൽകേണമേ. സൗഖ്യം നൽകേണമേ! ഇദ്ദേഹത്തിന് മാന്യമായ വിരുന്നൊരുക്കുകയും ഇദ്ദേഹത്തിന്റെ പ്രവേശ സ്ഥലം വിശാലമാക്കുകയും ചെയ്യേണമേ. വെള്ളവും ഹിമവും മഞ്ഞും കൊണ്ട് ഇദ്ദേഹത്തെ കഴുകേണമേ! വെള്ള വസ്ത്രത്തെ ചെളിയിൽ നിന്നെന്നപോലെ പാപത്തിൽ നിന്ന് ഇദ്ദേഹത്തെ ശുദ്ധി ചെയ്യേണമേ! ഇദ്ദേഹത്തിന്റെ ഭവനത്തെക്കാൾ നല്ല ഭവനവും കുടുംബത്തേക്കാൾ നല്ല കുടുംബവും ഇണയെക്കാൾ നല്ല ഇണയെയും നൽകേണമേ! ഖബർ ശിക്ഷയിൽ നിന്നും നരകശിക്ഷയിൽ നിന്നും ഇദ്ദേഹത്തെ കാക്കുകയും ചെയ്യേണമേ!',
      audioPath: 'assets/audio/janaza_dua3.mp3',
      imagePath: 'assets/images/prayer_image.png',
    ),
    const PrayerModel(
      title: 'അബൂഹുറൈറ (റ) പറയുന്ന ദുആ',
      description: 'റസൂൽ (സ) ഒരു ജനാസ നമസ്കാരം നിർവ്വഹിച്ചുകൊണ്ട് പറഞ്ഞു:',
      arabicTexts: [
        'اللهم اغفر لحينا وميتنا وصغيرنا وكبيرنا وذكرنا وأنثانا وشاهدنا وغائبنا اللهم من أحييته منا فأحيه على الإسلام ومن توفيته فتوفه على الإيمان اللهم لا تحرمنا أجره ولا تضلنا بعده'
      ],
      translation: 'അല്ലാഹുവേ, ഞങ്ങളിൽ ജീവിച്ചിരിക്കുന്നവർക്കും മരണപ്പെട്ടവർക്കും ചെറിയ വർക്കും വലിയവർക്കും പുരുഷന്മാർക്കും സ്ത്രീകൾക്കും ഹാജറുള്ളവർക്കും ഇല്ലാത്തവർക്കും നീ പൊറുക്കേണമേ! അല്ലാഹുവേ, നീ ഞങ്ങളിൽ ആരെയെങ്കിലും ജീവിക്കാൻ വിടുന്നുവെങ്കിൽ അവരെ ഇസ്ലാമിൽ അടിയുറച്ചു ജീവിക്കാൻ തുണക്കേണമേ! നീ ഞങ്ങളിൽ ആരെയെങ്കിലും മരിപ്പിക്കുമ്പോൾ ഈമാനിൽ ഉറപ്പിച്ചു നിറുത്തി മരിപ്പിക്കേണമേ! അല്ലാഹുവേ, ഇതിന്റെ പ്രതിഫലം നീ ഞങ്ങൾക്കു തടയരുതേ! ഇദ്ദേഹത്തിന് ശേഷം നീ ഞങ്ങളെ വഴിതെറ്റിയവരാക്കരുതേ!',
      audioPath: 'assets/audio/janaza_dua4.mp3',
      imagePath: 'assets/images/prayer_image.png',
    ),
    const PrayerModel(
      title: 'കുട്ടികൾക്ക് വേണ്ടിയുള്ള ദുആ',
      description: 'മയ്യിത്ത് കുട്ടിയുടേതാണെങ്കിൽ ഇത് കൂടി പറയണം:',
      arabicTexts: [
        'اللهم اجعله فرطا لأبويه وسلفا وذخرا وعظة واعتبارا وشفيعا، وثقل به موازينهما وأفرغ الصبر على قلوبهما ولا تفتنهما بعده ولا تحرمهما أجره'
      ],
      translation: 'അല്ലാഹുവേ, നീ ഇവനെ ഇവന്റെ മാതാപിതാക്കൾക്ക് സൂക്ഷിപ്പും മുന്നൊരുക്കവും നിധിയും ഉപദേശവും ഗുണപാഠവും ശുപാർശകനു മാക്കേണമേ. അവൻ വഴി അവരുടെ ത്രാസ് ഘനക്കൂടുതലുള്ളതാക്കുകയും അവരുടെ ഹൃദയങ്ങളിൽ ക്ഷമ ചൊരിയുകയും ഇവന്ന് ശേഷം അവരെ കുഴപ്പത്തിലകപ്പെടുത്താതിരിക്കുകയും അവൻ നഷ്ടപ്പെട്ടതിന്റെ പ്രതിഫലം അവർക്കു തടയാതിരിക്കുകയും ചെയ്യേണമേ!',
      audioPath: 'assets/audio/janaza_dua5.mp3',
      imagePath: 'assets/images/prayer_image.png',
    ),
    const PrayerModel(
      title: 'നാലാമത്തെ തക്ബീറിന് ശേഷം പറയേണ്ട ദുആ',
      description: 'നാലാമത്തെ തക്ബീറിന് ശേഷം ഇമാം ശാഫിഈയുടെ പക്ഷം അനുസരിച്ച്:',
      arabicTexts: [
        'اللهم لا تحرمنا أجره ولا تفتنا بعده'
      ],
      translation: 'ഈ മയ്യിത്തിന്റെ പേരിൽ നമസ്കരിച്ച പ്രതിഫലം ഞങ്ങൾക്ക് തടയാതിരിക്കുകയും ഇദ്ദേഹത്തിന് ശേഷം ഞങ്ങളെ കുഴപ്പത്തിൽ പെടുത്താതിരിക്കുകയും ചെയ്യേണമേ!',
      audioPath: 'assets/audio/janaza_dua6.mp3',
      imagePath: 'assets/images/prayer_image.png',
    ),
    const PrayerModel(
      title: 'ഖബർ സന്ദർശനവേളയിൽ പറയേണ്ട ദുആ',
      description: 'ശ്മശാനങ്ങളിൽ ചെന്നാൽ നബി (സ) പഠിപ്പിച്ചത്:',
      arabicTexts: [
        'السلام عليكم أهل الديار من المؤمنين والمسلمين وإنا إن شاء الله بكم لاحقون. أنتم فرطنا ونحن لكم تبع ونسأل الله لنا ولكم العافية'
      ],
      translation: 'നിങ്ങൾക്ക് അല്ലാഹുവിന്റെ സമാധാനമുണ്ടാവട്ടെ. മുഅ്മിനുകളും മുസ്ലിംകളുമായ ഈ ഭവനത്തിലെ താമസക്കാരേ, അല്ലാഹു ഉദ്ദേശിച്ചാൽ ഞങ്ങളും നിങ്ങളുടെ ശേഷം വരാനുള്ളവരാണ്. നിങ്ങൾ മുമ്പേ പോയവരും ഞങ്ങൾ നിങ്ങളെ പിന്തുടരുന്നവരുമാകുന്നു. ഞങ്ങൾക്കും നിങ്ങൾക്കും സൗഖ്യത്തിനായി ഞങ്ങൾ അല്ലാഹുവിനോടർത്ഥിക്കുന്നു.',
      audioPath: 'assets/audio/kabr_dua1.mp3',
      imagePath: 'assets/images/prayer_image.png',
    ),
  ];

  // Default image path to use if not provided
  final String defaultImagePath = 'assets/images/prayer_image.png';

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
    _audioService.dispose(); // Make sure to dispose the audio service properly
    super.dispose();
  }

  void _goToNextPage() {
    if (_currentIndex < _prayerSteps.length - 1) {
      // Pause current audio before moving to next page
      if (_audioService.isPlaying) {
        _audioService.pause();
      }
      
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      setState(() {
        _currentIndex++;
      });
    }
  }

  void _goToPreviousPage() {
    if (_currentIndex > 0) {
      // Pause current audio before moving to previous page
      if (_audioService.isPlaying) {
        _audioService.pause();
      }
      
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
    final double translationFontSize = screenWidth * 0.04;

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
                        translationFontSize,
                      );
                    },
                    // onPageChanged: (index) {
                    //   // Automatically pause audio when page changes
                    //   if (_audioService.isPlaying) {
                    //     _audioService.pause();
                    //   }
                      
                    //   setState(() {
                    //     _currentIndex = index;
                    //   });
                    // },
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
                  style: GoogleFonts.anekMalayalam(
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
    PrayerModel step,
    double imageHeight,
    double titleFontSize,
    double descriptionFontSize,
    double arabicFontSize,
    double translationFontSize,
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
                    step.imagePath ?? defaultImagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                // Remove Play Button
                // Positioned(
                //   bottom: 20,
                //   right: 20,
                //   child: Row(
                //     children: [
                //       _buildAudioButton(
                //         icon: Icons.replay,
                //         onTap: () async {
                //           try {
                //             // Load the current step's audio first if not already loaded
                //             if (_audioService.currentAssetPath != step.audioPath) {
                //               await _audioService.loadAudio(step.audioPath);
                //             }
                //             await _audioService.play();
                //           } catch (e) {
                //             if (mounted) {
                //               ScaffoldMessenger.of(context).showSnackBar(
                //                 SnackBar(
                //                     content: Text(
                //                         'Error replaying: ${e.toString()}')),
                //               );
                //             }
                //           }
                //         },
                //       ),
                //       const SizedBox(width: 8),
                //       _buildAudioButton(
                //         icon: _audioService.isPlaying && _audioService.currentAssetPath == step.audioPath
                //             ? Icons.pause
                //             : Icons.play_arrow,
                //         onTap: () async {
                //           try {
                //             // If another audio is playing, stop it first
                //             if (_audioService.isPlaying && _audioService.currentAssetPath != step.audioPath) {
                //               await _audioService.stop();
                //             }
                //             
                //             // Check if current file is already loaded
                //             if (_audioService.currentAssetPath == step.audioPath) {
                //               if (_audioService.isPlaying) {
                //                 await _audioService.pause();
                //               } else {
                //                 await _audioService.play();
                //               }
                //             } else {
                //               // Load and play the new audio
                //               await _audioService.playPauseAudio(step.audioPath);
                //             }
                //           } catch (e) {
                //             if (mounted) {
                //               ScaffoldMessenger.of(context).showSnackBar(
                //                 SnackBar(
                //                     content:
                //                         Text('Audio error: ${e.toString()}')),
                //               );
                //             }
                //           }
                //         },
                //       )
                //     ],
                //   ),
                // ),
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

          // Translation with responsive font size
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04,
              vertical: MediaQuery.of(context).size.height * 0.02,
            ),
            child: Text(
              step.translation,
              style: GoogleFonts.anekMalayalam(
                fontSize: translationFontSize,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // Add some bottom padding for better scrolling experience
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
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
        style: GoogleFonts.notoSansArabic(
          fontSize: fontSize,
          color: Colors.white,
        ).copyWith(height: 2.0),
      ),
    );
  }
}