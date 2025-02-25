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
      title: 'മരണാസന്നനെ കിടത്തല്‍:',
      description:
          'മൂന്ന് രൂപങ്ങളില്‍ ഇത്തരം രോഗികളെ കിടത്താം. ഒന്ന്, തല വടക്കോട്ടും കാല് തെക്കോട്ടും മുഖം ഖിബ്ലയിലേക്കുമായി വലത് ഭാഗത്തിന്‍റെ മേല്‍ ചെരിച്ച് കിടത്തുക. രണ്ട്, തല തെക്കോട്ടും കാല് വടക്കോട്ടും മുഖം ഖിബ്ലയിലേക്കുമായി ഇടതുഭാഗത്തിന്മേല്‍ ചെരിച്ച് കിടത്തുക. മൂന്ന്, മേല്‍ പറഞ്ഞ രണ്ട് രൂപത്തിലും സാധിക്കാതെ വന്നാല്‍, കാല് ഖിബ്ലയുടെ ഭാഗത്തേക്കും തല എതിര്‍ ദിശയിലേക്കും മുഖം ഖിബ്ലയിലേക്കും ആകും വിധം മലര്‍ത്തിക്കിടത്തുക. മുഖം ഖിബ്ലയിലേക്കാകാന്‍ വേണ്ടി തലയുടെ അടിഭാഗത്ത് തലയിണയോ മറ്റോ വച്ച് അല്‍പം ഉയര്‍ത്തണം. സാധാരണ ജനങ്ങള്‍ ചെയ്തു വരുന്നത് ഈ രൂപത്തിലാണെന്ന് ഇമാം നവവി(റ) ശര്‍ഹുല്‍ മുഹദ്ദബില്‍ രേഖപ്പെടുത്തുന്നു.',
      imagePath: 'assets/images/patent man.png',
    ),
    Mayyithmodel(
      title: 'കലിമ ചൊല്ലിക്കൊടുക്കല്‍:',
      description:
          'മരണം ആസന്നമായവര്‍ക്ക് കലിമ ചൊല്ലിക്കൊടുക്കല്‍ സുന്നത്താണ്. മരണം ആസന്നമായവര്‍ക്ക്  നിങ്ങള്‍ ലാഇലാഹ ഇല്ലല്ലാഹു ചൊല്ലിക്കൊടുക്കുക മുസ്ലിം എന്ന് ഹദീസില്‍ കാണാം. അവസാനം ഉച്ചരിക്കുന്ന വാക്ക് ലാ ഇലാഹ ഇല്ലല്ലാഹു എന്നാകാന്‍ വേണ്ടി രോഗിയെ ശഹാദത്ത് ഓര്‍മിപ്പിക്കണമെന്നാണ് ഹദീസിന്‍റെ താല്‍പര്യം. ഒരാളുടെ അവസാന വാക്ക് ലാഇലാഹ ഇല്ലല്ലാഹ് എന്നായവന്‍ സ്വര്‍ഗത്തില്‍ പ്രവേ ശിക്കുമെന്ന് ഹദീസ്. ഈ രൂപത്തില്‍ കിടത്തുന്നതിനോടൊപ്പമാണ് കലിമ ചൊല്ലിക്കൊടുക്കേണ്ടത്. അതിനു സാധ്യമല്ലെങ്കില്‍ കിടത്തുന്നതിന് മുമ്പ് ചൊല്ലി കൊടുക്കണം. എന്നിട്ടും ചൊല്ലുന്നില്ലങ്കില്‍ നീ ചൊല്ലൂ എന്ന് പറഞ്ഞ് നിര്‍ബന്ധിക്കരുത്. മരണത്തിന്‍റെ  അതിഭയാനക രംഗങ്ങളിലൂടെ കടന്നുപോകുന്ന വ്യക്തിയെ നിര്‍ബന്ധിക്കുന്നത് അനാവശ്യമായ വല്ലതും പറയാന്‍ നിമിത്തമായേക്കാം. ഒരു പ്രാവശ്യം ചൊല്ലിയതിനു ശേഷം മറ്റു വല്ലതും സംസാരിച്ചാല്‍ മാത്രം വീണ്ടും ചൊല്ലിക്കൊടുക്കുക. ആ സംസാരിച്ചത് ദിക്റാണെങ്കില്‍ പോലും വീണ്ടും ചെല്ലിക്കൊടുക്കണം. ശത്രുത മൂലമോ അനന്തരാവകാശം ലഭിക്കാനോ വേണ്ടി താന്‍ വേഗത്തില്‍ മരിക്കണമെന്നാഗ്രഹിക്കുന്നതു കൊണ്ടാണ് ചൊല്ലിക്കൊടുക്കുന്നതെന്ന തെറ്റിദ്ധാരണ വരാന്‍ സാധ്യതയുള്ളവര്‍ ചെയ്യരുത്.',
      imagePath: 'assets/images/recitingman.png',
    ),
    Mayyithmodel(
      title: 'വെള്ളം കൊടുക്കല്‍:',
      description:
          'ആത്മാവ് പുറപ്പെടുമ്പോള്‍ ശക്തമായ ദാഹം അനുഭവപ്പെടുന്നതിനാല്‍ മരണം ആസന്നനായ വ്യക്തിക്ക് ആവശ്യമെങ്കില്‍ വെള്ളം കൊടുക്കല്‍ നിര്‍ബന്ധവും അല്ലെങ്കില്‍ സുന്നത്തുമാണ്.',
      imagePath: 'assets/images/Giving water.png',
    ),
    Mayyithmodel(
      title: 'ഖുര്‍ആന്‍ പാരായണം:',
      description:
          'മരണാസന്നന്‍റെ അരികില്‍ വച്ച് ഏറ്റവും ഉത്തമമായ ഖുര്‍ആന്‍ പാരായണം നിര്‍വഹിക്കാന്‍ നബി(സ്വ) കല്‍പിച്ചിട്ടുണ്ട്. യാസീന്‍, റഅ്ദ് സൂറത്തുകള്‍ ഓതല്‍ പ്രത്യേകം സുന്നത്താണ്. റഅ്ദ് പാരായണം ചെയ്യുന്നത് ആത്മാവ് പ്രയാസ രഹിതമായി പുറത്തുവരാന്‍ സഹായിക്കുമെന്ന് പണ്ഡിതന്മാര്‍ വിശദീകരിക്കുന്നു.മരണാസന്നനു സമീപം യാസീന്‍ പാരായണം ചെയ്യുന്നതിന് ധാരാളം ശ്രേഷ്ഠതകളുണ്ട്. നബി(സ്വ) പറഞ്ഞു: മൗതാ മരണാസന്നനും മയ്യിത്തും യുടെ സമീപം നിങ്ങള്‍ സൂറത്ത് യാസീന്‍ പാരായണം ചെയ്യുക. അന്ത്യനാളിലെ അവസ്ഥക ളും ഭയാനകമായ സംഭവങ്ങളും ഐഹിക ലോകത്തിന്‍റെ മാറ്റങ്ങളും സ്വര്‍ഗീയ അനുഗ്ര ഹങ്ങളും നരക ശിക്ഷയുമെല്ലാം പരാമര്‍ശിക്കുന്ന സൂറത്താണ് യാസീന്‍. മരണാസന്നന്‍റെ സമീപം യാസീന്‍ പാരായണം ചെയ്യുമ്പോള്‍ ഈമാനില്‍ ഉറച്ച് നില്‍ക്കാന്‍ നിര്‍ബന്ധിക്കുന്ന ആ അവസ്ഥകള്‍ അവന്‍ ഓര്‍മിക്കുമല്ലോ. യാസീന്‍ പാരായണം ചെയ്യപ്പെടുന്നതിലെ യുക്തി അതാണ്. ആത്മാവ് പുറപ്പെടുന്നത് സുഗമമാക്കുന്ന റഅ്ദ് പാരായണം ചെയ്യലും സുന്നത്താണ് (തുഹ്ഫ).മരണാസന്നന്‍റെ സമീപം യാസീന്‍ ഉച്ച ത്തില്‍ പാരായണം ചെയ്യല്‍ സുന്നത്താണെന്ന് ഇതില്‍ നിന്ന് മനസ്സിലാക്കാം (ശര്‍വാനി).',
      imagePath: 'assets/images/recitingquran.png',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final Size screenSize = MediaQuery.of(context).size;
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: ColorClass.primaryColor,
      body: Column(
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
                setState(() {});
              },
            ),
          ),
        ],
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
        color: ColorClass.primaryColor,
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
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
