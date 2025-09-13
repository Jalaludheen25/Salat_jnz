import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/salatjanazamodel.dart';

import 'package:janaza_guide/screen/salat_janaza/prayerstepscreen.dart';
import 'package:janaza_guide/screen/salat_janaza/samshaya_nivaranam.dart';
import 'package:janaza_guide/provider/language_provider.dart';
import 'package:janaza_guide/widget/custom_header.dart';
import 'package:provider/provider.dart';

class SalatAlJanazaScreen extends StatefulWidget {
  const SalatAlJanazaScreen({super.key});

  @override
  State<SalatAlJanazaScreen> createState() => _SalatAlJanazaScreenState();
}

class _SalatAlJanazaScreenState extends State<SalatAlJanazaScreen> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(7, (_) => ExpansionTileController());
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

  List<SalatJanazaModel> _getSalatSteps(LanguageProvider langProvider) {
    return [
      SalatJanazaModel(
        title: langProvider.t('salat_janaza.social_obligation_title'),
        description: langProvider.t('salat_janaza.social_obligation_desc'),
        imagePath: ImageClass.salat,
        instructions: langProvider.t('salat_janaza.social_obligation_hadith'),
        arabicText: langProvider.t('salat_janaza.social_obligation_arabic'),
        translation:
            langProvider.t('salat_janaza.social_obligation_translation'),
      ),
      // SalatJanazaModel(
      //   title: langProvider.t('salat_janaza.reward_importance_title'),
      //   description: langProvider.t('salat_janaza.reward_importance_desc'),
      //   imagePath: ImageClass.salat,
      //   instructions: langProvider.t('salat_janaza.reward_importance_hadith'),
      //   arabicText: langProvider.t('salat_janaza.reward_importance_arabic'),
      //   translation:
      //       langProvider.t('salat_janaza.reward_importance_translation'),
      // ),
      // SalatJanazaModel(
      //   title: langProvider.t('salat_janaza.mandatory_elements_title'),
      //   description: langProvider.t('salat_janaza.mandatory_elements_desc'),
      //   imagePath: ImageClass.salat,
      //   instructions: langProvider.t('salat_janaza.mandatory_elements_list'),
      // ),
      // SalatJanazaModel(
      //   title: langProvider.t('salat_janaza.four_takbir_title'),
      //   description: '',
      //   imagePath: ImageClass.salat,
      //   instructions: langProvider.t('salat_janaza.four_takbir_hadith'),
      //   arabicText: langProvider.t('salat_janaza.four_takbir_arabic'),
      //   translation: langProvider.t('salat_janaza.four_takbir_translation'),
      // ),
      // SalatJanazaModel(
      //   title: langProvider.t('salat_janaza.prayer_method_title'),
      //   description: '',
      //   imagePath: ImageClass.salat,
      //   instructions: langProvider.t('salat_janaza.prayer_method_hadith'),
      //   arabicText: langProvider.t('salat_janaza.prayer_method_arabic'),
      //   translation: langProvider.t('salat_janaza.prayer_method_translation'),
      // ),
      // SalatJanazaModel(
      //   title: langProvider.t('salat_janaza.sincere_prayer_title'),
      //   description: langProvider.t('salat_janaza.sincere_prayer_desc'),
      //   imagePath: ImageClass.salat,
      //   instructions: langProvider.t('salat_janaza.sincere_prayer_hadith'),
      //   arabicText: langProvider.t('salat_janaza.sincere_prayer_arabic'),
      //   translation: langProvider.t('salat_janaza.sincere_prayer_translation'),
      // ),
      SalatJanazaModel(
        title: langProvider.t('salat_janaza.leadership_title'),
        description: langProvider.t('salat_janaza.leadership_desc'),
        imagePath: ImageClass.salat,
        instructions: langProvider.t('salat_janaza.leadership_list'),
        arabicText: '',
        translation: '',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final bool isInBottomSheet = ModalRoute.of(context)?.settings.name == null;

    return Scaffold(
      backgroundColor: ColorClass.white,
      appBar: const CustomHeader(
        showBackButton: true,
      ),
      body: Consumer<LanguageProvider>(
        builder: (context, langProvider, child) {
          final salatSteps = _getSalatSteps(langProvider);

          return SingleChildScrollView(
            child: Column(
              children: [
                // Screen Title
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.grey[50],
                  child: Text(
                    langProvider.t('salat_janaza.title'),
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: ColorClass.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        ImageClass.salat,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                // Navigation buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const PrayerStepsSliderView(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
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
                                      color: ColorClass.primaryColor
                                          .withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(
                                      Icons.format_list_bulleted,
                                      color: ColorClass.primaryColor,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    langProvider.t('salat_janaza.prayer_steps'),
                                    style: GoogleFonts.anekMalayalam(
                                      fontSize: 18,
                                      color: ColorClass.primaryColor,
                                      fontWeight: FontWeight.w600,
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
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SamshayaNivaranam(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
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
                                      color: ColorClass.primaryColor
                                          .withOpacity(0.1),
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
                                    width: 200,
                                    child: Text(
                                      langProvider.t('salat_janaza.faq'),
                                      style: GoogleFonts.anekMalayalam(
                                        fontSize: 18,
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
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                // Expandable content sections
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(16),
                  itemCount: salatSteps.length,
                  itemBuilder: (context, index) {
                    final step = salatSteps[index];
                    final isExpanded = _expandedIndex == index;

                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            color: isExpanded
                                ? ColorClass.primaryColor.withOpacity(0.1)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: ColorClass.primaryColor.withOpacity(0.2),
                              width: 1,
                            ),
                          ),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              dividerColor: Colors.transparent,
                            ),
                            child: ExpansionTile(
                              controller: _controllers[index],
                              onExpansionChanged: (expanded) =>
                                  _handleExpansion(index, expanded),
                              leading: Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 213, 199, 235),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    '${index + 1}',
                                    style: TextStyle(
                                      color: isExpanded
                                          ? Colors.white
                                          : ColorClass.primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              title: SizedBox(
                                width: 220,
                                child: Text(
                                  step.title,
                                  style: GoogleFonts.anekMalayalam(
                                    fontSize: 16,
                                    color: ColorClass.primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              trailing: Icon(
                                isExpanded
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: ColorClass.primaryColor,
                                size: 24,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (step.description.isNotEmpty) ...[
                                        Text(
                                          step.description,
                                          style: GoogleFonts.anekMalayalam(
                                            fontSize: 16,
                                            color: ColorClass.black,
                                            height: 1.5,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                      ],
                                      if (step.instructions.isNotEmpty) ...[
                                        Text(
                                          step.instructions,
                                          style: GoogleFonts.anekMalayalam(
                                            fontSize: 16,
                                            color: ColorClass.black,
                                            height: 1.5,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                      ],
                                      if (step.arabicText != null &&
                                          step.arabicText!.isNotEmpty) ...[
                                        Text(
                                          step.arabicText!,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            height: 1.5,
                                            fontFamily: 'Amiri',
                                          ),
                                          textDirection: TextDirection.rtl,
                                        ),
                                        const SizedBox(height: 16),
                                      ],
                                      if (step.translation != null &&
                                          step.translation!.isNotEmpty)
                                        Text(
                                          step.translation!,
                                          style: GoogleFonts.anekMalayalam(
                                            fontSize: 16,
                                            color: ColorClass.black,
                                            height: 1.5,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
