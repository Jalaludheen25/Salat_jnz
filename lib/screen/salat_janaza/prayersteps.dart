import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/prayerstepsmodel.dart';
import 'package:janaza_guide/provider/language_provider.dart';
import 'package:janaza_guide/widget/custom_header.dart';
import 'package:provider/provider.dart';

class PrayerStepsScreen extends StatefulWidget {
  const PrayerStepsScreen({super.key});

  @override
  _PrayerStepsScreenState createState() => _PrayerStepsScreenState();
}

class _PrayerStepsScreenState extends State<PrayerStepsScreen> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(5, (_) => ExpansionTileController());
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

  List<PrayerStepsModel> _getPrayerSteps(LanguageProvider langProvider) {
    return [
      PrayerStepsModel(
        title: langProvider.t('prayer_steps.step1_title'),
        description: langProvider.t('prayer_steps.step1_desc'),
        imagePath: ImageClass.kalima,
      ),
      PrayerStepsModel(
        title: langProvider.t('prayer_steps.step2_title'),
        description: langProvider.t('prayer_steps.step2_desc'),
        imagePath: ImageClass.kalima,
        arabicText: langProvider.t('prayer_steps.durood_arabic'),
        translation: langProvider.t('prayer_steps.durood_translation'),
      ),
      PrayerStepsModel(
        title: langProvider.t('prayer_steps.step3_title'),
        description: langProvider.t('prayer_steps.step3_desc'),
        imagePath: ImageClass.kalima,
      ),
      PrayerStepsModel(
        title: langProvider.t('prayer_steps.step4_title'),
        description: langProvider.t('prayer_steps.step4_desc'),
        imagePath: ImageClass.kalima,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomHeader(
        showBackButton: true,
      ),
      body: Consumer<LanguageProvider>(
        builder: (context, langProvider, child) {
          final prayerSteps = _getPrayerSteps(langProvider);

          return Column(
            children: [
              // Screen Title
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                color: Colors.grey[50],
                child: Text(
                  langProvider.t('prayer_step_screen.title'),
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
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: prayerSteps.length,
                  itemBuilder: (context, index) {
                    final step = prayerSteps[index];
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
                              title: Row(
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 213, 199, 235),
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
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Text(
                                      step.title,
                                      style: GoogleFonts.anekMalayalam(
                                        fontSize: 16,
                                        color: ColorClass.primaryColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
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
              ),
            ],
          );
        },
      ),
    );
  }
}
