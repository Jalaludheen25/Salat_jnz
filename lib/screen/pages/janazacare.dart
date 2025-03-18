import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/model/janzacaremodel.dart';


class Janazacaredetails extends StatefulWidget {
  const Janazacaredetails({super.key});

  @override
  _JanazacaredetailsState createState() => _JanazacaredetailsState();
}

class _JanazacaredetailsState extends State<Janazacaredetails> {
  // Data model for burial steps
  final List<Janazacaremodel> _burialSteps = [
    Janazacaremodel(
      title: 'നമസ്കാരത്തിനു നേതൃത്വം നൽകേണ്ടതാരാണ്',
      description:
          'പിതാവ്, പിതാമഹൻ, മകൻ, മകന്റെ മകൻ, സഹോദരൻ, സഹോദര പുത്രൻ, പിതൃവ്യൻ, പിതൃവ്യപുത്രൻ എന്ന ക്രമമനുസരിച്ചാണ് മയ്യിത്ത് നമസ്കാരത്തിൽ നേതൃത്വം നൽകേണ്ടത് എന്നാണ് ഇമാം ശാഫിഈ (റ)യുടെ പക്ഷം.',
      imagePath: 'assets/images/imam.png',
    ),
   
    Janazacaremodel(
      title: 'ജനാസക്കൊപ്പം അരുതാത്ത കാര്യങ്ങൾ',
      description:
          '1. ശബ്ദമുയർത്തി ദിക്ർ ചൊല്ലുക, ഖുർആൻ ഓതുക, മുതലായവ ചെയ്യരുത്. ഖൈസുബ്നു ഉബ്ബാദ് (റ) പറഞ്ഞതായി ഇബ്നുൽ മുൻദിർ ഉദ്ധരിക്കുന്നു.\n\nكان أصحاب رسول الله ﷺﷺ يكرهون رفع الصوت عند ثلاث: عند الجنائز وعند الذكر وعند القتال\n(മൂന്ന് സന്ദർഭത്തിൽ ശബ്ദമുയർത്തുന്നതു നബി(സ)യുടെ സഹാബിമാർ വെറുത്തിരുന്നു. ജനാസയുടെ അരികിൽ, ദിക്ർ ചൊല്ലുമ്പോൾ, യുദ്ധത്തിൽ.)\n\n2. ജനാസ യോടൊപ്പം തീ കൊണ്ടു പോകരുത്. അതൊരു അനിസ്ലാമികാചാരമാണ് എന്നതാണ് കാരണം.\n\n3. ജനാസക്കൊപ്പം പോകുന്നവർ ജനാസ താഴെ വെയ്ക്കും മുമ്പ് ഇരിക്കരുത്.\n\n4. സ്ത്രീകൾ ജനാസയെ പിന്തുടരരുത്.',
      imagePath: 'assets/images/dont_with_janaza.png',
    ),
    Janazacaremodel(
      title: 'മയ്യിത്തിനെ ഖബറടക്കൽ',
      description:
          'മയ്യിത്തിനെ ഖബറടക്കൽ മുസ്ലിംകളുടെ സാമൂഹ്യബാധ്യതയാണ്. അതു രാത്രിയാവുന്നത് തെറ്റല്ല. നബി (സ)യുടെ കാലത്തും സ്വഹാബിമാരുടെ കാലത്തും പകലിലെന്നപോലെ രാത്രിയും മയ്യിത്ത് ഖബറടക്കിയിരുന്നു. അലി(റ) ഫാത്വിമ(റ)യെ രാത്രിയാണ് ഖബറടക്കിയത്. അബൂബകർ, ഉസ്മാൻ ഇബ്നു അഫ്ഫാൻ, ആഇശ, ഇബ്നു മസ്ഊദ് എന്നിവരെയൊക്കെ രാത്രിയാണ് മറമാടിയത്.\n\nസൂര്യന്റെ ഉദയാസ്തമയ സമയങ്ങളിലും നട്ടുച്ചനേരത്തും മയ്യിത്തിന് വല്ല മാറ്റവും വരുമെന്നുണ്ടെങ്കിൽ ഖബറടക്കാവുന്നതാണ്. എന്നാൽ കാരണമില്ലാതെ ഈ സമയങ്ങളിൽ മറമാടുന്നത് കറാഹത്താണ്.',
      imagePath: 'assets/images/burial.png',
    ),
    Janazacaremodel(
      title: 'ഖബർ ആഴം കൂട്ടൽ',
      description:
          'ചീഞ്ഞളിയുമ്പോൾ ദുർഗന്ധം പുറത്തു വരാതെയും, വന്യജന്തുക്കൾ മാന്തി പുറത്തിടാതെയും ശരീരം ഭൂമിയിൽ മറവ് ചെയ്യുക. അതാണ് ഖബറടക്കം കൊണ്ടുദ്ദേശിക്കുന്നത്. ഖബർ ആഴം കൂട്ടുന്നതു നല്ലതാണ്.\n\nഹിശാമുബ്നു ആമിർ (റ) പറയുന്നു:\nشكونا إلى رسول الله يوم أحد فقلنا : يا رسول الله الحفر علينا لكل إنسان شدید. فقال رسول الله وادفنوا الاثنين والثلاثة في قبر واحد. فقالوا فمن نقدم يا رسول الله ؟ قال : قدموا أكثرهم قرآنا وكان أبي ثالث ثلاثة في قبر واحد (النسائي والترمذي)',
      imagePath: 'assets/images/grave_depth.png',
    ),
    Janazacaremodel(
      title: '"തഅ്സിയത്ത്"',
      description:
          'മരിച്ചതു അമുസ്ലിമാണങ്കിൽ പോലും പരേതന്റെ സന്തപ്ത കുടുംബത്തെ സമാശ്വസിപ്പിക്കൽ സുന്നത്താണ്. കുടുംബത്തിലെ പുരുഷന്മാർ, സ്ത്രീകൾ, വലിയവർ, കുട്ടികൾ എന്നീ വ്യത്യാസമില്ലാതെ എല്ലാവരെയും ആശ്വസിപ്പിക്കാവുന്നതാണ്. അത് മയ്യിത്ത് സംസ്കരിക്കുന്നതിനു മുമ്പും ശേഷവും ആകാം. സാധാരണഗതിയിൽ മൂന്നുദിവസം വരെയാണ് "തഅ്സിയത്തിന്റെ സമയം. ഒരാൾ യാത്രയിലായതിനാലോ മറ്റോ അതിനു സാധിച്ചില്ലെങ്കിൽ മൂന്നുദിവസം കഴിഞ്ഞും അതാകാം.\n\nആശ്വാസം പകരുന്ന, ക്ഷമിക്കാനും സഹിക്കാനും പ്രേരിപ്പിക്കുന്ന വാക്കുകൾ ഏതും തഅ്സിയത്തിൽ ഉപയോഗിക്കാവുന്നതാണ്. ആശ്വാസവാക്യമായി പണ്ഡിതന്മാരിൽ നിന്ന് ഇപ്രകാരം ഉദ്ധരിക്കപ്പെട്ടിട്ടുണ്ട്.',
      imagePath: 'assets/images/condolence.png',
    ),
    Janazacaremodel(
      title: 'ഖബർ സന്ദർശനം',
      description:
          'ഖബർ സന്ദർശനം പുരുഷന്മാർക്കു സുന്നത്താണ്. ഖബറിനടുത്ത് ചെല്ലുക, ഖബർവാസിക്കു സലാം ചൊല്ലുക, അയാളുടെ പാപമോചനത്തിനായി അല്ലാഹുവോട് പ്രാർത്ഥിക്കുക ഇത്രയുമാണ് ഖബർ സന്ദർശനം കൊണ്ടു ഉദ്ദേശിച്ചിട്ടുള്ളത്. സന്ദർശകന് പരലോകബോധം വർധിക്കാൻ അതു കാരണമാകും.\n\nഖബർ സന്ദർശനവേളയിൽ എന്തു പറയണമെന്ന് താഴെ ഹദീഥുകൾ വ്യക്തമാക്കുന്നു.\n1) ബുറൈദ (റ) പറയുന്നു:\nكان النبي ﷺﷺ يعلمهم إذا خرجوا إلى المقابر أن يقول قائلهم: السلام عليكم أهل الديار من المؤمنين والمسلمين وإنا إن شاء الله بكم لاحقون. أنتم فرطنا ونحن لكم تبع ونسأل الله لنا ولكم العافية (أحمد، مسلم)',
      imagePath: 'assets/images/grave_visit.png',
    ),
    Janazacaremodel(
      title: 'മയ്യിത്തിന് പ്രയോജനം ചെയ്യുന്ന കർമങ്ങൾ',
      description:
          'ഒരു മുസ്ലിം ജീവിതകാലത്ത് ചെയ്ത ഏതു സൽകർമ്മവും മരണാനന്തരം അയാൾക്ക് പ്രയോജനം ചെയ്യും. എന്നാൽ സ്ഥായിയായി നില നിൽക്കുന്നതും തുടർന്നും ഫലം കിട്ടുന്നതുമായ മൂന്നു കാര്യങ്ങളുണ്ട്.\n\nസ്ഥായിയായ ദാനം, പ്രയോജനപ്രദമായ വിജ്ഞാനം, തനിക്കുവേണ്ടി പ്രാർത്ഥിക്കുന്ന നല്ല സന്താനം എന്നിവയാണത്. നബി (സ) പറഞ്ഞതായി അബൂഹുറൈറ (റ) ഉദ്ധരിക്കുന്നു.\n\nإذا مات ابن آدم انقطع عمله إلا من ثلاث صدقة جارية أو علم ينتفع به أو ولد صالح يدعوله (مسلم)',
      imagePath: 'assets/images/good_deeds.png',
    ),
  ];

  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final Size screenSize = MediaQuery.of(context).size;
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: ColorClass.bottomsheet1,
      appBar: AppBar(
        backgroundColor: ColorClass.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close, color: ColorClass.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'ജനാസനാന്തര കാര്യങ്ങൾ',
          style: GoogleFonts.anekMalayalam(
            color: ColorClass.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            _buildProgressIndicator(),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _burialSteps.length,
                itemBuilder: (context, index) {
                  return _buildBurialStepPage(
                      _burialSteps[index], screenSize, isPortrait);
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

  Widget _buildBurialStepPage(
      Janazacaremodel step, Size screenSize, bool isPortrait) {
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
              color: ColorClass.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                step.imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                    child: Icon(
                      Icons.image_not_supported,
                      color: ColorClass.grey,
                      size: 50,
                    ),
                  );
                },
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
                color: ColorClass.white,
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
                color: ColorClass.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          
          // Add bottom padding for better scrolling experience
          SizedBox(height: screenSize.height * 0.05),
        ],
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        color: ColorClass.bottomsheet1,
        boxShadow: [
          BoxShadow(
            color: ColorClass.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(_burialSteps.length * 2 - 1, (index) {
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
                    color: ColorClass.white,
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
                  : ColorClass.grey,
            );
          }
        }),
      ),
    );
  }
}