import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/screen/mayyith_samskaranam/deadbodystepscreen.dart';
import 'package:janaza_guide/provider/language_provider.dart';
import 'package:janaza_guide/widget/custom_header.dart';
import 'package:provider/provider.dart';

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
      appBar: const CustomHeader(
        showBackButton: true,
      ),
      body: Column(
        children: [
          // Screen Title
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            color: Colors.grey[50],
            child: Consumer<LanguageProvider>(
              builder: (context, langProvider, child) {
                return Text(
                  langProvider.t('mayyith.care_title'),
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: ColorClass.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                );
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    // Prayer Icon Card
                    // Prayer Icon Card with orientation awareness
                    Container(
                      width: 360,
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
                      child: Consumer<LanguageProvider>(
                        builder: (context, langProvider, child) {
                          return BasicInitialNeedsWidget(
                            title: langProvider.t('mayyith.steps_button'),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Consumer<LanguageProvider>(
                      builder: (context, langProvider, child) {
                        return ExpandableInfoWidget(
                          title: langProvider.t('mayyith.after_death_title'),
                          content:
                              langProvider.t('mayyith.after_death_content'),
                          controller: _controllers[0],
                          isExpanded: _expandedIndex == 0,
                          onExpansionChanged: (expanded) =>
                              _handleExpansion(0, expanded),
                          index: 0,
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    Consumer<LanguageProvider>(
                      builder: (context, langProvider, child) {
                        return ExpandableInfoWidget(
                          title: langProvider.t('mayyith.death_news_title'),
                          content: langProvider.t('mayyith.death_news_content'),
                          controller: _controllers[1],
                          isExpanded: _expandedIndex == 1,
                          onExpansionChanged: (expanded) =>
                              _handleExpansion(1, expanded),
                          index: 1,
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    Consumer<LanguageProvider>(
                      builder: (context, langProvider, child) {
                        return ExpandableInfoWidget(
                          title: langProvider
                              .t('mayyith.death_announcement_title'),
                          content: langProvider
                              .t('mayyith.death_announcement_content'),
                          controller: _controllers[2],
                          isExpanded: _expandedIndex == 2,
                          onExpansionChanged: (expanded) =>
                              _handleExpansion(2, expanded),
                          index: 2,
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    Consumer<LanguageProvider>(
                      builder: (context, langProvider, child) {
                        return ExpandableInfoWidget(
                          title: langProvider.t('mayyith.mourning_title'),
                          content: langProvider.t('mayyith.mourning_content'),
                          controller: _controllers[3],
                          isExpanded: _expandedIndex == 3,
                          onExpansionChanged: (expanded) =>
                              _handleExpansion(3, expanded),
                          index: 3,
                        );
                      },
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
          ),
        ],
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
        color: isExpanded
            ? const Color.fromARGB(255, 175, 145, 221).withOpacity(0.1)
            : ColorClass.white,
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
