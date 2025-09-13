import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/samshayanivaranammodel.dart';
import 'package:janaza_guide/provider/language_provider.dart';
import 'package:janaza_guide/widget/custom_header.dart';
import 'package:provider/provider.dart';

class SamshayaNivaranam extends StatefulWidget {
  const SamshayaNivaranam({super.key});

  @override
  _SamshayaNivaranamState createState() => _SamshayaNivaranamState();
}

class _SamshayaNivaranamState extends State<SamshayaNivaranam> {
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

  List<SamshayaNivaranamModel> _getSamshayaList(LanguageProvider langProvider) {
    return [
      SamshayaNivaranamModel(
        title: langProvider.t('samshaya.q1_title'),
        description: langProvider.t('samshaya.q1_answer'),
        imagePath: ImageClass.salat,
      ),
      SamshayaNivaranamModel(
        title: langProvider.t('samshaya.q2_title'),
        description: langProvider.t('samshaya.q2_answer'),
        imagePath: ImageClass.salat,
      ),
      SamshayaNivaranamModel(
        title: langProvider.t('samshaya.q3_title'),
        description: langProvider.t('samshaya.q3_answer'),
        imagePath: ImageClass.salat,
      ),
      SamshayaNivaranamModel(
        title: langProvider.t('samshaya.q4_title'),
        description: langProvider.t('samshaya.q4_answer'),
        imagePath: ImageClass.salat,
      ),
      SamshayaNivaranamModel(
        title: langProvider.t('samshaya.q5_title'),
        description: langProvider.t('samshaya.q5_answer'),
        imagePath: ImageClass.salat,
      ),
      SamshayaNivaranamModel(
        title: langProvider.t('samshaya.q6_title'),
        description: langProvider.t('samshaya.q6_answer'),
        imagePath: ImageClass.salat,
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
          final samshayaList = _getSamshayaList(langProvider);

          return Column(
            children: [
              // Screen Title
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                color: Colors.grey[50],
                child: Text(
                  langProvider.t('samshaya.title'),
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
                  itemCount: samshayaList.length,
                  itemBuilder: (context, index) {
                    final item = samshayaList[index];
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
                                      item.title,
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
                                        item.description,
                                        style: GoogleFonts.anekMalayalam(
                                          fontSize: 16,
                                          color: ColorClass.black,
                                          height: 1.5,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      if (item.arabicTexts.isNotEmpty) ...[
                                        const SizedBox(height: 16),
                                        ...item.arabicTexts
                                            .map((text) => Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Text(
                                                    text,
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                      height: 1.5,
                                                      fontFamily: 'Amiri',
                                                    ),
                                                    textDirection:
                                                        TextDirection.rtl,
                                                  ),
                                                )),
                                      ],
                                      if (item.translation.isNotEmpty) ...[
                                        const SizedBox(height: 16),
                                        Text(
                                          item.translation,
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
