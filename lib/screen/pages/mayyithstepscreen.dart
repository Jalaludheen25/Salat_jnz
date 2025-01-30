import 'package:flutter/material.dart';
import 'package:salat_al_janaza/constants/textstyleclass.dart';
import 'package:salat_al_janaza/model/Mayyithmodel.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Mayyithstepscreen extends StatefulWidget {
  const Mayyithstepscreen({Key? key}) : super(key: key);

  @override
  _MayyithstepscreenState createState() => _MayyithstepscreenState();
}

class _MayyithstepscreenState extends State<Mayyithstepscreen> {
  // Data model for prayer steps remains the same
  final List<Mayyithmodel> _prayerSteps = [
     Mayyithmodel(
      title: 'മരണാസന്നനെ കിടത്തല്‍:',
      description: 'മൂന്ന് രൂപങ്ങളില്‍ ഇത്തരം രോഗികളെ കിട ത്താം. ഒന്ന്, തല വടക്കോട്ടും കാല് തെക്കോട്ടും മുഖം ഖിബ്ലയിലേക്കുമായി വലത് ഭാഗത്തിന്‍റെ മേല്‍ ചെരിച്ച് കിടത്തുക. രണ്ട്, തല തെക്കോട്ടും കാല് വടക്കോട്ടും മുഖം ഖിബ്ലയിലേക്കുമായി ഇടതുഭാഗത്തിന്മേല്‍ ചെരിച്ച് കിടത്തുക. മൂന്ന്, മേല്‍ പറഞ്ഞ രണ്ട് രൂപത്തിലും സാധിക്കാതെ വന്നാല്‍, കാല് ഖിബ്ലയുടെ ഭാഗത്തേക്കും തല എതിര്‍ ദിശയിലേക്കും മുഖം ഖിബ്ലയിലേക്കും ആകും വിധം മലര്‍ത്തിക്കിടത്തുക. മുഖം ഖിബ്ലയിലേക്കാകാന്‍ വേണ്ടി തലയുടെ അടിഭാഗത്ത് തലയിണയോ മറ്റോ വച്ച് അല്‍പം ഉയര്‍ത്തണം. സാധാരണ ജനങ്ങള്‍ ചെയ്തു വരുന്നത് ഈ രൂപത്തിലാണെന്ന് ഇമാം നവവി(റ) ശര്‍ഹുല്‍ മുഹദ്ദബില്‍ രേഖപ്പെടുത്തുന്നു.',

      imagePath: 'assets/images/patient man.jpeg',
      
    ),
      
    Mayyithmodel(
      title: 'കലിമ ചൊല്ലിക്കൊടുക്കല്‍:',
      description: 'മരണം ആസന്നമായവര്‍ക്ക് കലിമ ചൊല്ലിക്കൊടുക്കല്‍ സുന്നത്താണ്. ‘മരണം ആസന്നമായവര്‍ക്ക്  നിങ്ങള്‍ ലാഇലാഹ ഇല്ലല്ലാഹു ചൊല്ലിക്കൊടുക്കുക’ (മുസ്ലിം) എന്ന് ഹദീസില്‍ കാണാം. അവസാനം ഉച്ചരിക്കുന്ന വാക്ക് ലാ ഇലാഹ ഇല്ലല്ലാഹു എന്നാകാന്‍ വേണ്ടി രോഗിയെ ശഹാദത്ത് ഓര്‍മിപ്പിക്കണമെന്നാണ് ഹദീസിന്‍റെ താല്‍പര്യം. ഒരാളുടെ അവസാന വാക്ക് ലാഇലാഹ ഇല്ലല്ലാഹ് എന്നായവന്‍ സ്വര്‍ഗത്തില്‍ പ്രവേ ശിക്കുമെന്ന് ഹദീസ്. ഈ രൂപത്തില്‍ കിടത്തുന്നതിനോടൊപ്പമാണ് കലിമ ചൊല്ലിക്കൊടുക്കേണ്ടത്. അതിനു സാധ്യമല്ലെങ്കില്‍ കിടത്തുന്നതിന് മുമ്പ് ചൊല്ലി കൊടുക്കണം. എന്നിട്ടും ചൊല്ലുന്നില്ലങ്കില്‍ ‘നീ ചൊല്ലൂ’ എന്ന് പറഞ്ഞ് നിര്‍ബന്ധിക്കരുത്. മരണത്തിന്‍റെ  അതിഭയാനക രംഗങ്ങളിലൂടെ കടന്നുപോകുന്ന വ്യക്തിയെ നിര്‍ബന്ധിക്കുന്നത് അനാവശ്യമായ വല്ലതും പറയാന്‍ നിമിത്തമായേക്കാം. ഒരു പ്രാവശ്യം ചൊല്ലിയതിനു ശേഷം മറ്റു വല്ലതും സംസാരിച്ചാല്‍ മാത്രം വീണ്ടും ചൊല്ലിക്കൊടുക്കുക. ആ സംസാരിച്ചത് ദിക്റാണെങ്കില്‍ പോലും വീണ്ടും ചെല്ലിക്കൊടുക്കണം. ശത്രുത മൂലമോ അനന്തരാവകാശം ലഭിക്കാനോ വേണ്ടി താന്‍ വേഗത്തില്‍ മരിക്കണമെന്നാഗ്രഹിക്കുന്നതു കൊണ്ടാണ് ചൊല്ലിക്കൊടുക്കുന്നതെന്ന തെറ്റിദ്ധാരണ വരാന്‍ സാധ്യതയുള്ളവര്‍ ചെയ്യരുത്.',
      
      imagePath: 'assets/images/recitingman.png',
      
     
    ),
    Mayyithmodel(
      title: 'വെള്ളം കൊടുക്കല്‍:',
      description: 'ആത്മാവ് പുറപ്പെടുമ്പോള്‍ ശക്തമായ ദാഹം അനുഭവപ്പെടുന്നതിനാല്‍ മരണം ആസന്നനായ വ്യക്തിക്ക് ആവശ്യമെങ്കില്‍ വെള്ളം കൊടുക്കല്‍ നിര്‍ബന്ധവും അല്ലെങ്കില്‍ സുന്നത്തുമാണ്. മരണം ആസന്നനായ വ്യക്തിയുടെ മുന്നില്‍ പിശാച് പ്രത്യക്ഷപ്പെട്ട് ഞാനല്ലാതെ ആരാധ്യനില്ലെന്ന് പറഞ്ഞാല്‍ വെള്ളം തരാമെന്ന് പറയുമെന്ന് ഹദീസുകളില്‍ കാണാം.',
     
      
      imagePath: 'assets/images/Giving water.png',
      
    
    ),
    Mayyithmodel(
      title: 'ഖുര്‍ആന്‍ പാരായണം:',
      description: 'മരണാസന്നന്‍റെ അരികില്‍ വച്ച് ഏറ്റവും ഉത്തമമായ ഖുര്‍ആന്‍ പാരായണം നിര്‍വഹിക്കാന്‍ നബി(സ്വ) കല്‍പിച്ചിട്ടുണ്ട്. യാസീന്‍, റഅ്ദ് സൂറത്തുകള്‍ ഓതല്‍ പ്രത്യേകം സുന്നത്താണ്. റഅ്ദ് പാരായണം ചെയ്യുന്നത് ആത്മാവ് പ്രയാസ രഹിതമായി പുറത്തുവരാന്‍ സഹായിക്കുമെന്ന് പണ്ഡിതന്മാര്‍ വിശദീകരിക്കുന്നു.മരണാസന്നനു സമീപം യാസീന്‍ പാരായണം ചെയ്യുന്നതിന് ധാരാളം ശ്രേഷ്ഠതകളുണ്ട്. നബി(സ്വ) പറഞ്ഞു: ‘മൗതാ(മരണാസന്നനും മയ്യിത്തും)യുടെ സമീപം നിങ്ങള്‍ സൂറത്ത് യാസീന്‍ പാരായണം ചെയ്യുക.’ അന്ത്യനാളിലെ അവസ്ഥക ളും ഭയാനകമായ സംഭവങ്ങളും ഐഹിക ലോകത്തിന്‍റെ മാറ്റങ്ങളും സ്വര്‍ഗീയ അനുഗ്ര ഹങ്ങളും നരക ശിക്ഷയുമെല്ലാം പരാമര്‍ശിക്കുന്ന സൂറത്താണ് യാസീന്‍. മരണാസന്നന്‍റെ സമീപം യാസീന്‍ പാരായണം ചെയ്യുമ്പോള്‍ ഈമാനില്‍ ഉറച്ച് നില്‍ക്കാന്‍ നിര്‍ബന്ധിക്കുന്ന ആ അവസ്ഥകള്‍ അവന്‍ ഓര്‍മിക്കുമല്ലോ. യാസീന്‍ പാരായണം ചെയ്യപ്പെടുന്നതിലെ യുക്തി അതാണ്. ആത്മാവ് പുറപ്പെടുന്നത് സുഗമമാക്കുന്ന റഅ്ദ് പാരായണം ചെയ്യലും സുന്നത്താണ് (തുഹ്ഫ).മരണാസന്നന്‍റെ സമീപം യാസീന്‍ ഉച്ച ത്തില്‍ പാരായണം ചെയ്യല്‍ സുന്നത്താണെന്ന് ഇതില്‍ നിന്ന് മനസ്സിലാക്കാം (ശര്‍വാനി).',
      
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
    final bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'മയ്യിത്ത് പരിപാലനം',
          style: TextStyleClass.primaryFontMalayalam(
            screenSize.width * 0.045, // Responsive font size
            Colors.white,
            FontWeight.w500,
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
                return _buildPrayerStepPage(_prayerSteps[index], screenSize, isPortrait);
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

  Widget _buildPrayerStepPage(Mayyithmodel step, Size screenSize, bool isPortrait) {
    // Calculate responsive dimensions
    final double imageHeight = isPortrait 
        ? screenSize.height * 0.35  // 35% of screen height in portrait
        : screenSize.height * 0.5;  // 50% of screen height in landscape
    
    final double horizontalPadding = screenSize.width * 0.04; // 4% of screen width
    final double verticalPadding = screenSize.height * 0.02;  // 2% of screen height

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
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    step.imagePath,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ),
          
          // Title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Text(
              step.title,
              style: TextStyleClass.primaryFontMalayalam(
                screenSize.width * 0.045, // Responsive font size
                Colors.white,
                FontWeight.w500,
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
              style: TextStyleClass.primaryFontMalayalam(
                screenSize.width * 0.04, // Responsive font size
                Colors.grey,
                FontWeight.w500,
              ),
            ),
          ),
        ],
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

}