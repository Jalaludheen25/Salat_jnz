import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';

class SamshayaModel {
  final String title;
  final String description;
  final List<String> arabicTexts;
  final String translation;
  final String imagePath;

  const SamshayaModel({
    required this.title,
    required this.description,
    this.arabicTexts = const [],
    this.translation = '',
    this.imagePath = '',
  });
}

class SamshayaNivaranam extends StatefulWidget {
  const SamshayaNivaranam({super.key});

  @override
  _SamshayaNivaranamState createState() => _SamshayaNivaranamState();
}

class _SamshayaNivaranamState extends State<SamshayaNivaranam> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;

  final List<SamshayaModel> _samshayaList = [
    const SamshayaModel(
      title: 'ഇമാം നിൽക്കേണ്ടത് എവിടെ',
      description: 'പുരുഷ മയ്യിത്തിന്റെ തലയുടെ ഭാഗത്തും സ്ത്രീയുടെ മദ്ധ്യഭാഗത്തുമാണ് ഇമാം നിൽക്കേണ്ടത്. ഇവ്വിധമാണ് നബി (സ) നിന്നിരുന്നതെന്ന് അനസ് (റ) പറഞ്ഞതായി അഹ്മദ്, അബൂദാവൂദ്, ഇബ്നുമാജ, തിർമിദി എന്നിവർ ഉദ്ധരിച്ചിട്ടുണ്ട്.',
      imagePath: ImageClass.salat,
    ),
    const SamshayaModel(
      title: 'ഒന്നിലധികം ജനസകളുണ്ടെങ്കിൽ :',
      description: 'ഒന്നിലധികം ജനാസകൾ, പുരുഷന്മാർ, സ്ത്രീകൾ, കുട്ടികൾ എല്ലാവരുടേതുമായുണ്ടെങ്കിൽ എല്ലാവർക്കും വേണ്ടി ഒന്നിച്ച് നമസ്കരിക്കാവുന്നതാണ്. അപ്പോൾ ഇമാമിന്റെ തൊട്ടുമുമ്പിൽ പുരുഷന്മാരുടേതും അതിനുപിന്നിൽ കുട്ടികളുടേതും അതിനും പിന്നിൽ സ്ത്രീകളുടേതുമായാണ് മയ്യിത്തുകൾ നിരത്തി വെക്കേണ്ടത്.',
      arabicTexts: ['ما من مؤمن يموت فيصلي عليه أمة من المسلمين يبلغون أن يكونوا ثلاثة صفوف إلا غفرله فكان مالك بن هبيرة يتحرى إذا قل أهل الجنازة أن يجعلهم ثلاثة صفوف'],
      translation: 'ഒരു മുഅ്മിൻ മരിക്കുകയും മൂന്ന് സ്വഫ്ഫ് വരുന്ന ഒരു സംഘം മുസ്ലിംകൾ അയാൾക്ക് വേണ്ടി നമസ്കരിക്കുകയും ചെയ്താൽ അയാൾക്ക് പാപമോചനം ലഭിക്കാതിരിക്കുകയില്ല.',
      imagePath: ImageClass.salat,
    ),
    const SamshayaModel(
      title: 'സ്ത്രീകൾക്കും നമസ്കരിക്കാം',
      description: 'പുരുഷന്മാരെപ്പോലെ തന്നെ സ്ത്രീകൾക്കും മയ്യിത്ത് നമസ്കരിക്കാവുന്നതാണ്. അത് ഒറ്റക്കും കൂട്ടായും ആകാം. നബി (സ)യുടെ ജനാസ സ്ത്രീകളും നമസ്കരിച്ചിരുന്നു. തനിക്കു നമസ്കരിക്കാൻ പാകത്തിൽ സഅദുബ്നു അബീവഖ് ഖാസി(റ)ന്റെ ജനാസ പള്ളിയിൽ കൊണ്ടുവരാൻ ആയിശ (റ) നിർദ്ദേശിച്ചിരുന്നു.',
      imagePath: ImageClass.salat,
    ),
    const SamshayaModel(
      title: 'ഗർഭസ്ഥ ശിശു മരണപ്പെട്ടാൽ',
      description: 'ഗർഭം നാലു മാസം തികഞ്ഞിട്ടില്ലാത്ത ശിശു മരണപ്പെട്ടാൽ കുളിപ്പിക്കുകയോ നമസ്കരിക്കുകയോ ചെയ്യേണ്ടതില്ല. നാലുമാസം തികഞ്ഞ ശിശു പ്രസവ സമയത്ത് കരയുകയോ ഞരങ്ങുകയോ ചെയ്തിട്ടുണ്ടെങ്കിൽ കുളിപ്പിക്കുകയും നമസ്കരിക്കുകയും ചെയ്യണം.',
      imagePath: ImageClass.salat,
    ),
    const SamshayaModel(
      title: 'രക്തസാക്ഷികൾക് വേണ്ടിയുള്ള നമസ്കാരം',
      description: 'ഇസ്ലാമിന്റെ ശത്രുക്കളുമായുള്ള യുദ്ധത്തിൽ വധിക്കപ്പെടുന്ന രക്തസാക്ഷികളെ കുളിപ്പിക്കുകയോ അവർക്കുവേണ്ടി നമസ്കരിക്കുകയോ ചെയ്യേണ്ടതില്ല. യുദ്ധകോപ്പിന്റെ ഭാഗമായി അണിഞ്ഞ രക്തം പുരണ്ട വസ്ത്രം ഉരിഞ്ഞ് അയാളുടെ സാധാരണ വസ്ത്രത്തിൽ പൊതിഞ്ഞ് ഖബറടക്കുകയാണ് വേണ്ടത്.',
      imagePath: ImageClass.salat,
    ),
    const SamshayaModel(
      title: 'ശിക്ഷയായി വധിക്കപെട്ടവൻ ആത്മഹത്യ ചെയ്തവനും',
      description: 'കുറ്റം ചെയ്തതിനു ശിക്ഷയായി വധിക്കപ്പെട്ടവന്നും ആത്മഹത്യ ചെയ്തവന്നും മറ്റു പാപങ്ങൾ ചെയ്തവർക്കും വേണ്ടി അവർ മുസ്ലിംകളെങ്കിൽ നമസ്കരിക്കൽ നിർബന്ധമാണ്.',
      arabicTexts: ['صلوا على صاحبكم إنه قد غل في سبيل الله'],
      translation: 'നിങ്ങളുടെ കൂട്ടുകാരനു വേണ്ടി നമസ്കരിക്കുവിൻ. അയാൾ ദൈവമാർഗത്തിൽ വഞ്ചന ചെയ്തിരിക്കുന്നു.',
      imagePath: ImageClass.salat,
    ),
    const SamshayaModel(
      title: 'ഖബറടക്കിയ ശേഷമുള്ള നമസ്കാരം',
      description: 'മയ്യിത്ത് ഖബറടക്കി കഴിഞ്ഞശേഷം വന്നെത്തുന്നവർക്ക് ഖബറിങ്കൽ ചെന്ന് നമസ്കരിക്കാവുന്നതാണ്. മറുനാട്ടിൽ മരിച്ച ആൾക്കുവേണ്ടി മയ്യിത്ത് മുമ്പിലില്ലാതെ നമസ്കരിക്കാം.',
      arabicTexts: ['ما صلى رسول اللہ ﷺ علی سهيل بن بيضاء إلا في المسجد'],
      translation: 'നബി (സ) സുഹൈ ബൈദാഇന് വേണ്ടി പള്ളിയിൽ വെച്ചാണ് നമസ്കരിച്ചത്.',
      imagePath: ImageClass.salat,
    ),
    const SamshayaModel(
      title: 'സർവ നാമങ്ങൾ മാറ്റേണ്ടതില്ല',
      description: 'പ്രാർത്ഥനയിൽ വന്ന സർവ്വനാമങ്ങൾ മയ്യിത്തിന്റെ ലിംഗവ്യത്യാസത്തിനനുസരിച്ച് മാറ്റേണ്ടതില്ല. മയ്യിത്ത് എന്നതാണ് അവിടെയെല്ലാം ഉദ്ദേശ്യം. അതാകട്ടെ പുരുഷനും സ്ത്രീക്കും ഒരുപോലെ ഉപയോഗിക്കും.',
      imagePath: ImageClass.salat,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      _samshayaList.length,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close, color: ColorClass.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'സംശയ നിവാരണം',
          style: GoogleFonts.anekMalayalam(
            color: ColorClass.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _samshayaList.length,
              itemBuilder: (context, index) {
                final item = _samshayaList[index];
                final isExpanded = _expandedIndex == index;

                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: isExpanded ? ColorClass.primaryColor.withOpacity(0.1) : Colors.white,
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
                          onExpansionChanged: (expanded) => _handleExpansion(index, expanded),
                          title: Row(
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: ColorClass.primaryColor.withOpacity(0.1),
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
                            isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                            color: ColorClass.primaryColor,
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.description,
                                    style: GoogleFonts.anekMalayalam(
                                      fontSize: 14,
                                      color: Colors.black87,
                                      height: 1.5,
                                    ),
                                  ),
                                  if (item.arabicTexts.isNotEmpty) ...[
                                    const SizedBox(height: 16),
                                    ...item.arabicTexts.map((text) => Text(
                                      text,
                                      textAlign: TextAlign.right,
                                      style: GoogleFonts.notoSansArabic(
                                        fontSize: 18,
                                        color: Colors.black87,
                                        height: 1.5,
                                      ),
                                    )),
                                  ],
                                  if (item.translation.isNotEmpty) ...[
                                    const SizedBox(height: 8),
                                    Text(
                                      item.translation,
                                      style: GoogleFonts.anekMalayalam(
                                        fontSize: 14,
                                        color: Colors.black87,
                                        fontStyle: FontStyle.italic,
                                        height: 1.5,
                                      ),
                                    ),
                                  ],
                                  if (item.imagePath.isNotEmpty) ...[
                                    const SizedBox(height: 16),
                                    Center(
                                      child: Image.asset(
                                        item.imagePath,
                                        height: 200,
                                        fit: BoxFit.contain,
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
    );
  }
}
