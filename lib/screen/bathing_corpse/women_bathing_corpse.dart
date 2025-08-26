import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colorclass.dart';
import '../../constants/imagesclass.dart';
import '../../model/bathing_corpse_model.dart';
import '../../provider/language_provider.dart';
import 'package:provider/provider.dart';

class WomenBathingCorpseScreen extends StatefulWidget {
  const WomenBathingCorpseScreen({super.key});

  @override
  _WomenBathingCorpseScreenState createState() =>
      _WomenBathingCorpseScreenState();
}

class _WomenBathingCorpseScreenState extends State<WomenBathingCorpseScreen> {
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

  List<BathingCorpseModel> _getBathingSteps(LanguageProvider langProvider) {
    return [
      BathingCorpseModel(
        title: langProvider.t('women_bathing.who_title'),
        description: langProvider.t('women_bathing.who_desc'),
      ),
      BathingCorpseModel(
        title: langProvider.t('women_bathing.best_title'),
        description: langProvider.t('women_bathing.best_desc'),
      ),
      BathingCorpseModel(
        title: langProvider.t('women_bathing.special_title'),
        description: langProvider.t('women_bathing.special_desc'),
      ),
      BathingCorpseModel(
        title: langProvider.t('women_bathing.hajj_title'),
        description: langProvider.t('women_bathing.hajj_desc'),
      ),
      BathingCorpseModel(
        title: langProvider.t('women_bathing.preparation_title'),
        description: langProvider.t('women_bathing.preparation_desc'),
      ),
      BathingCorpseModel(
        title: langProvider.t('women_bathing.method_title'),
        description: langProvider.t('women_bathing.method_desc'),
      ),
      BathingCorpseModel(
        title: langProvider.t('women_bathing.complete_title'),
        description: langProvider.t('women_bathing.complete_desc'),
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
              langProvider.t('women_bathing.title'),
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
          final bathingSteps = _getBathingSteps(langProvider);

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
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: bathingSteps.length,
                  itemBuilder: (context, index) {
                    final step = bathingSteps[index];
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
                                  child: Text(
                                    step.description,
                                    style: GoogleFonts.anekMalayalam(
                                      fontSize: 16,
                                      color: ColorClass.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.w500,
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
