import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/prayersinhadithmodel.dart';
import 'package:janaza_guide/provider/language_provider.dart';
import 'package:provider/provider.dart';

class Prayersinhadith extends StatefulWidget {
  const Prayersinhadith({super.key});

  @override
  _PrayersinhadithState createState() => _PrayersinhadithState();
}

class _PrayersinhadithState extends State<Prayersinhadith> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(3, (_) => ExpansionTileController());
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

  List<PrayersInHadithModel> _getHadithList(LanguageProvider langProvider) {
    return [
      PrayersInHadithModel(
        title: langProvider.t('prayers_hadith.hadith1_title'),
        description: langProvider.t('prayers_hadith.hadith1_desc'),
        arabicText: langProvider.t('prayers_hadith.hadith1_arabic'),
        translation: langProvider.t('prayers_hadith.hadith1_translation'),
        source: langProvider.t('prayers_hadith.hadith1_source'),
        imagePath: ImageClass.kalima,
      ),
      PrayersInHadithModel(
        title: langProvider.t('prayers_hadith.hadith2_title'),
        description: langProvider.t('prayers_hadith.hadith2_desc'),
        arabicText: langProvider.t('prayers_hadith.hadith2_arabic'),
        translation: langProvider.t('prayers_hadith.hadith2_translation'),
        source: langProvider.t('prayers_hadith.hadith2_source'),
        imagePath: ImageClass.kalima,
      ),
      PrayersInHadithModel(
        title: langProvider.t('prayers_hadith.hadith3_title'),
        description: langProvider.t('prayers_hadith.hadith3_desc'),
        arabicText: langProvider.t('prayers_hadith.hadith3_arabic'),
        translation: langProvider.t('prayers_hadith.hadith3_translation'),
        source: langProvider.t('prayers_hadith.hadith3_source'),
        imagePath: ImageClass.kalima,
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
              langProvider.t('prayers_hadith.title'),
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
          final hadithList = _getHadithList(langProvider);

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
                  itemCount: hadithList.length,
                  itemBuilder: (context, index) {
                    final hadith = hadithList[index];
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
                                      hadith.title,
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
                                      if (hadith.description.isNotEmpty) ...[
                                        Text(
                                          hadith.description,
                                          style: GoogleFonts.anekMalayalam(
                                            fontSize: 16,
                                            color: ColorClass.black,
                                            height: 1.5,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                      ],
                                      if (hadith.arabicText.isNotEmpty) ...[
                                        Text(
                                          hadith.arabicText,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            height: 1.5,
                                            fontFamily: 'Amiri',
                                          ),
                                          textDirection: TextDirection.rtl,
                                        ),
                                        const SizedBox(height: 16),
                                      ],
                                      if (hadith.translation.isNotEmpty) ...[
                                        Text(
                                          hadith.translation,
                                          style: GoogleFonts.anekMalayalam(
                                            fontSize: 16,
                                            color: ColorClass.black,
                                            height: 1.5,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                      ],
                                      if (hadith.source.isNotEmpty)
                                        Text(
                                          hadith.source,
                                          style: GoogleFonts.anekMalayalam(
                                            fontSize: 14,
                                            color: ColorClass.primaryColor,
                                            fontWeight: FontWeight.w600,
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
