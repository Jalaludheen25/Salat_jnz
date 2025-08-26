import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/deadboadyverbmodel.dart';
import 'package:janaza_guide/screen/bathing_corpse/men_bathing_corpse.dart';
import 'package:janaza_guide/screen/bathing_corpse/women_bathing_corpse.dart';
import 'package:janaza_guide/provider/language_provider.dart';
import 'package:provider/provider.dart';

class BathingCorpseScreen extends StatefulWidget {
  const BathingCorpseScreen({super.key});

  @override
  _BathingCorpseScreenState createState() => _BathingCorpseScreenState();
}

class _BathingCorpseScreenState extends State<BathingCorpseScreen> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(6, (_) => ExpansionTileController());
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

  List<BathingCorpsemodel> _getDeadBodySteps(LanguageProvider langProvider) {
    return [
      BathingCorpsemodel(
        title: langProvider.t('bathing.hadith1_title'),
        description: langProvider.t('bathing.hadith1_desc'),
        imagePath: ImageClass.kalima,
        instructions: langProvider.t('bathing.hadith1_instructions'),
        arabicText:
            'دخل علينا رسول اللہ ﷺ حين توفيت ابنته فقال : اغسلنها ثلاثا أو خمسا أو أكثر من ذلك إن رأيتن بماء وسدر واجعلن في الأخيرة كافورا أوشيئا من كافور فإذا فرغتن فآذتني فلما فرغنا آذناه فأعطانا حقوه فقال أشعرنها إياه (رواه الجماعة)',
      ),
      BathingCorpsemodel(
        title: langProvider.t('bathing.hadith2_title'),
        description: langProvider.t('bathing.hadith2_desc'),
        imagePath: ImageClass.kalima,
        instructions: langProvider.t('bathing.hadith2_instructions'),
        arabicText: 'ابدأن بميامنها ومواضع الوضوء منها',
      ),
      BathingCorpsemodel(
        title: langProvider.t('bathing.tayammum_title'),
        description: langProvider.t('bathing.tayammum_desc'),
        imagePath: ImageClass.kalima,
        instructions: '',
      ),
      BathingCorpsemodel(
        title: langProvider.t('bathing.spouse_title'),
        description: langProvider.t('bathing.spouse_desc'),
        imagePath: ImageClass.kalima,
        instructions: langProvider.t('bathing.spouse_instructions'),
        arabicText: 'لو استقبلتُ من أمري ما استدبرتُ ما غسلَه إلا نساؤُه',
        translation: langProvider.t('bathing.spouse_translation'),
      ),
      BathingCorpsemodel(
        title: langProvider.t('bathing.children_title'),
        description: langProvider.t('bathing.children_desc'),
        imagePath: ImageClass.kalima,
        instructions: '',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: ColorClass.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Consumer<LanguageProvider>(
          builder: (context, langProvider, child) {
            return Text(
              langProvider.t('bathing.main_title'),
              style: GoogleFonts.anekMalayalam(
                fontSize: 22,
                color: ColorClass.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            );
          },
        ),
      ),
      body: Consumer<LanguageProvider>(
        builder: (context, langProvider, child) {
          final deadBodySteps = _getDeadBodySteps(langProvider);

          return Column(
            children: [
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
                      ImageClass.bathing,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MenBathingCorpseScreen(),
                    ),
                  );
                },
                child: BasicInitialNeedsWidget(
                  title: langProvider.t('bathing.men_button'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WomenBathingCorpseScreen(),
                    ),
                  );
                },
                child: BasicInitialNeedsWidget(
                  title: langProvider.t('bathing.women_button'),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: deadBodySteps.length,
                  itemBuilder: (context, index) {
                    final step = deadBodySteps[index];
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
                                  SizedBox(
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
                                      Text(
                                        step.description,
                                        style: GoogleFonts.anekMalayalam(
                                          fontSize: 16,
                                          color: ColorClass.black,
                                          height: 1.5,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      if (step.arabicText != null &&
                                          step.arabicText!.isNotEmpty) ...[
                                        const SizedBox(height: 16),
                                        Text(
                                          step.arabicText!,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            height: 1.5,
                                            fontFamily: 'Amiri',
                                          ),
                                          textDirection: TextDirection.rtl,
                                        ),
                                      ],
                                      if (step.instructions.isNotEmpty) ...[
                                        const SizedBox(height: 16),
                                        Text(
                                          step.instructions,
                                          style: GoogleFonts.anekMalayalam(
                                            fontSize: 16,
                                            color: ColorClass.black,
                                            height: 1.5,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                      if (step.translation != null &&
                                          step.translation!.isNotEmpty) ...[
                                        const SizedBox(height: 16),
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
