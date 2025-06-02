import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/screen/mayyith_samskaranam/deadbodyverb.dart';
import 'package:janaza_guide/screen/mayyith_samskaranam/deadbodystepscreen.dart';

class MayyithScreen extends StatefulWidget {
  const MayyithScreen({super.key});

  @override
  State<MayyithScreen> createState() => _MayyithScreenState();
}

class _MayyithScreenState extends State<MayyithScreen> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    // Initialize controllers for each expandable panel
    _controllers = List.generate(4, (_) => ExpansionTileController());
    // Set the first section to be expanded by default
    _expandedIndex = 0;
    // Schedule the expansion after the build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _controllers[0].expand();
      }
    });
  }

  void _handleExpansion(int index, bool isExpanded) {
    setState(() {
      if (isExpanded) {
        if (_expandedIndex != null && _expandedIndex != index) {
          _controllers[_expandedIndex!].collapse();
        }
        _expandedIndex = index;
      } else if (_expandedIndex == index) {
        _expandedIndex = null;
      }
    });
  }

  bool get isPortrait =>
      MediaQuery.of(context).orientation == Orientation.portrait;

  void _showMayyithStepsBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: ColorClass.transparent,
      builder: (context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {}, // Prevent taps from closing the bottom sheet
          child: DraggableScrollableSheet(
            initialChildSize: 0.95,
            minChildSize: 0.5,
            maxChildSize: 1.0,
            builder: (_, controller) => Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: const Mayyithstepscreen(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void _showDeadBodyVerbBottomSheet() {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     backgroundColor: ColorClass.transparent,
  //     builder: (context) => GestureDetector(
  //       behavior: HitTestBehavior.opaque,
  //       onTap: () => Navigator.of(context).pop(),
  //       child: GestureDetector(
  //         onTap: () {}, // Prevent taps from closing the bottom sheet
  //         child: DraggableScrollableSheet(
  //           initialChildSize: 0.95,
  //           minChildSize: 0.5,
  //           maxChildSize: 1.0,
  //           builder: (_, controller) => Stack(
  //             children: [
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 70),
  //                 child: const Deadbodyverbscreen(),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // Check if this is being shown in a bottom sheet
    final bool isInBottomSheet = ModalRoute.of(context)?.settings.name == null;

    return Scaffold(
      backgroundColor: ColorClass.white,
      appBar: AppBar(
        backgroundColor:
            isInBottomSheet ? Colors.transparent : ColorClass.secondaryColor,
        elevation: isInBottomSheet ? 0 : 4,
        leading: IconButton(
          icon: Icon(isInBottomSheet ? Icons.close : Icons.arrow_back,
              color: ColorClass.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'മയ്യിത്ത് സംസ്കരണം',
          style: GoogleFonts.anekMalayalam(
            fontSize: 20,
            color: ColorClass.primaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Prayer Icon Card
              // Prayer Icon Card with orientation awareness
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    ImageClass.kalima,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'മയ്യിത്ത് പരിപാലനം:',
                style: GoogleFonts.anekMalayalam(
                  fontSize: 18,
                  color: ColorClass.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              // Improved Prayer Steps Button
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Mayyithstepscreen(),
                    ),
                  );
                },
                child: BasicInitialNeedsWidget(
                  title: 'മരണാസന്നനുമായി ബന്ധപ്പെട്ട് ശ്രദ്ധിക്കേണ്ടത്',
                ),
              ),
              const SizedBox(height: 20),
              ExpandableInfoWidget(
                title: 'മരിച്ച് കഴിഞ്ഞാല്‍ ചെയ്യേണ്ട 7 കാര്യങ്ങള്‍',
                content: '1. കണ്ണ് അടച്ചു കൊടുക്കുക.\n2. താടിയും തലയും കെട്ടുക\n3. അവയവങ്ങള്‍ മടക്കി നിവര്‍ത്തുക.\n4. ഉടുത്തിരുന്ന വസ്ത്രം മാറ്റി വേറെ ധരിപ്പിക്കുക.\n5. നേരിയ തുണികൊണ്ട് ആകെ മൂടുക.\n6. വയറിന്മേല്‍ എന്തെങ്കിലും വെക്കുക.\n7. ഖിബ്‌ലക്ക് അഭിമുഖമായി കിടത്തുക.)',
                controller: _controllers[0],
                isExpanded: _expandedIndex == 0,
                onExpansionChanged: (expanded) => _handleExpansion(0, expanded),
                index: 0,
              ),
               const SizedBox(height: 20),
              ExpandableInfoWidget(
                title: 'മരണവിവരം കേട്ടാൽ',
                content: 'ഒരാൾ മരിച്ചു എന്ന് കേട്ടാലും മറ്റു വിപത്തുകൾ ബാധിച്ചാലും إنا لله وإنا إليه راجعون എന്ന് പറയലും മരിച്ച ആൾക്കു വേണ്ടി പ്രാർത്ഥിക്കലും സുന്നത്താണ്. ഖുർആൻ പറയുന്നു:\nالَّذِينَ إِذَا أَصَابَتْهُمْ مُصِيبَةٌ قَالُوا إِنَّا لِلَّهِ وَإِنَّا إِلَيْهِ رَاجِعُونَ (البقرة)\n(വല്ല വിഷമവും ബാധിച്ചാൽ നാം അല്ലാഹുവിനടിമപ്പെട്ടവരും, അല്ലാഹുവിങ്കലേക്കു തന്നെ മടങ്ങുന്ന വരുമാണ്\' എന്നു പറയുന്നവരാണവർ.)',
                controller: _controllers[1],
                isExpanded: _expandedIndex == 1,
                onExpansionChanged: (expanded) => _handleExpansion(1, expanded),
                index: 1,
              ),
              const SizedBox(height: 20),
              ExpandableInfoWidget(
                title: 'മരണവൃത്താന്തം അറിയിക്കൽ',
                content: 'മരണവൃത്താന്തം ബന്ധുക്കളെയും സുഹൃത്തുക്കളെയും അറിയിക്കൽ നല്ലതാണ്. അവർക്കെല്ലാവർക്കും മയ്യിത്ത് സംസ്കരണത്തിൽ പങ്കുകൊള്ളാൻ സൗകര്യപ്പെടാനാണത്. എത്യോപ്യയിൽ നജാശി മരിച്ച വിവരം നബി (സ) സഹാബിമാരെ അറിയിക്കുകയും അദ്ദേഹത്തിന് വേണ്ടി അവരോടൊപ്പം മയ്യിത്ത് നമസ്കരിക്കുകയും ചെയ്തിട്ടുണ്ട്. സൈദുബ്നു ഹാരിഥ, ജഅ്ഫറുബ്നു അബീതാലിബ്, അബ്ദുല്ലാഹി ബ്നു റവാഹ (റ) എന്നിവർ യുദ്ധത്തിൽ ശഹീദായതിനെപ്പറ്റി നബി (സ) സഹാബിമാർക്ക് അപ്പപ്പോൾ വിവരം നൽകിക്കൊണ്ടിരുന്നു.',
                controller: _controllers[2],
                isExpanded: _expandedIndex == 2,
                onExpansionChanged: (expanded) => _handleExpansion(2, expanded),
                index: 2,
              ),
              const SizedBox(height: 20),
              ExpandableInfoWidget(
                title: 'മയ്യിത്തിന്റെ പേരിൽ അലമുറയിട്ട് വിലപിക്കൽ',
                content: 'മയ്യിത്തിന്റെ പേരിൽ അലമുറയിട്ട് വിലപിക്കുന്നത് നിഷിദ്ധമാണ്. ഒച്ചയും ബഹളവുമില്ലാതെ വിതുമ്പുകയും കണ്ണീരൊഴുക്കുകയും ചെയ്യുന്നത് തെറ്റല്ല. അത് മനുഷ്യസഹജമായ ദുഃഖത്തിന്റെ ലക്ഷണമാണ്. മകൻ ഇബ്രാഹീം മരിച്ചപ്പോഴും, സൈനബിന്റെ മകൾ ഉമൈമ മരിച്ചപ്പോഴും നബി (സ) കണ്ണീരൊഴുക്കി വിതുമ്പുകയുണ്ടായി.\n\nഎന്നാൽ മരിച്ചവരെച്ചൊല്ലി ഒച്ചവെച്ചു കരയുന്നതും മുടി അഴിച്ചിട്ടും മുഖത്തടിച്ചും വസ്ത്രം വലിച്ചുകീറിയും ദുഃഖം പ്രകടിപ്പിക്കുന്നതും അനുവദനീയമല്ല. അബൂമൂസൽ അശ്അരി (റ) പറഞ്ഞതായി ഉദ്ധരിക്കപ്പെടുന്നു.\nأنا بريئ ممن برئ منه رسول الله ﷺ إن رسول الله برئ من الصالقة والحالقة والشاقة (متفق عليه)\n(നബി (സ)ക്കു ബന്ധമില്ലാത്തവരുമായി എനിക്കും ബന്ധമില്ല. (മരിച്ചവരെച്ചൊല്ലി) ഒച്ചവെച്ചു കരയുന്നവരുമായും തലമുണ്ഡനം ചെയ്യുന്നവരുമായും മാറിടം മാന്തിക്കീറുന്നവരുമായും നബി(സ)ക്കു ബന്ധമില്ല.)',
                controller: _controllers[3],
                isExpanded: _expandedIndex == 3,
                onExpansionChanged: (expanded) => _handleExpansion(3, expanded),
                index: 3,
              ),
              const SizedBox(height: 20),
              // // Prayer Details
              // Text(
              //   "كُلُّ نَفْسٍ ذَائِقَةُ الْمَوْتِ ۗ وَإِنَّمَا تُوَفَّوْنَ أُجُورَكُمْ يَوْمَ الْقِيَامَةِ ۖ فَمَن زُحْزِحَ عَنِ النَّارِ وَأُدْخِلَ الْجَنَّةَ فَقَدْ فَازَ ۗ وَمَا الْحَيَاةُ الدُّنْيَا إِلَّا مَتَاعُ الْغُرُورِ ﴿١٨٥﴾എല്ലാ മനുഷ്യരും മരണം രുചിക്കുന്നവരാണ്. നിങ്ങളുടെ കര്‍മഫലമെല്ലാം ഉയിര്‍ത്തെഴുന്നേല്‍പുനാളില്‍ മാത്രമാണ് പൂര്‍ണമായും നിങ്ങള്‍ക്കു നല്‍കുക. അപ്പോള്‍ നരകത്തീയില്‍ നിന്നകറ്റപ്പെടുകയും സ്വര്‍ഗത്തില്‍ പ്രവേശിപ്പിക്കപ്പെടുകയും ചെയ്യുന്നവനാണ് വിജയംവരിച്ചവന്‍. ഐഹികജീവിതം ചതിക്കുന്ന ചരക്കല്ലാതൊന്നുമല്ല. ( 3:185)",
              //   style: GoogleFonts.anekMalayalam(
              //     fontSize: 18,
              //     color: ColorClass.primaryColor,
              //     fontWeight: FontWeight.w500,
              //   ),
              //   textAlign: TextAlign.left,
              // ),
              // SizedBox(height: 20),
              // Text(
              //   'മരണം ഉറപ്പിച്ചാല്‍ നിര്‍വഹിക്കേണ്ട പ്രധാന കര്‍മങ്ങള്‍ നോക്കാം.',
              //   style: GoogleFonts.anekMalayalam(
              //     fontSize: 18,
              //     color: ColorClass.primaryColor,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
              // const SizedBox(height: 20),
              // Improved Post-Death Actions Button
             
            ],
          ),
        ),
      ),
    );
  }
}

class BasicInitialNeedsWidget extends StatelessWidget {
  final String title;

  const BasicInitialNeedsWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: ColorClass.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 2),
            blurRadius: 6,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: ColorClass.primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.format_list_bulleted,
                  color: ColorClass.primaryColor,
                  size: 20,
                ),
              ),
              SizedBox(width: 12),
              SizedBox(
                width: 230,
                child: Text(
                    title,
                    style: GoogleFonts.anekMalayalam(
                    fontSize: 16,
                    color: ColorClass.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Icon(
            Icons.chevron_right,
            color: ColorClass.primaryColor,
            size: 24,
          ),
        ],
      ),
    );
  }
}

class ExpandableInfoWidget extends StatelessWidget {
  final String title;
  final String content;
  final ExpansionTileController controller;
  final bool isExpanded;
  final Function(bool) onExpansionChanged;
  final int index;

  const ExpandableInfoWidget({
    super.key,
    required this.title,
    required this.content,
    required this.controller,
    required this.isExpanded,
    required this.onExpansionChanged,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isExpanded ? const Color.fromARGB(255, 175, 145, 221).withOpacity(0.1) : ColorClass.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 2),
            blurRadius: 6,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          controller: controller,
          onExpansionChanged: onExpansionChanged,
          leading: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 188, 161, 231),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '${index + 1}',
                style: TextStyle(
                  color: isExpanded ? Colors.white : ColorClass.primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          title: Text(
            title,
            style: GoogleFonts.anekMalayalam(
              fontSize: 16,
              color: ColorClass.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: Icon(
            isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
            color: ColorClass.primaryColor,
            size: 24,
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                content,
                style: GoogleFonts.anekMalayalam(
                  fontSize: 16,
                  color: ColorClass.black,
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
