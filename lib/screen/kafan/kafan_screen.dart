import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/kafanmodel.dart';
import 'package:janaza_guide/provider/language_provider.dart';
import 'package:provider/provider.dart';

class KafanScreen extends StatefulWidget {
  const KafanScreen({super.key});

  @override
  _KafanScreenState createState() => _KafanScreenState();
}

class _KafanScreenState extends State<KafanScreen> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(12, (_) => ExpansionTileController());
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

  List<KafanModel> _getKafanSteps(LanguageProvider langProvider) {
    return [
      KafanModel(
        title: langProvider.t('kafan.mandatory_title'),
        description: langProvider.t('kafan.mandatory_desc'),
        imagePath: ImageClass.kalima,
        instructions: '',
      ),
      KafanModel(
        title: langProvider.t('kafan.procedure_title'),
        description: langProvider.t('kafan.procedure_desc'),
        imagePath: ImageClass.kalima,
        instructions: '',
      ),
      KafanModel(
        title: langProvider.t('kafan.men_title'),
        description: langProvider.t('kafan.men_desc'),
        imagePath: ImageClass.kalima,
        instructions: '',
      ),
      KafanModel(
        title: langProvider.t('kafan.women_title'),
        description: langProvider.t('kafan.women_desc'),
        imagePath: ImageClass.kalima,
        instructions: '',
      ),
      KafanModel(
        title: langProvider.t('kafan.hadith1_title'),
        description: langProvider.t('kafan.hadith1_desc'),
        imagePath: ImageClass.kalima,
        arabicText: 'إذا وليَ أحدكُم أخاهُ فليُحسِنْ كفنهُ',
        instructions: langProvider.t('kafan.hadith1_instructions'),
        translation: langProvider.t('kafan.hadith1_translation'),
      ),
      KafanModel(
        title: langProvider.t('kafan.hadith2_title'),
        description: langProvider.t('kafan.hadith2_desc'),
        imagePath: ImageClass.kalima,
        arabicText:
            'البَسُوا مِن ثيابِكُم البياض، فإنها مِن خَيرِ ثيابِكُم، وكفِّنُوا فيها موتاكُم',
        instructions: langProvider.t('kafan.hadith2_instructions'),
        translation: langProvider.t('kafan.hadith2_translation'),
      ),
      KafanModel(
        title: langProvider.t('kafan.hadith3_title'),
        description: langProvider.t('kafan.hadith3_desc'),
        imagePath: ImageClass.kalima,
        arabicText: 'إذا أجمرتم الميت فأجمروه ثلاثا',
        instructions: langProvider.t('kafan.hadith3_instructions'),
        translation: langProvider.t('kafan.hadith3_translation'),
      ),
      KafanModel(
        title: langProvider.t('kafan.prophet_title'),
        description: '',
        imagePath: ImageClass.kalima,
        arabicText:
            'كفن رسول الله ﷺﷺ في ثلاثة أثواب بيض سحولية جدد ليس فيها عمامة قميص ولا',
        instructions: langProvider.t('kafan.prophet_instructions'),
        translation: langProvider.t('kafan.prophet_translation'),
      ),
      KafanModel(
        title: langProvider.t('kafan.zainab_title'),
        description: '',
        imagePath: ImageClass.kalima,
        arabicText: 'إن النبي ﷺ ناولها إزارا ودرعا وخمارا وثوبين',
        instructions: langProvider.t('kafan.zainab_instructions'),
      ),
      KafanModel(
        title: langProvider.t('kafan.hajj_title'),
        description: langProvider.t('kafan.hajj_desc'),
        imagePath: ImageClass.kalima,
        instructions: langProvider.t('kafan.hajj_instructions'),
        arabicText:
            'بينما رجل واقف مع رسول الله ﷺ بعرفة إذ وقع عن راحلته فوقصته فذكر ذلك للنبي ﷺ فقال: اغسلوه بماء وسدر وكفنوه في ثوبيه ولا تحنطوه ولا تخمروا رأسه فإن الله تعالى يبعثه يوم القيمة ملبيا',
        translation: langProvider.t('kafan.hajj_translation'),
      ),
      KafanModel(
        title: langProvider.t('kafan.guidelines_title'),
        description: langProvider.t('kafan.guidelines_desc'),
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
              langProvider.t('kafan.title'),
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
          final kafanSteps = _getKafanSteps(langProvider);

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
                      ImageClass.covering,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: kafanSteps.length,
                  itemBuilder: (context, index) {
                    final step = kafanSteps[index];
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
              ),
            ],
          );
        },
      ),
    );
  }
}
