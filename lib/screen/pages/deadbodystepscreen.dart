import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salat_al_janaza/constants/colorclass.dart';
import 'package:salat_al_janaza/model/Mayyithmodel.dart';

class Mayyithstepscreen extends StatefulWidget {
  const Mayyithstepscreen({super.key});

  @override
  _MayyithstepscreenState createState() => _MayyithstepscreenState();
}

class _MayyithstepscreenState extends State<Mayyithstepscreen> {
  // Data model for prayer steps remains the same
  final List<Mayyithmodel> _prayerSteps = [
    Mayyithmodel(
      title: 'കലിമ ചൊല്ലിക്കൊടുക്കല്‍:',
      
      description:
          'അയാൾക്ക് لآ اِلَهَ اِلّا اللّهُ എന്ന് ചൊല്ലിക്കൊടുക്കുക.القِّنوا مَوْتاكم لا إلهَ إلَّا اللهُ (مسلم، أبوداود، الترمذي) ) (നിങ്ങൾ മരണാസന്നർക്കു لا إله إلا الله എന്ന് ചൊല്ലിക്കൊടുക്കുക) എന്ന് നബി (സ) പറഞ്ഞതായി അബൂസഈദിൽ ഖിദ് രി (റ) ഉദ്ധരിച്ചി ട്ടുണ്ട്. അയാൾ അത് ഒരിക്കൽ ചൊല്ലിയാൽ പിന്നെ മറ്റു വല്ലതും സംസാരിച്ചാൽ മാത്രമേ വീണ്ടും ചൊല്ലിക്കൊടുക്കേണ്ടതുള്ളൂ. അതുചൊല്ലാൻ നിർബന്ധിക്കുകയോ ചൊല്ലാൻ പറയുകപോലുമോ ചെയ്യരുത്.',
      imagePath: 'assets/images/patent man.png',
    ),
    Mayyithmodel(
      title: 'മരണാസന്നനെ കിടത്തല്‍:',
      description:
          ' ഖിബ് ലക്കഭിമുഖമായി വലതുഭാഗത്തേക്ക് ചരിച്ച് കിടത്തുക. ഭൂരിപക്ഷം പണ്ഡിതന്മാരുടെയും അഭിപ്രായം ഇതാണ്. എന്നാൽ കാൽ രണ്ടും ഖിബ് ലയുടെ നേരെയാക്കി തല അല്പം ഉയർത്തി വെച്ച് മലർത്തിക്കിടത്തണമെന്നാണ് ഇമാം ശാഫിഈ (റ) യുടെ അഭിപ്രായം.',
      imagePath: 'assets/images/recitingman.png',
    ),
    Mayyithmodel(
      title: 'ഖുര്‍ആന്‍ പാരായണം:',
      description:
          ' മരണാസന്നന്റെ സമീപം സൂറ യാസീൻ ഓതുക. നബി (സ) പറഞ്ഞതായി അബൂദർറും അബുദ്ദർദാഉം (റ) ഉദ്ധരിക്കുന്നു.ا ما منْ ميتٍ يموتُ، فيُقرأُ عندهُ سورةُ ( يس )، إلا هوَّنَ اللهُ عز وجل عليهِ (مسند الفردوس)(മരിച്ചുകൊണ്ടിരിക്കുന്ന ഏതൊരാളുടെ അരികിൽ വെച്ചും യാസീൻ ഓതിയാൽ അല്ലാഹു അയാൾക്ക് ആശ്വാസം നൽകാതിരിക്കയില്ല.)',
      imagePath: 'assets/images/Giving water.png',
    ),
    Mayyithmodel(
      title: 'വെള്ളം കൊടുക്കല്‍:',
      description:
          'മരിച്ചു കഴിഞ്ഞാൽ കണ്ണു രണ്ടും അടക്കുക. അബൂ സലമ (റ) മരിച്ചപ്പോൾ നബി (സ) അദ്ദേഹത്തിന്റെ കണ്ണ് അടച്ചു കൊടുത്തിരുന്നു.',
      imagePath: 'assets/images/recitingquran.png',
    ),
    Mayyithmodel(
      title: 'കഫന്‍ ചെയ്യല്‍',
      description:
          'ശരീരം മുഴുവൻ ഒരു വസ്ത്രം കൊണ്ടു മൂടുക. തിരുശരീരം വരകളുള്ള വസ്ത്രം കൊണ്ട് മൂടിയിരുന്നതായി ആയിശ(റ) ഉദ്ധരിച്ചിട്ടുണ്ട്. മൃതശരീരം ചുംബിക്കാവുന്നതാണ്. നബി (സ) ഉഥ്മാനുബ്നു മള്ഊനിനെയും അബൂബകർ (റ) നബി (സ)യെയും മരണശേഷം ചുംബിച്ചതായി റിപ്പോർട്ടുകളുണ്ട്',
      imagePath: 'assets/images/recitingquran.png',
    ),
    Mayyithmodel(
      title: 'മയ്യിത്ത് സംസ്കരിക്കൽ',
      description:
          'എത്രയും വേഗം മയ്യിത്ത് സംസ്കരിക്കുക. മരണശയ്യയിൽ കിടക്കുകയായിരുന്ന ത്വൽഹത് ബ്നു ബറാഇ(റ)നെ സന്ദർശിച്ച ശേഷം നബി (സ) പറഞ്ഞു:ني لا أرى طلحة إلا قد حدث فيه الموت فأذنوني به وعجلوا فإنه لا ينبغي لجيفة مسلم أن تحبس بين ظهري أهله (أبوداود)(ത്വൽഹക്കു മരണം സംഭവിക്കുമെന്നാണ് എനിക്ക് തോന്നുന്നത്. അതിനാൽ എന്നെ വിവരം അറിയിക്കുകയും കാര്യങ്ങൾ വേഗത്തിലാക്കുകയും ചെയ്യുക. കാരണം ഒരു മുസ്ലിമിന്റെയും ജഡം അയാളുടെ വീട്ടുകാരുടെ മുമ്പിൽ വെച്ചുകൊണ്ടിരിക്കാവതല്ല.)സംസ്കരണത്തിന് മയ്യിത്തിന്റെ വലിയ്യി (കൈകാര്യാവകാശി) നെയല്ലാതെ മറ്റാരെയും കാത്തിരിക്കേണ്ടതില്ല. വലിയ്യിനെ തന്നെയും കാത്തിരിക്കേണ്ടത് മൃതശരീരത്തിന് പറയത്തക്ക മാറ്റമൊന്നും സംഭവിക്കുകയില്ലെങ്കിലാണ്. നബി (സ) അലി (റ) യോട് പറഞ്ഞു: يا عليُّ، ثلاثٌ لا تؤخِّرْها: الصَّلاةُ إذا آنَت والجِنازةُ إذا حضَرَت والأيِّمُ إذا وجدَت لها كُفُؤًا (അലിയെ, മൂന്നു കാര്യങ്ങൾ വെച്ചു താമസിപ്പിക്കരുത്. നമസ്കാരം സമയമായാൽ, ജനാസ മുമ്പിലെത്തിക്കഴിഞ്ഞാൽ, അവിവാഹിത അനുയോജ്യനെ കിട്ടിക്കഴിഞ്ഞാൽ- അഹ്മദ്, തിർമിദി)',
      imagePath: 'assets/images/recitingquran.png',
    ),
    Mayyithmodel(
      title: 'കടബാധ്യതയുണ്ടെങ്കിൽ  കൊടുത്തു തീർക്കൽ',
      description:
          'മയ്യിത്തിന് കടബാധ്യതയുണ്ടെങ്കിൽ കഴിയുംവേഗം അത് കൊടുത്തു തീർക്കണം. അതു കഴിഞ്ഞേ അയാളുടെ സമ്പത്ത് ഭാഗിക്കാൻ പാടുള്ളൂ. നബി (സ) പറഞ്ഞതായി അബൂഹുറൈറ (റ) ഉദ്ധരിക്കുന്നു. نفس المؤمن مُعلَّقة بدَيْنِه حتى يُقْضَى عنه  (أحمد، ابن ماجه، الترمذي)(വിശ്വാസിയുടെ ആത്മാവ് അവന്റെ കടം വീട്ടുംവരെ അതുമായി കെട്ടുപിണഞ്ഞിരിക്കും.)',
      imagePath: 'assets/images/recitingquran.png',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final PageController _pageController = PageController();
  int _currentIndex = 0;

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
    // Get screen size
    final Size screenSize = MediaQuery.of(context).size;
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

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
            'മരണാസന്ന കർമ്മങ്ങൾ',
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
                _buildBottomIndicator(),
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: _prayerSteps.length,
                    itemBuilder: (context, index) {
                      return _buildPrayerStepPage(
                          _prayerSteps[index], screenSize, isPortrait);
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

            // Navigation buttons
            Positioned(
              left: 0,
              right: 0,
              bottom: 20,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (_currentIndex > 0)
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: ColorClass.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: _goToPreviousPage,
                          icon: Icon(
                            Icons.arrow_back,
                            color: ColorClass.primaryColor,
                            size: 32,
                          ),
                          padding: EdgeInsets.zero,
                        ),
                      )
                    else
                      const SizedBox(width: 56),
                    if (_currentIndex < _prayerSteps.length - 1)
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: ColorClass.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: _goToNextPage,
                          icon: Icon(
                            Icons.arrow_forward,
                            color: ColorClass.primaryColor,
                            size: 32,
                          ),
                          padding: EdgeInsets.zero,
                        ),
                      )
                    else
                      const SizedBox(width: 56),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrayerStepPage(
      Mayyithmodel step, Size screenSize, bool isPortrait) {
    // Calculate responsive dimensions
    final double imageHeight = isPortrait
        ? screenSize.height * 0.35 // 35% of screen height in portrait
        : screenSize.height * 0.5; // 50% of screen height in landscape

    final double horizontalPadding =
        screenSize.width * 0.04; // 4% of screen width
    final double verticalPadding =
        screenSize.height * 0.02; // 2% of screen height

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Container
          Container(
            width: double.infinity,
            height: imageHeight,
            margin: EdgeInsets.all(horizontalPadding),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                step.imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),

          // Title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Text(
              step.title,
              style: GoogleFonts.anekMalayalam(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // Description
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
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
        ],
      ),
    );
  }

  Widget _buildBottomIndicator() {
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
}
