import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/model/janzacaremodel.dart';
import 'package:janaza_guide/provider/audio_service.dart';
import 'package:janaza_guide/provider/language_provider.dart';
import 'package:janaza_guide/widget/custom_header.dart';
import 'package:provider/provider.dart';

class Janazacaredetails extends StatefulWidget {
  const Janazacaredetails({super.key});

  @override
  _JanazacaredetailsState createState() => _JanazacaredetailsState();
}

class _JanazacaredetailsState extends State<Janazacaredetails> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;
  late AudioProvider _audioService;
  static const int _totalSteps = 5;

  List<Janazacaremodel> _getAfterJanazaSteps(LanguageProvider langProvider) {
    return [
      Janazacaremodel(
        title: langProvider.t('after_janaza.step1_title'),
        description: langProvider.t('after_janaza.step1_desc'),
        arabicText: langProvider.t('after_janaza.step1_arabic'),
        translation: langProvider.t('after_janaza.step1_translation'),
        source: langProvider.t('after_janaza.step1_source'),
        imagePath: '',
      ),
      Janazacaremodel(
        title: langProvider.t('after_janaza.step2_title'),
        description: langProvider.t('after_janaza.step2_desc'),
        arabicText: langProvider.t('after_janaza.step2_arabic'),
        translation: langProvider.t('after_janaza.step2_translation'),
        source: langProvider.t('after_janaza.step2_source'),
        imagePath: '',
      ),
      // Janazacaremodel(
      //   title: langProvider.t('after_janaza.step3_title'),
      //   description: langProvider.t('after_janaza.step3_desc'),
      //   arabicText: langProvider.t('after_janaza.step3_arabic'),
      //   translation: langProvider.t('after_janaza.step3_translation'),
      //   source: langProvider.t('after_janaza.step3_source'),
      //   imagePath: '',
      // ),
      Janazacaremodel(
        title: langProvider.t('after_janaza.step4_title'),
        description: langProvider.t('after_janaza.step4_desc'),
        arabicText: langProvider.t('after_janaza.step4_arabic'),
        translation: langProvider.t('after_janaza.step4_translation'),
        source: langProvider.t('after_janaza.step4_source'),
        imagePath: '',
      ),
      Janazacaremodel(
        title: langProvider.t('after_janaza.step5_title'),
        description: langProvider.t('after_janaza.step5_desc'),
        arabicText: langProvider.t('after_janaza.step5_arabic'),
        translation: langProvider.t('after_janaza.step5_translation'),
        source: langProvider.t('after_janaza.step5_source'),
        imagePath: '',
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    _audioService = AudioProvider();
    _controllers = List.generate(
      _totalSteps,
      (_) => ExpansionTileController(),
    );
  }

  @override
  void dispose() {
    _audioService.dispose();
    super.dispose();
  }

  void _handleExpansion(int index, bool isExpanded) {
    setState(() {
      if (isExpanded) {
        if (_expandedIndex != null && _expandedIndex != index) {
          _controllers[_expandedIndex!].collapse();
          _audioService.stop();
        }
        _expandedIndex = index;
      } else if (_expandedIndex == index) {
        _expandedIndex = null;
        _audioService.stop();
      }
    });
  }

  List<TextSpan> _buildStyledText(String text) {
    List<TextSpan> spans = [];

    // List of texts to make bold
    List<String> boldTexts = [
      '1. ദാനം:',
      '2. ഹജ്ജ്:',
      '3. നോമ്പ്:',
      '4. ഖുർആൻ പാരായണം:',
      'എന്താണ് എംബാം?'
    ];

    String remainingText = text;

    for (String boldText in boldTexts) {
      if (remainingText.contains(boldText)) {
        List<String> parts = remainingText.split(boldText);

        // Add text before the bold text
        if (parts[0].isNotEmpty) {
          spans.add(TextSpan(text: parts[0]));
        }

        // Add the bold text
        spans.add(TextSpan(
          text: boldText,
          style: GoogleFonts.anekMalayalam(
            fontSize: 14,
            color: Colors.black87,
            height: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ));

        // Continue with the remaining text
        remainingText = parts.length > 1 ? parts.sublist(1).join(boldText) : '';
      }
    }

    // Add any remaining text
    if (remainingText.isNotEmpty) {
      spans.add(TextSpan(text: remainingText));
    }

    return spans;
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
          final afterJanazaSteps = _getAfterJanazaSteps(langProvider);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Screen Title
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                color: Colors.grey[50],
                child: Text(
                  langProvider.t('after_janaza.title'),
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
                  itemCount: afterJanazaSteps.length,
                  itemBuilder: (context, index) {
                    final step = afterJanazaSteps[index];
                    final isExpanded = _expandedIndex == index;

                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            color: isExpanded
                                ? ColorClass.primaryColor.withValues(alpha: 0.1)
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
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: ColorClass.primaryColor
                                          .withValues(alpha: 0.1),
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
                                isExpanded
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: ColorClass.primaryColor,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: GoogleFonts.anekMalayalam(
                                            fontSize: 14,
                                            color: Colors.black87,
                                            height: 1.5,
                                          ),
                                          children: _buildStyledText(
                                              step.description),
                                        ),
                                      ),
                                      if (step.arabicText != null &&
                                          step.arabicText!.isNotEmpty) ...[
                                        const SizedBox(height: 16),
                                        Text(
                                          step.arabicText!,
                                          textAlign: TextAlign.right,
                                          style: GoogleFonts.notoSansArabic(
                                            fontSize: 18,
                                            color: Colors.black87,
                                            height: 1.5,
                                          ),
                                        ),
                                      ],
                                      if (step.translation != null &&
                                          step.translation!.isNotEmpty) ...[
                                        const SizedBox(height: 8),
                                        Text(
                                          step.translation!,
                                          style: GoogleFonts.anekMalayalam(
                                            fontSize: 14,
                                            color: Colors.black87,
                                            fontStyle: FontStyle.italic,
                                            height: 1.5,
                                          ),
                                        ),
                                      ],
                                      if (step.source != null &&
                                          step.source!.isNotEmpty) ...[
                                        const SizedBox(height: 8),
                                        Text(
                                          '- ${step.source!}',
                                          style: GoogleFonts.anekMalayalam(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ],
                                      const SizedBox(height: 16),
                                      if (step.audioPath != null) ...[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            _buildAudioButton(
                                              icon: _audioService.isPlaying &&
                                                      _expandedIndex == index
                                                  ? Icons.pause
                                                  : Icons.play_arrow,
                                              onTap: () async {
                                                if (_audioService.isPlaying) {
                                                  if (_expandedIndex == index) {
                                                    await _audioService.pause();
                                                  } else {
                                                    await _audioService.stop();
                                                    await _audioService
                                                        .loadAudio(
                                                            step.audioPath!);
                                                    await _audioService.play();
                                                  }
                                                } else {
                                                  await _audioService.loadAudio(
                                                      step.audioPath!);
                                                  await _audioService.play();
                                                }
                                                setState(() {});
                                              },
                                            ),
                                            if (_audioService.isPlaying &&
                                                _expandedIndex == index)
                                              const SizedBox(width: 16),
                                            if (_audioService.isPlaying &&
                                                _expandedIndex == index)
                                              _buildAudioButton(
                                                icon: Icons.stop,
                                                onTap: () async {
                                                  await _audioService.stop();
                                                  setState(() {});
                                                },
                                              ),
                                          ],
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

  Widget _buildAudioButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: ColorClass.primaryColor.withValues(alpha: 0.1),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: ColorClass.primaryColor, size: 24),
      ),
    );
  }
}
