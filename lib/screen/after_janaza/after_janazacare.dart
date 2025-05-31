import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/model/janzacaremodel.dart';
import 'package:janaza_guide/provider/audio_service.dart';

class Janazacaredetails extends StatefulWidget {
  const Janazacaredetails({super.key});

  @override
  _JanazacaredetailsState createState() => _JanazacaredetailsState();
}

class _JanazacaredetailsState extends State<Janazacaredetails> {
  late List<ExpansionTileController> _controllers;
  int? _expandedIndex;
  late AudioProvider _audioService;

  // Data model for burial steps
  final List<Janazacaremodel> _burialSteps = [
      Janazacaremodel(
      title: '"തഅ്സിയത്ത്"',
      description:
          'മരിച്ചതു അമുസ്ലിമാണങ്കിൽ പോലും പരേതന്റെ സന്തപ്ത കുടുംബത്തെ സമാശ്വസിപ്പിക്കൽ സുന്നത്താണ്. കുടുംബത്തിലെ പുരുഷന്മാർ, സ്ത്രീകൾ, വലിയവർ, കുട്ടികൾ എന്നീ വ്യത്യാസമില്ലാതെ എല്ലാവരെയും ആശ്വസിപ്പിക്കാവുന്നതാണ്. അത് മയ്യിത്ത് സംസ്കരിക്കുന്നതിനു മുമ്പും ശേഷവും ആകാം. സാധാരണഗതിയിൽ മൂന്നുദിവസം വരെയാണ് "തഅ്സിയത്തിന്റെ സമയം. ഒരാൾ യാത്രയിലായതിനാലോ മറ്റോ അതിനു സാധിച്ചില്ലെങ്കിൽ മൂന്നുദിവസം കഴിഞ്ഞും അതാകാം.\n\nആശ്വാസം പകരുന്ന, ക്ഷമിക്കാനും സഹിക്കാനും പ്രേരിപ്പിക്കുന്ന വാക്കുകൾ ഏതും തഅ്സിയത്തിൽ ഉപയോഗിക്കാവുന്നതാണ്. ആശ്വാസവാക്യമായി പണ്ഡിതന്മാരിൽ നിന്ന് ഇപ്രകാരം ഉദ്ധരിക്കപ്പെട്ടിട്ടുണ്ട്.\n\nആശ്വാസിതൻ \'ആമീൻ\' പറയുകയും ആശ്വാസകനോട് \'അജ് റകല്ലാഹ്\' (അല്ലാഹു താങ്കൾക്കു പ്രതിഫലം നൽകട്ടെ!) എന്ന് പറയുകയും ചെയ്യേണ്ടതാണ്.\n\nആശ്വാസവചനം പറഞ്ഞ് രണ്ടുപേരും പിരിയുകയാണ് വേണ്ടത്.\n\n"തഅ്സിയത്തിനായി കൂടിയിരിക്കുന്നതും തദാവശ്യാർത്ഥം ഭക്ഷണം ഒരുക്കുന്നതും അനിസ്ലാമികാചാരം (ബിദ്അത്ത്) ആണെന്ന് ഇമാം ശാഫിഈയുടെ പക്ഷം. പലേടത്തും നടപ്പുള്ള ചാവടിയന്തിരത്തിന്റെയും പതിനഞ്ച്, നാൽപത്, ആണ്ട് ആഘോഷങ്ങൾ എന്നിവയുടെയും അവസ്ഥയും ഇതുതന്നെ. ഇവക്കൊന്നും നബിചര്യയിൽ മാതൃകയില്ല.',
      arabicText: 'أعظم الله أجرك وأحسن عزائك وغفر لميتك',
      translation: 'അല്ലാഹു താങ്കൾക്ക് ഉത്തമ പ്രതിഫലം നൽകട്ടെ, നല്ല ആശ്വാസം നൽകട്ടെ, താങ്കളുടെ മയ്യിത്തിന് അവൻ പൊറുത്തു കൊടുക്കട്ടെ!',
      imagePath: '',
    ),
    Janazacaremodel(
      title: 'ഖബർ സന്ദർശനം',
      description:
          'ഖബർ സന്ദർശനം പുരുഷന്മാർക്കു സുന്നത്താണ്. ഖബറിനടുത്ത് ചെല്ലുക, ഖബർവാസിക്കു സലാം ചൊല്ലുക, അയാളുടെ പാപമോചനത്തിനായി അല്ലാഹുവോട് പ്രാർത്ഥിക്കുക ഇത്രയുമാണ് ഖബർ സന്ദർശനം കൊണ്ടു ഉദ്ദേശിച്ചിട്ടുള്ളത്. സന്ദർശകന് പരലോകബോധം വർധിക്കാൻ അതു കാരണമാകും. കുറ്റവാളികളുടെയും നിഷേധികളുടെയും ഖബറുകളും ഈയാവശ്യാർത്ഥം സന്ദർശിക്കാവുന്നതാണ്. ഇസ്ലാമിന്റെ ആദ്യ ഘട്ടത്തിൽ ഖബർ സന്ദർശനം നബി(സ) നിരോധിച്ചിരുന്നു. ശിർക്കു സംബന്ധമായ ആചാരങ്ങൾ സന്ദർശനത്തിൽ കടന്നു കൂടാൻ സാധ്യതയുള്ളതാണ് അതിനു കാരണം. പിന്നീട് നിരോധം നീക്കി. നബി (സ) പറഞ്ഞതായി ബുറൈദ (റ) ഉദ്ധരിക്കുന്നു:\n\nكنت نهيتكم عن زيارة القبور ألا فزوروها فإنها تذكر كم الآخرة\n\nഞാൻ നിങ്ങൾക്കു ഖബർ സന്ദർശനം നിരോധിച്ചിരുന്നു. ഇനി അവ സന്ദർശിച്ചുകൊള്ളുക. അതു നിങ്ങൾക്കു പരലോകബോധമുണ്ടാക്കും.\n\nഖബർ സന്ദർശനവേളയിൽ എന്തു പറയണമെന്ന് താഴെ ഹദീഥുകൾ വ്യക്തമാക്കുന്നു.\n\n1) ബുറൈദ (റ) പറയുന്നു:\n\nكان النبي ﷺﷺ يعلمهم إذا خرجوا إلى المقابر أن يقول قائلهم: السلام عليكم أهل الديار من المؤمنين والمسلمين وإنا إن شاء الله بكم لاحقون. أنتم فرطنا ونحن لكم تبع ونسأل الله لنا ولكم العافية\n\nശ്മശാനങ്ങളിൽ ചെന്നാൽ ഇങ്ങിനെ പറയണമെന്ന് നബി (സ) അവരെ പഠിപ്പിക്കുമായിരുന്നു. നിങ്ങൾക്ക് അല്ലാഹുവിന്റെ സമാധാനമുണ്ടാവട്ടെ. മുഅ്മിനുകളും മുസ്ലിംകളുമായ ഈ ഭവനത്തിലെ താമസക്കാരേ, അല്ലാഹു ഉദ്ദേശിച്ചാൽ ഞങ്ങളും നിങ്ങളുടെ ശേഷം വരാനുള്ളവരാണ്. നിങ്ങൾ മുമ്പേ പോയവരും ഞങ്ങൾ നിങ്ങളെ പിന്തുടരുന്നവരുമാകുന്നു. ഞങ്ങൾക്കും നിങ്ങൾക്കും സൗഖ്യത്തിനായി ഞങ്ങൾ അല്ലാഹുവിനോടർത്ഥിക്കുന്നു.\n\n2) ആയിശ (റ) പറയുന്നു:\n\nقلت : كيف أقول لهم يا رسول الله ؟ قال : قولي : السلام على أهل الديار من المؤمنين والمسلمين ويرحم الله المستقدمين منا والمستأخرين وإنا إن شاء الله بكم لاحقون\n\nഞാൻ ചോദിച്ചു: അല്ലാഹുവിന്റെ ദൂതരേ, ഞാൻ അവരോട് എന്തു പറയണം? അദ്ദേഹം പറഞ്ഞു: നീ പറയുക:\n\nالسلام على أهل الديار من المؤمنين والمسلمين ويرحم الله المستقدمين منا والمستأخرين وإنا إن شاء الله بكم لاحقون\n\nഇതു സംബന്ധിച്ച് വേറെയും ഹദീഥുകൾ വന്നിട്ടുണ്ട്. എന്നാൽ ഖബർ തൊട്ടുമുത്തുക, ചുംബിക്കുക, ഖബറിനു വലംവെക്കുക, അതിങ്കൽ സുജൂദ് ചെയ്യുക ആദിയായവ ശിർക്കുപരമായ പ്രവൃത്തികളും നിഷിദ്ധവുമാണ്.\n\nപുരുഷന്മാർക്കു മാത്രമല്ല, സ്ത്രീകൾക്കും തങ്ങളുടെ ബന്ധുക്കളുടെ ഖബർ സന്ദർശിക്കാവുന്നതാണ്. ഖബറിങ്കൽ ചെന്ന് അലമുറയിടുകയും മറ്റു അനിസ്ലാമിക രീതികൾ കൈകൊള്ളുകയും ചെയ്യുന്നില്ലെങ്കിലാണത്. അങ്ങനെചെയ്താൽ അത് അവർക്ക് ശാപകാരണമായിത്തീരുകയും ചെയ്യും. ആയിശ(റ) സഹോദരൻ അബ്ദുറഹ്മാനുബ്നു അബീബകറി (റ) ന്റെ ഖബർ സന്ദർശിച്ച് മടങ്ങുമ്പോൾ അബ്ദുല്ലാഹിബ്നു മുലൈക (റ) അവരെ കാണാനിടയായി. അദ്ദേഹം ചോദിച്ചു:\n\nيا أم المؤمنين من أين أقبلت ؟ قالت : من قبر أخي عبد الرحمن فقلت كان لها أليس كان نهى رسول اللہ ﷺ عن زيارة القبور ؟ قالتنهى عن زيارة القبور ثم أمر بزيارتها\n\nഉമ്മുൽ മുഅ്മിനീൻ, താങ്കൾ എവിടെ നിന്നാണ് വരുന്നത്? അവർ പറഞ്ഞു: എന്റെ സഹോദരൻ അബ്ദുറഹ്മാന്റെ ഖബറിനടുത്തു നിന്ന്. അപ്പോൾ ഞാൻ ചോദിച്ചു: നബി (സ) ഖബർ സന്ദർശനം നിരോധിച്ചിരുന്നില്ലേ? അവർ പറഞ്ഞു: അതെ, നിരോധിച്ചിരുന്നു. പിന്നെ സന്ദർശിക്കാൻ നിർദ്ദേശിക്കുകയും ചെയ്തു.',
      arabicText:'',
      translation:'',
      source: '',
      imagePath: '',
    ),
    Janazacaremodel(
      title: 'ഖബർ സന്ദർശന വേളയിലെ പ്രാർത്ഥന',
      description:
          'ഖബർ സന്ദർശനവേളയിൽ ചൊല്ലേണ്ട പ്രാർത്ഥനകൾ:',
      arabicText: 'السلام عليكم أهل الديار من المؤمنين والمسلمين وإنا إن شاء الله بكم لاحقون. أنتم فرطنا ونحن لكم تبع ونسأل الله لنا ولكم العافية',
      translation: 'നിങ്ങൾക്ക് അല്ലാഹുവിന്റെ സമാധാനമുണ്ടാവട്ടെ. മുഅ്മിനുകളും മുസ്ലിംകളുമായ ഈ ഭവനത്തിലെ താമസക്കാരേ, അല്ലാഹു ഉദ്ദേശിച്ചാൽ ഞങ്ങളും നിങ്ങളുടെ ശേഷം വരാനുള്ളവരാണ്. നിങ്ങൾ മുമ്പേ പോയവരും ഞങ്ങൾ നിങ്ങളെ പിന്തുടരുന്നവരുമാകുന്നു. ഞങ്ങൾക്കും നിങ്ങൾക്കും സൗഖ്യത്തിനായി ഞങ്ങൾ അല്ലാഹുവിനോടർത്ഥിക്കുന്നു.',
      source: 'ബുറൈദ (റ) പറയുന്നു',
      imagePath: '',
    ),
    Janazacaremodel(
      title: 'മയ്യിത്തിന് പ്രയോജനം ചെയ്യുന്ന കർമങ്ങൾ',
      description: 'ഒരു മുസ്ലിം ജീവിതകാലത്ത് ചെയ്ത ഏതു സൽകർമ്മവും മരണാനന്തരം അയാൾക്ക് പ്രയോജനം ചെയ്യും. എന്നാൽ സ്ഥായിയായി നില നിൽക്കുന്നതും തുടർന്നും ഫലം കിട്ടുന്നതുമായ മൂന്നു കാര്യങ്ങളുണ്ട്.\n\nസ്ഥായിയായ ദാനം, പ്രയോജനപ്രദമായ വിജ്ഞാനം, തനിക്കുവേണ്ടി പ്രാർത്ഥിക്കുന്ന നല്ല സന്താനം എന്നിവയാണത്.\n\n1. ദാനം:\nമരിച്ചവർക്കു വേണ്ടി വിശേഷിച്ചും സന്താനങ്ങൾ നടത്തുന്ന ദാനം മൂലവും അവർക്കു ഗുണം ലഭിക്കുന്നതാണ്. അബൂഹുറൈറ (റ) പറയുന്നു:\n\nان رجلا قال للنبي ﷺ إن أبي مات وترك مالا ولم يوص فهل يكفر عنه أن أتصدق عنه ؟ قال : نعم\n\nഒരാൾ നബി (സ) യെ സമീപിച്ച് ചോദിച്ചു: എന്റെ പിതാവ് മരിച്ചിരിക്കുന്നു. അദ്ദേഹം സമ്പത്ത് ബാക്കി വെച്ചിട്ടുണ്ട്. ഒന്നും ഒസ്യത്ത് ചെയ്തിട്ടുമില്ല. ഞാൻ അദ്ദേഹത്തിന് വേണ്ടി ദാനം ചെയ്താൽ അതു അദ്ദേഹത്തിന്റെ പാപപരിഹാരത്തിന് കാരണമാവുമോ? നബി (സ) പറഞ്ഞു: അതെ.\n\n2. ഹജ്ജ്:\nപരേതന് ഹജ്ജ് നിർബന്ധമുണ്ടെങ്കിൽ പകരം സന്താനങ്ങൾ അതു നിർവഹിച്ചാൽ അതിന്റെ പ്രതിഫലം അദ്ദേഹത്തിന് ലഭിക്കും. ഇബ്നു അബ്ബാസ് (റ) പറയുന്നു:\n\nإن امرأة من جهينة جائت إلى النبي ﷺ فقالت: أن أمي نذرت أن تحج فلم تحج حتى ماتت أفأحج عنها ؟ قال : حجي عنها. أرأيت لو كان على أمك دين أكنت قاضيته ؟ اقضوا فالله أحق بالقضاء\n\nജുഹൈന ഗോത്രത്തിലെ ഒരു സ്ത്രീ നബി (സ) യെ സമീപിച്ച് പറഞ്ഞു: എന്റെ ഉമ്മ ഹജ്ജ് ചെയ്യാൻ നേർച്ചയാക്കിയിരുന്നു. അവർക്ക് ഹജ്ജ് ചെയ്യാൻ കഴിഞ്ഞിട്ടില്ല. അവർ മരിച്ചുപോയി. അവർക്കുവേണ്ടി ഞാൻ ഹജ്ജ് ചെയ്താൽ മതിയാവുമോ? നബി (സ) പറഞ്ഞു: നീ അവർക്കു വേണ്ടി ഹജ്ജ് ചെയ്തു കൊള്ളുക. നിന്റെ മാതാവിനു വല്ല കടവും ഉണ്ടായിരുന്നുവെങ്കിൽ നീ അതു കൊടുത്തു വീട്ടുമായിരുന്നില്ലേ? നിങ്ങൾ കടം വീട്ടുക. അല്ലാഹവാണ് കടം വീട്ടാൻ കൂടുതൽ അർഹൻ.\n\n3. നോമ്പ്:\nനോമ്പും അങ്ങനെ തന്നെ. ഇബ്നു അബ്ബാസ് (റ) പറയുന്നു:\n\nجاء رجل إلى النبي ﷺ فقال : يا رسول الله إن أمي ماتت وعليها صوم شهر أفأقضيه عنها ؟ قال : لو كان على أمك دين أكنت قاضيه عنها ؟\n\nഒരാൾ നബി (സ) യെ സമീപിച്ചു പറഞ്ഞു: അല്ലാഹുവിന്റെ ദൂതരേ, എന്റെ മാതാവ് മരിച്ചിരിക്കുന്നു. അവർക്കു ഒരു മാസത്തെ നോമ്പ് ബാധ്യതയുണ്ട്. അവർക്കു വേണ്ടി ഞാൻ നോമ്പനുഷ്ഠിച്ചാൽ മതിയാകുമോ? നബി (സ) ചോദിച്ചു: നിന്റെ മാതാവിന് കടമുണ്ടെങ്കിൽ നീ അതു വീട്ടുകയില്ലേ? അദ്ദേഹം പറഞ്ഞു: അതെ. നബി (സ) പറഞ്ഞു: എങ്കിൽ അല്ലാഹുവിന്റെ കടമാണ് വീട്ടാൻ ഏറ്റം അർഹം.\n\n4. ഖുർആൻ പാരായണം:\nമരിച്ചവർക്കോ ജീവിച്ചിരിക്കുന്ന ആർക്കെങ്കിലുമോ വേണ്ടി ഖുർആൻ പാരായണം ചെയ്ത് അതിന്റെ ഫലം ദാനം ചെയ്യുന്നതിന് ഖുർആനിൽ തെളിവില്ല. നബി (സ)യുടെ മാതൃകയുമില്ല. അങ്ങിനെ ചെയ്യുന്നതിന് പ്രതിഫലം കിട്ടുകയില്ലെന്നാണു ഇമാം ശാഫിഈയുടെ പ്രസിദ്ധാഭിപ്രായം. അഹ്മദുബ്നു ഹമ്പലും മറ്റു പണ്ഡിതന്മാരും കിട്ടുമെന്ന പക്ഷക്കാരാണ്. ഗുണം കിട്ടുമെന്ന് പറയുന്നവർ തന്നെ ഖുർആൻ ഓതിയ ആൾ അതിന് പ്രതിഫലം പറ്റരുതെന്ന് ഉപാധി വെക്കുന്നുണ്ട്. പാരായണം ചെയ്തതിന്റെ ഫലം പരേതന് ദാനം ചെയ്യുന്നതായി കരുതുകയും വേണം. നബി (സ) ക്കുവേണ്ടി ഇങ്ങനെ ദാനം ചെയ്യുന്നത് അഭികാമ്യമല്ലെന്ന് പിൽക്കാല പണ്ഡിതന്മാർ പലരും അഭിപ്രായപ്പെടുന്നു. സഹാബിമാർ ആരും ഇവ്വിധം നബി (സ) യുടെ പേരിൽ ദാനം ചെയ്തതായി തെളിവില്ല.',
      arabicText: 'إذا مات ابن آدم انقطع عمله إلا من ثلاث صدقة جارية أو علم ينتفع به أو ولد صالح يدعوله',
      translation: '',
      source: 'നബി (സ) പറഞ്ഞതായി അബൂഹുറൈറ (റ) ഉദ്ധരിക്കുന്നു',
      imagePath: '',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _audioService = AudioProvider();
    _controllers = List.generate(
      _burialSteps.length,
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
          'ജനാസനാന്തര കാര്യങ്ങൾ',
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
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          //   child: Text(
          //     'ജനാസയുമായി ബന്ധപ്പെട്ട കാര്യങ്ങൾ',
          //     style: GoogleFonts.anekMalayalam(
          //       fontSize: 16,
          //       color: ColorClass.black.withOpacity(0.6),
          //       fontWeight: FontWeight.w500,
          //     ),
          //   ),
          // ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _burialSteps.length,
              itemBuilder: (context, index) {
                final step = _burialSteps[index];
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
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    step.description,
                                    style: GoogleFonts.anekMalayalam(
                                      fontSize: 14,
                                      color: Colors.black87,
                                      height: 1.5,
                                    ),
                                  ),
                                  if (step.arabicText != null && step.arabicText!.isNotEmpty) ...[
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
                                  if (step.translation != null && step.translation!.isNotEmpty) ...[
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
                                  if (step.source != null && step.source!.isNotEmpty) ...[
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
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        _buildAudioButton(
                                          icon: _audioService.isPlaying && _expandedIndex == index
                                              ? Icons.pause
                                              : Icons.play_arrow,
                                          onTap: () async {
                                            if (_audioService.isPlaying) {
                                              if (_expandedIndex == index) {
                                                await _audioService.pause();
                                              } else {
                                                await _audioService.stop();
                                                await _audioService.loadAudio(step.audioPath!);
                                                await _audioService.play();
                                              }
                                            } else {
                                              await _audioService.loadAudio(step.audioPath!);
                                              await _audioService.play();
                                            }
                                            setState(() {});
                                          },
                                        ),
                                        if (_audioService.isPlaying && _expandedIndex == index)
                                          const SizedBox(width: 16),
                                        if (_audioService.isPlaying && _expandedIndex == index)
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