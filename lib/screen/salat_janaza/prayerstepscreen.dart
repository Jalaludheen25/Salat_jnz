import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/prayerstepmodel.dart';
import 'package:janaza_guide/provider/audio_service.dart';
import 'package:janaza_guide/provider/language_provider.dart';
import 'package:provider/provider.dart';

class PrayerStepsSliderView extends StatefulWidget {
  const PrayerStepsSliderView({super.key});

  @override
  _PrayerStepsSliderViewState createState() => _PrayerStepsSliderViewState();
}

class _PrayerStepsSliderViewState extends State<PrayerStepsSliderView> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;
  late AudioProvider _audioService;
  String? _currentAudioPath;

  @override
  void initState() {
    super.initState();
    _audioService = AudioProvider();
    _controllers = List.generate(4, (_) => ExpansionTileController());
  }

  @override
  void dispose() {
    _audioService.dispose();
    super.dispose();
  }

  List<PrayerStepModel> _getPrayerSteps(LanguageProvider langProvider) {
    return [
      PrayerStepModel(
        title: langProvider.t('prayer_step_screen.step1_title'),
        description: langProvider.t('prayer_step_screen.step1_desc'),
        arabicTexts: [langProvider.t('prayer_step_screen.step1_arabic')],
        meaning: langProvider.t('prayer_step_screen.step1_meaning'),
        imagePath: ImageClass.thakbir,
        instructions: langProvider.t('prayer_step_screen.step1_instructions'),
        audioPath: 'assets/audio/SuratAl-Fatihah.mp3',
      ),
      PrayerStepModel(
        title: langProvider.t('prayer_step_screen.step2_title'),
        description: langProvider.t('prayer_step_screen.step2_desc'),
        arabicTexts: [langProvider.t('prayer_step_screen.step2_arabic')],
        imagePath: ImageClass.salat,
        instructions: langProvider.t('prayer_step_screen.step2_instructions'),
        audioPath: 'assets/audio/durood e ibrahimi.mp3',
      ),
      PrayerStepModel(
        title: langProvider.t('prayer_step_screen.step3_title'),
        description: langProvider.t('prayer_step_screen.step3_desc'),
        arabicTexts: [langProvider.t('prayer_step_screen.step3_arabic')],
        imagePath: ImageClass.salat,
        instructions: langProvider.t('prayer_step_screen.step3_instructions'),
        audioPath: 'assets/audio/Dua janaza.mp3',
      ),
      PrayerStepModel(
        title: langProvider.t('prayer_step_screen.step4_title'),
        description: langProvider.t('prayer_step_screen.step4_desc'),
        arabicTexts: [langProvider.t('prayer_step_screen.step4_arabic')],
        imagePath: ImageClass.salat,
        instructions: langProvider.t('prayer_step_screen.step4_instructions'),
        audioPath: 'assets/audio/salam dua.mp3',
      ),
    ];
  }

  void _handleExpansion(int index, bool isExpanded) {
    setState(() {
      if (isExpanded) {
        if (_expandedIndex != null && _expandedIndex != index) {
          _controllers[_expandedIndex!].collapse();
          if (_currentAudioPath != null) {
            _audioService.stop();
            _currentAudioPath = null;
          }
        }
        _expandedIndex = index;
      } else if (_expandedIndex == index) {
        _expandedIndex = null;
        if (_currentAudioPath != null) {
          _audioService.stop();
          _currentAudioPath = null;
        }
      }
    });
  }

  Future<void> _handleAudioPlayback(String audioPath) async {
    setState(() {
      if (_currentAudioPath != audioPath) {
        _audioService.stop();
        _audioService.loadAudio(audioPath);
        _currentAudioPath = audioPath;
      }
    });

    if (_audioService.isPlaying) {
      await _audioService.pause();
    } else {
      await _audioService.play();
    }
    setState(() {});
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
          onPressed: () {
            _audioService.stop();
            Navigator.pop(context);
          },
        ),
        title: Consumer<LanguageProvider>(
          builder: (context, langProvider, child) {
            return Text(
              langProvider.t('prayer_step_screen.title'),
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
          final prayerSteps = _getPrayerSteps(langProvider);

          return Column(
            children: [
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
                                      borderRadius: BorderRadius.circular(12),
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
                                      if (step.description.isNotEmpty) ...[
                                        Text(
                                          step.description,
                                          style: GoogleFonts.anekMalayalam(
                                            fontSize: 16,
                                            color: ColorClass.black,
                                            height: 1.5,
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                      ],
                                      ...step.arabicTexts.map((text) => Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8),
                                            child: Text(
                                              text,
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                fontSize: 20,
                                                height: 2.0,
                                                color: ColorClass.black,
                                              ),
                                            ),
                                          )),
                                      if (step.instructions.isNotEmpty) ...[
                                        const SizedBox(height: 16),
                                        Text(
                                          step.instructions,
                                          style: GoogleFonts.anekMalayalam(
                                            fontSize: 16,
                                            color: ColorClass.black,
                                            height: 1.5,
                                          ),
                                        ),
                                      ],
                                      const SizedBox(height: 16),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          _buildAudioButton(
                                            icon: (_currentAudioPath ==
                                                        step.audioPath &&
                                                    _audioService.isPlaying)
                                                ? Icons.pause
                                                : Icons.play_arrow,
                                            onTap: () => _handleAudioPlayback(
                                                step.audioPath),
                                          ),
                                        ],
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
          color: ColorClass.primaryColor.withOpacity(0.1),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: ColorClass.primaryColor, size: 24),
      ),
    );
  }
}
