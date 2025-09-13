import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/janazasamskaranammodel.dart';
import 'package:janaza_guide/provider/language_provider.dart';
import 'package:janaza_guide/widget/custom_header.dart';
import 'package:provider/provider.dart';

class JanazaSamskaranam extends StatefulWidget {
  const JanazaSamskaranam({super.key});

  @override
  _JanazaSamskaranamState createState() => _JanazaSamskaranamState();
}

class _JanazaSamskaranamState extends State<JanazaSamskaranam> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;
  static const int _totalSteps = 10;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      _totalSteps,
      (_) => ExpansionTileController(),
    );
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

  List<JanazaSamskaranamModel> _getSamskaranamSteps(
      LanguageProvider langProvider) {
    return [
      JanazaSamskaranamModel(
        title: langProvider.t('janaza_samskaranam.step1_title'),
        description: langProvider.t('janaza_samskaranam.step1_desc'),
        arabicText: langProvider.t('janaza_samskaranam.step1_arabic'),
        translation: langProvider.t('janaza_samskaranam.step1_translation'),
        source: langProvider.t('janaza_samskaranam.step1_source'),
        imagePath: ImageClass.cremation,
      ),
      JanazaSamskaranamModel(
        title: langProvider.t('janaza_samskaranam.step2_title'),
        description: langProvider.t('janaza_samskaranam.step2_desc'),
        arabicText: langProvider.t('janaza_samskaranam.step2_arabic'),
        translation: langProvider.t('janaza_samskaranam.step2_translation'),
        source: langProvider.t('janaza_samskaranam.step2_source'),
        imagePath: ImageClass.cremation,
      ),
      JanazaSamskaranamModel(
        title: langProvider.t('janaza_samskaranam.step3_title'),
        description: langProvider.t('janaza_samskaranam.step3_desc'),
        arabicText: langProvider.t('janaza_samskaranam.step3_arabic'),
        translation: langProvider.t('janaza_samskaranam.step3_translation'),
        source: langProvider.t('janaza_samskaranam.step3_source'),
        imagePath: ImageClass.cremation,
      ),
      JanazaSamskaranamModel(
        title: langProvider.t('janaza_samskaranam.step4_title'),
        description: langProvider.t('janaza_samskaranam.step4_desc'),
        arabicText: langProvider.t('janaza_samskaranam.step4_arabic'),
        translation: langProvider.t('janaza_samskaranam.step4_translation'),
        source: langProvider.t('janaza_samskaranam.step4_source'),
        imagePath: ImageClass.cremation,
      ),
      JanazaSamskaranamModel(
        title: langProvider.t('janaza_samskaranam.step5_title'),
        description: langProvider.t('janaza_samskaranam.step5_desc'),
        arabicText: '',
        translation: '',
        source: langProvider.t('janaza_samskaranam.step5_source'),
        imagePath: ImageClass.cremation,
      ),
      JanazaSamskaranamModel(
        title: langProvider.t('janaza_samskaranam.step6_title'),
        description: langProvider.t('janaza_samskaranam.step6_desc'),
        arabicText: langProvider.t('janaza_samskaranam.step6_arabic'),
        translation: langProvider.t('janaza_samskaranam.step6_translation'),
        source: langProvider.t('janaza_samskaranam.step6_source'),
        imagePath: ImageClass.kabrKuzhikkunnu,
      ),
      JanazaSamskaranamModel(
        title: langProvider.t('janaza_samskaranam.step7_title'),
        description: langProvider.t('janaza_samskaranam.step7_desc'),
        arabicText: '',
        translation: '',
        source: langProvider.t('janaza_samskaranam.step7_source'),
        imagePath: ImageClass.cremation,
      ),
      JanazaSamskaranamModel(
        title: langProvider.t('janaza_samskaranam.step8_title'),
        description: langProvider.t('janaza_samskaranam.step8_desc'),
        arabicText: langProvider.t('janaza_samskaranam.step8_arabic'),
        translation: langProvider.t('janaza_samskaranam.step8_translation'),
        source: langProvider.t('janaza_samskaranam.step8_source'),
        imagePath: ImageClass.kabarZiyarath,
      ),
      JanazaSamskaranamModel(
        title: langProvider.t('janaza_samskaranam.step9_title'),
        description: langProvider.t('janaza_samskaranam.step9_desc'),
        arabicText: langProvider.t('janaza_samskaranam.step9_arabic'),
        translation: langProvider.t('janaza_samskaranam.step9_translation'),
        source: langProvider.t('janaza_samskaranam.step9_source'),
        imagePath: ImageClass.kabarZiyarath,
      ),
      JanazaSamskaranamModel(
        title: langProvider.t('janaza_samskaranam.step10_title'),
        description: langProvider.t('janaza_samskaranam.step10_desc'),
        arabicText: '',
        translation: '',
        source: '',
        imagePath: ImageClass.cremation,
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
          final samskaranamSteps = _getSamskaranamSteps(langProvider);

          return Column(
            children: [
              // Screen Title
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                color: Colors.grey[50],
                child: Text(
                  langProvider.t('janaza_samskaranam.title'),
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: ColorClass.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
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
                            ImageClass.cremation,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(16),
                        itemCount: samskaranamSteps.length,
                        itemBuilder: (context, index) {
                          final step = samskaranamSteps[index];
                          final isExpanded = _expandedIndex == index;

                          return Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 12),
                                decoration: BoxDecoration(
                                  color: isExpanded
                                      ? ColorClass.primaryColor
                                          .withValues(alpha: 0.1)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: ColorClass.primaryColor
                                        .withValues(alpha: 0.2),
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
                                    ),
                                    children: [
                                      if (step.imagePath.isNotEmpty)
                                        Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            child: Image.asset(
                                              step.imagePath,
                                              width: double.infinity,
                                              height: 200,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            if (step.source.isNotEmpty)
                                              Text(
                                                step.source,
                                                style:
                                                    GoogleFonts.anekMalayalam(
                                                  fontSize: 14,
                                                  color: ColorClass.black
                                                      .withValues(alpha: 0.6),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            const SizedBox(height: 8),
                                            Text(
                                              step.description,
                                              style: GoogleFonts.anekMalayalam(
                                                fontSize: 16,
                                                color: ColorClass.black,
                                                height: 1.5,
                                              ),
                                            ),
                                            if (step.arabicText.isNotEmpty) ...[
                                              const SizedBox(height: 16),
                                              Text(
                                                step.arabicText,
                                                textAlign: TextAlign.right,
                                                textDirection:
                                                    TextDirection.rtl,
                                                style:
                                                    GoogleFonts.notoSansArabic(
                                                  fontSize: 18,
                                                  height: 2.0,
                                                  color: ColorClass.black,
                                                ),
                                              ),
                                            ],
                                            if (step
                                                .translation.isNotEmpty) ...[
                                              const SizedBox(height: 16),
                                              Text(
                                                step.translation,
                                                style:
                                                    GoogleFonts.anekMalayalam(
                                                  fontSize: 16,
                                                  color: ColorClass.black,
                                                  height: 1.5,
                                                ),
                                              ),
                                            ],
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
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
