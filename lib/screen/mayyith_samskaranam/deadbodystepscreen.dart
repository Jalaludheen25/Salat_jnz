import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/mayyithmodel.dart';
import 'package:janaza_guide/provider/language_provider.dart';
import 'package:janaza_guide/widget/custom_header.dart';
import 'package:provider/provider.dart';

class Mayyithstepscreen extends StatefulWidget {
  const Mayyithstepscreen({super.key});

  @override
  _MayyithstepscreenState createState() => _MayyithstepscreenState();
}

class _MayyithstepscreenState extends State<Mayyithstepscreen> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(7, (_) => ExpansionTileController());
  }

  List<Mayyithmodel> _getPrayerSteps(LanguageProvider langProvider) {
    return [
      Mayyithmodel(
        title: langProvider.t('steps.kalima_title'),
        description: langProvider.t('steps.kalima_desc'),
        imagePath: ImageClass.kalima,
        instructions: '',
      ),
      Mayyithmodel(
        title: langProvider.t('steps.qibla_title'),
        description: langProvider.t('steps.qibla_desc'),
        imagePath: ImageClass.visit,
        instructions: '',
      ),
      Mayyithmodel(
        title: langProvider.t('steps.yasin_title'),
        description: langProvider.t('steps.yasin_desc'),
        imagePath: ImageClass.quran,
        instructions: '',
      ),
      Mayyithmodel(
        title: langProvider.t('steps.eyes_title'),
        description: langProvider.t('steps.eyes_desc'),
        imagePath: ImageClass.eyeclosing,
        instructions: '',
      ),
      Mayyithmodel(
        title: langProvider.t('steps.covering_title'),
        description: langProvider.t('steps.covering_desc'),
        imagePath: ImageClass.covering,
        instructions: '',
      ),
      Mayyithmodel(
        title: langProvider.t('steps.quick_burial_title'),
        description: langProvider.t('steps.quick_burial_desc'),
        imagePath: ImageClass.cremation,
        instructions: '',
      ),
      Mayyithmodel(
        title: langProvider.t('steps.debt_title'),
        description: langProvider.t('steps.debt_desc'),
        imagePath: ImageClass.kadamVeettunnu,
        instructions: langProvider.t('steps.debt_instructions'),
      ),
    ];
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
                  langProvider.t('steps.screen_title'),
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: ColorClass.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: prayerSteps.length,
                  itemBuilder: (context, index) {
                    final step = prayerSteps[index];
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            color: _expandedIndex == index
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
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: ColorClass.primaryColor
                                          .withOpacity(0.1),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '${index + 1}',
                                        style: TextStyle(
                                          color: ColorClass.primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
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
                                _expandedIndex == index
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: ColorClass.primaryColor,
                              ),
                              children: [
                                if (step.imagePath.isNotEmpty)
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        step.imagePath,
                                        width: double.infinity,
                                        height: 200,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    step.description,
                                    style: GoogleFonts.anekMalayalam(
                                      fontSize: 16,
                                      color: ColorClass.black,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                                if (step.instructions.isNotEmpty)
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      step.instructions,
                                      style: GoogleFonts.anekMalayalam(
                                        fontSize: 16,
                                        color: ColorClass.black,
                                        height: 1.5,
                                      ),
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
