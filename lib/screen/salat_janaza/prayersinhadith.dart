import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';

// Define the model class
class PrayerModel {
  final String title;
  final String description;
  final List<String> arabicTexts;
  final String translation;
  final String? imagePath;

  const PrayerModel({
    required this.title,
    required this.description,
    required this.arabicTexts,
    required this.translation,
    this.imagePath,
  });
}

class Prayersinhadith extends StatefulWidget {
  const Prayersinhadith({super.key});

  @override
  _PrayersinhadithState createState() => _PrayersinhadithState();
}

class _PrayersinhadithState extends State<Prayersinhadith> {
  int? _expandedIndex;

  final List<PrayerModel> _prayerSteps = [
    const PrayerModel(
      title: 'നബി (സ) പഠിപ്പിച്ച ദുആ',
      description: 'ജനാസ നമസ്കാരത്തിൽ റസൂൽ (സ) ഇപ്രകാരം പ്രാർത്ഥിച്ചതായി അബൂഹുറൈറ(റ) പറയുന്നു:',
      arabicTexts: [
        'اللهم أنت ربها وأنت خلقتها وأنت رزقتها وأنت هديتها للإسلام وأنت قبضت روحها وأنت أعلم بسرها وعلانيتها جئنا شفعاء له فاغفر له ذنبه'
      ],
      translation: 'അല്ലാഹുവേ, നീയാണ് ഇതിന്റെ ഉടമ; അതിനെ സൃഷ്ടിച്ചതും നീ, ഭക്ഷണം നൽകിയതും നീ. ഇസ്ലാമിലേക്ക് വഴി കാണിച്ചതും നീ, അതിന്റെ ആത്മാവിനെ നീ തിരിച്ചു പിടിച്ചിരിക്കുന്നുവല്ലോ. അതിന്റെ രഹസ്യവും പരസ്യവും അറിയുന്നവൻ നീ മാത്രം. അവന് വേണ്ടി ശുപാർശ ചെയ്യാനാണ് ഞങ്ങൾ വന്നിരിക്കുന്നത്. അതിനാൽ നീ അവന്റെ പാപം പൊറുക്കേണമേ!',
      imagePath: 'assets/images/praying man.png',
    ),
    const PrayerModel(
      title: 'വാഥിലുബ്നുൽ അഅ് (റ) പറയുന്ന ദുആ',
      description: 'നബി (സ) ഞങ്ങൾക്ക് നേതൃത്വം നൽകി ഒരു മുസ്ലിമിന്റെ മയ്യിത്ത് നമസ്കാരം നിർവ്വഹിച്ചു. നബി (സ) അപ്പോൾ പറയുന്നതു ഞാൻ കേട്ടു:',
      arabicTexts: [
        'اللهم إن فلان بن فلان في ذمتك وحبل جوارك فقه من فتنة القبر وعذاب النار وأنت أهل الوفاء والحق اللهم فاغفر له وارحمه فانك أنت الغفور الرحيم'
      ],
      translation: 'അല്ലാഹുവേ, ഇന്നയാളുടെ മകൻ ഇന്നയാൾ (ഇവിടെ പരേതന്റെ പേർ പിതാവിന്റെ പേരിനോട് ചേർത്തു പറയണം) നിന്റെ സംരക്ഷണയിലും പരിരക്ഷാപാശത്തിലുമാണ്. അതിനാൽ ഖബർ ശിക്ഷയിൽ നിന്നും നരകശിക്ഷയിൽ നിന്നും നീ അദ്ദേഹത്തെ രക്ഷിക്കേണമേ. കരാർ പാലിക്കുന്നവനും അവകാശം നൽകുന്നവനുമാണു നീ. അല്ലാഹുവേ നീ ഇദ്ദേഹത്തിന് പൊറുക്കുകയും കരുണ ചൊരിയുകയും ചെയ്യേണമേ! നീ മാത്രമാണ് പൊറുക്കുന്നവനും കാരുണ്യവാനും.',
      imagePath: 'assets/images/janaza prayer.png',
    ),
    const PrayerModel(
      title: 'ഔഫ്ബ്നു മാലിക് (റ) പറയുന്ന ദുആ',
      description: 'ഒരു ജനാസ നമസ്കാരം നിർവ്വഹിച്ചുകൊണ്ട് നബി (സ) പറയുന്നത് ഞാൻ കേട്ടു:',
      arabicTexts: [
        'اللهم اغفرله وارحمه واعف عنه وعافه وأكرم نزله ووسع مدخله واغسله بماء وثلج وبرد ونقه من الخطايا كما ينقى الثوب الأبيض من الدنس وأبدله دارا خيرا من داره وأهلا خيرا من أهله وزوجا خيرا من زوجه وقه فتنة القبر وعذاب النار'
      ],
      translation: 'അല്ലാഹുവേ, ഇദ്ദേഹത്തിന് പൊറുക്കുകയും കരുണ ചൊരിയുകയും ചെയ്യണേണമേ! ഇദ്ദേഹത്തിന് മാപ്പ് നൽകേണമേ. സൗഖ്യം നൽകേണമേ! ഇദ്ദേഹത്തിന് മാന്യമായ വിരുന്നൊരുക്കുകയും ഇദ്ദേഹത്തിന്റെ പ്രവേശ സ്ഥലം വിശാലമാക്കുകയും ചെയ്യേണമേ. വെള്ളവും ഹിമവും മഞ്ഞും കൊണ്ട് ഇദ്ദേഹത്തെ കഴുകേണമേ! വെള്ള വസ്ത്രത്തെ ചെളിയിൽ നിന്നെന്നപോലെ പാപത്തിൽ നിന്ന് ഇദ്ദേഹത്തെ ശുദ്ധി ചെയ്യേണമേ! ഇദ്ദേഹത്തിന്റെ ഭവനത്തെക്കാൾ നല്ല ഭവനവും കുടുംബത്തേക്കാൾ നല്ല കുടുംബവും ഇണയെക്കാൾ നല്ല ഇണയെയും നൽകേണമേ! ഖബർ ശിക്ഷയിൽ നിന്നും നരകശിക്ഷയിൽ നിന്നും ഇദ്ദേഹത്തെ കാക്കുകയും ചെയ്യേണമേ!',
      imagePath: 'assets/images/janaza prayer.png',
    ),
    const PrayerModel(
      title: 'അബൂഹുറൈറ (റ) പറയുന്ന ദുആ',
      description: 'റസൂൽ (സ) ഒരു ജനാസ നമസ്കാരം നിർവ്വഹിച്ചുകൊണ്ട് പറഞ്ഞു:',
      arabicTexts: [
        'اللهم اغفر لحينا وميتنا وصغيرنا وكبيرنا وذكرنا وأنثانا وشاهدنا وغائبنا اللهم من أحييته منا فأحيه على الإسلام ومن توفيته فتوفه على الإيمان اللهم لا تحرمنا أجره ولا تضلنا بعده'
      ],
      translation: 'അല്ലാഹുവേ, ഞങ്ങളിൽ ജീവിച്ചിരിക്കുന്നവർക്കും മരണപ്പെട്ടവർക്കും ചെറിയ വർക്കും വലിയവർക്കും പുരുഷന്മാർക്കും സ്ത്രീകൾക്കും ഹാജറുള്ളവർക്കും ഇല്ലാത്തവർക്കും നീ പൊറുക്കേണമേ! അല്ലാഹുവേ, നീ ഞങ്ങളിൽ ആരെയെങ്കിലും ജീവിക്കാൻ വിടുന്നുവെങ്കിൽ അവരെ ഇസ്ലാമിൽ അടിയുറച്ചു ജീവിക്കാൻ തുണക്കേണമേ! നീ ഞങ്ങളിൽ ആരെയെങ്കിലും മരിപ്പിക്കുമ്പോൾ ഈമാനിൽ ഉറപ്പിച്ചു നിറുത്തി മരിപ്പിക്കേണമേ! അല്ലാഹുവേ, ഇതിന്റെ പ്രതിഫലം നീ ഞങ്ങൾക്കു തടയരുതേ! ഇദ്ദേഹത്തിന് ശേഷം നീ ഞങ്ങളെ വഴിതെറ്റിയവരാക്കരുതേ!',
      imagePath: 'assets/images/janaza prayer.png',
    ),
    const PrayerModel(
      title: 'കുട്ടികൾക്ക് വേണ്ടിയുള്ള ദുആ',
      description: 'മയ്യിത്ത് കുട്ടിയുടേതാണെങ്കിൽ ഇത് കൂടി പറയണം:',
      arabicTexts: [
        'اللهم اجعله فرطا لأبويه وسلفا وذخرا وعظة واعتبارا وشفيعا، وثقل به موازينهما وأفرغ الصبر على قلوبهما ولا تفتنهما بعده ولا تحرمهما أجره'
      ],
      translation: 'അല്ലാഹുവേ, നീ ഇവനെ ഇവന്റെ മാതാപിതാക്കൾക്ക് സൂക്ഷിപ്പും മുന്നൊരുക്കവും നിധിയും ഉപദേശവും ഗുണപാഠവും ശുപാർശകനു മാക്കേണമേ. അവൻ വഴി അവരുടെ ത്രാസ് ഘനക്കൂടുതലുള്ളതാക്കുകയും അവരുടെ ഹൃദയങ്ങളിൽ ക്ഷമ ചൊരിയുകയും ഇവന്ന് ശേഷം അവരെ കുഴപ്പത്തിലകപ്പെടുത്താതിരിക്കുകയും അവൻ നഷ്ടപ്പെട്ടതിന്റെ പ്രതിഫലം അവർക്കു തടയാതിരിക്കുകയും ചെയ്യേണമേ!',
      imagePath: 'assets/images/janaza prayer.png',
    ),
    const PrayerModel(
      title: 'നാലാമത്തെ തക്ബീറിന് ശേഷം പറയേണ്ട ദുആ',
      description: 'നാലാമത്തെ തക്ബീറിന് ശേഷം ഇമാം ശാഫിഈയുടെ പക്ഷം അനുസരിച്ച്:',
      arabicTexts: [
        'اللهم لا تحرمنا أجره ولا تفتنا بعده'
      ],
      translation: 'ഈ മയ്യിത്തിന്റെ പേരിൽ നമസ്കരിച്ച പ്രതിഫലം ഞങ്ങൾക്ക് തടയാതിരിക്കുകയും ഇദ്ദേഹത്തിന് ശേഷം ഞങ്ങളെ കുഴപ്പത്തിൽ പെടുത്താതിരിക്കുകയും ചെയ്യേണമേ!',
      imagePath: 'assets/images/janaza prayer.png',
    ),
    const PrayerModel(
      title: 'ഖബർ സന്ദർശനവേളയിൽ പറയേണ്ട ദുആ',
      description: 'ശ്മശാനങ്ങളിൽ ചെന്നാൽ നബി (സ) പഠിപ്പിച്ചത്:',
      arabicTexts: [
        'السلام عليكم أهل الديار من المؤمنين والمسلمين وإنا إن شاء الله بكم لاحقون. أنتم فرطنا ونحن لكم تبع ونسأل الله لنا ولكم العافية'
      ],
      translation: 'നിങ്ങൾക്ക് അല്ലാഹുവിന്റെ സമാധാനമുണ്ടാവട്ടെ. മുഅ്മിനുകളും മുസ്ലിംകളുമായ ഈ ഭവനത്തിലെ താമസക്കാരേ, അല്ലാഹു ഉദ്ദേശിച്ചാൽ ഞങ്ങളും നിങ്ങളുടെ ശേഷം വരാനുള്ളവരാണ്. നിങ്ങൾ മുമ്പേ പോയവരും ഞങ്ങൾ നിങ്ങളെ പിന്തുടരുന്നവരുമാകുന്നു. ഞങ്ങൾക്കും നിങ്ങൾക്കും സൗഖ്യത്തിനായി ഞങ്ങൾ അല്ലാഹുവിനോടർത്ഥിക്കുന്നു.',
      imagePath: 'assets/images/janaza prayer.png',
    ),
  ];

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
        title: Text(
          'ഹദീഥുകളിൽ നിന്നും',
          style: GoogleFonts.anekMalayalam(
            fontSize: 20,
            color: ColorClass.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'ജനാസ നമസ്കാരത്തിലെ ദുആകൾ',
              style: GoogleFonts.anekMalayalam(
                fontSize: 16,
                color: ColorClass.black.withOpacity(0.6),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _prayerSteps.length,
              itemBuilder: (context, index) {
                final step = _prayerSteps[index];
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
                          onExpansionChanged: (expanded) {
                            setState(() {
                              _expandedIndex = expanded ? index : null;
                            });
                          },
                          initiallyExpanded: isExpanded,
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
                            isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                            color: ColorClass.primaryColor,
                          ),
                          children: [
                            if (step.imagePath != null)
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    step.imagePath!,
                                    width: double.infinity,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    step.description,
                                    style: GoogleFonts.anekMalayalam(
                                      fontSize: 16,
                                      color: ColorClass.black,
                                      height: 1.5,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  ...step.arabicTexts.map((text) => Padding(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      text,
                                      textAlign: TextAlign.right,
                                      textDirection: TextDirection.rtl,
                                      style: GoogleFonts.notoSansArabic(
                                        fontSize: 18,
                                        height: 2.0,
                                        color: ColorClass.black,
                                      ),
                                    ),
                                  )).toList(),
                                  const SizedBox(height: 16),
                                  Text(
                                    step.translation,
                                    style: GoogleFonts.anekMalayalam(
                                      fontSize: 16,
                                      color: ColorClass.black,
                                      height: 1.5,
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
      ),
    );
  }
}