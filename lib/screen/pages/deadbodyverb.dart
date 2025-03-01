import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';

import 'package:janaza_guide/model/deadboadyverbmodel.dart';

class Deadbodyverbscreen extends StatefulWidget {
  const Deadbodyverbscreen({super.key});

  @override
  _DeadbodyverbscreenState createState() => _DeadbodyverbscreenState();
}

class _DeadbodyverbscreenState extends State<Deadbodyverbscreen> {
  final List<Deadboadyverbmodel> _prayerSteps = [
    Deadboadyverbmodel(
        title: 'മയ്യിത്ത് കുളിപ്പിക്കല്‍',
        description:
            'മൃതശരീരം മുഴുവൻ ഒരു തവണ വെള്ളം നനക്കുക എന്നതാണ് കുളിയിൽ നിർബന്ധം.',
        imagePath: 'assets/images/deadbody bathing.png',
        instructions:
            'മയ്യിത്തിനെ നിലത്തുനിന്ന് വെള്ളം തെറിക്കാത്ത വിധം അല്പം ഉയരമുള്ള ഒരിടത്ത് കിടത്തുക. ഒരു തുണി കൊണ്ട് ഔറത്ത് മറച്ച ശേഷം സാധാരണ വസ്ത്രങ്ങൾ നീക്കുക. കുളിപ്പിക്കാൻ അവശ്യം വേണ്ട ആളുകൾ, അതും വിശ്വസ്തർ മാത്രമേ കുളിപ്പിക്കുന്നിടത്ത് പ്രവേശിക്കാവൂ. ആവശ്യമെങ്കിൽ വെള്ളം ചൂടാക്കാം. കുളിപ്പിക്കുകയാണെന്ന് നിയ്യത്തോടുകൂടി തുടങ്ങുക. മയ്യിത്തിന്റെ വലതുഭാഗത്ത് കൂടി താങ്ങി അരക്കു മേലോട്ടു അല്പം പൊക്കി ഇടതു കൈകൊണ്ട് വയർ മൃദുലമായി അല്പം തടവുക. മാലിന്യങ്ങളുണ്ടെങ്കിൽ പോകാനാണിത്. ഇടതുകൈയിൽ ശീലയോ മറ്റോ ചുറ്റി മലമൂത്രവിസർജ്ജനദ്വാരങ്ങൾ കഴുകിയശേഷം നമസ്കാരത്തിനെന്നപോലെ വുദു ഉണ്ടാക്കിക്കൊടുക്കുക. പിന്നെ തലയിൽ വെള്ളം ഒഴിക്കുക. പിന്നെ വലതുഭാഗവും ഇടതുഭാഗവും കഴുകുക. ചെളിയും മറ്റും പോവാൻ സോപ്പോ, താളിയോ ഉപയോഗിക്കണം. സ്ത്രീകളുടെ മുടി അഴിച്ച് ഉള്ളിൽ വെള്ളം ചേർത്ത് കഴുകി മൂന്നായി മെടഞ്ഞ് പിന്നിലേക്ക് ഞാത്തിയിടണം. ശരീരം ചുരുങ്ങിയതു മൂന്നുതവണ കഴുകണം. കൂടുതൽ തവണ കഴുകണമെന്നുണ്ടങ്കിൽ അഞ്ച്, ഏഴ് എന്നിങ്ങനെ ഒറ്റയിൽ അവസാനിപ്പിക്കണം. അവസാനതവണ വെള്ളത്തിൽ അല്പം കർപ്പൂരം ചേർക്കണം. കുളിപ്പിച്ച് കഴിഞ്ഞാൽ വൃത്തിയുള്ള നേരിയ തുണി കൊണ്ട് ശരീരം തുവർത്തണം. കഫൻ പുടവ നനയാതിരിക്കാൻ അതാവശ്യമാണ്. അനന്തരം മൂന്ന് തവണ സാമ്പ്രാണിയോ മറ്റോ പുകക്കണം. മയ്യിത്തിന്റെ നഖം, രോമം ആദിയായവ മുറിച്ചുകളയാൻ പാടില്ല. കുളിപ്പിച്ച ശേഷം കഫൻ ചെയ്യുന്നതിന് മുമ്പ് മലമൂത്രാദി വല്ല നജസും പുറത്തുവന്നാൽ ആ ഭാഗം മാത്രം കഴുകിയാൽ മതി. '),
    Deadboadyverbmodel(
      title: 'കഫന്‍ ചെയ്യല്‍',
      description:
          'കഫന്‍ ചെയ്യല്‍ ശരീരം മുഴുവൻ മൂടും വിധം മൃതശരീരത്തെ തുണികൊണ്ടോ മറ്റോ പൊതിയുകയാണ് കഫൻ ചെയ്യുന്നതിന്റെ പ്രഥമവും നിർബന്ധവുമായ രീതി.',
      imagePath: 'assets/images/deadbodylaydown.png',
      instructions:
          'ശരീരം മുഴുവൻ മൂടാൻ പറ്റിയ വൃത്തിയുള്ള നല്ല വസ്ത്രം എടുക്കുക. വെളുത്ത വസ്ത്രമാണുത്തമം. ഊദ് കൊണ്ടോ മറ്റോ അത് പുകയ്ക്കുകയും സുഗന്ധദ്രവ്യം തളിക്കുകയും ചെയ്യുക. പുരുഷന് മൂന്നും സ്ത്രീക്ക് അഞ്ചും കഷ്ണം തുണിയാണ് വേണ്ടത്. നബി(സ) പറഞ്ഞതായി അബൂഖതാദ (റ) ഉദ്ധരിക്കുന്നുإذا وليَ أحدكُم أخاهُ فليُحسِنْ كفنهُ (ابن ماجه، الترمذي)(നിങ്ങളിൽ ആരെങ്കിലും തന്റെ സഹോദരന്റെ കാര്യം ഏറ്റെടുക്കുകയാണെങ്കിൽ അവനെ ഭംഗിയായി കഫൻ ചെയ്യണം.)'

    ),
    Deadboadyverbmodel(
      title: ' മയ്യിത്ത് കുളിയുടെ പൂര്‍ണ രൂപം ',
      description:
          'മയ്യിത്തിന്‍റെ ശരീരത്തില്‍ നജസുണ്ടെങ്കില്‍ അത് നീക്കിയ ശേഷം ശരീരം മുഴുവന്‍ ഒരു പ്രാവശ്യം വെള്ളം നനഞ്ഞാല്‍ കുളിയുടെ ചുരുങ്ങിയ രൂപമായി. മയ്യിത്ത് കുളിപ്പിക്കല്‍ ശരിയാവാന്‍ നിയ്യത്ത് ആവശ്യമില്ല എന്നാണ് പ്രബലാഭിപ്രായം. എന്നാല്‍ നിയ്യത്ത് നിര്‍ ബന്ധമാണെന്ന അഭിപ്രായം മാനിച്ച് വെക്കല്‍ സുന്നത്തുണ്ട്. ‘മയ്യിത്തിനെ തൊട്ടുള്ള കുളിയെ ഞാന്‍ വീട്ടുന്നു എന്നോ മയ്യിത്ത് നിസ്കാരത്തെ ഞാന്‍ ഹലാലാക്കുന്നു എന്നോ ആണ് നിയ്യത്ത് ചെയ്യേണ്ടത്.',
      imagePath: 'assets/images/deadbody bathing.png',
      instructions:
          'മയ്യിത്ത് കുളിയുടെ പൂര്‍ണ രൂപം പറയാം: മേല്‍പുരയും ചുറ്റും മറയുമുള്ള സ്ഥലത്താണ് മയ്യിത്ത് കുളിപ്പിക്കാനായി വെക്കേണ്ടത്. കുളിപ്പിക്കുന്നയാളും സഹായികളുമല്ലാതെ മറ്റാരും അങ്ങോട്ട് പ്രവേശിക്കരുത്. എന്നാല്‍ മയ്യിത്തിന്‍റെ രക്ഷിതാവിന് അങ്ങോട്ട് ചെല്ലാവുന്നതാണ്. നബി(സ്വ)യെ കുളിപ്പിച്ചത് അലി(റ), അബ്ദുല്ലാഹിബ്നു അബ്ബാസ്(റ) എന്നിവരും വെള്ളം എടുത്തുകൊടുത്തത് ഉസാമ(റ)വുമായിരുന്നു. അബ്ബാസ്(റ) ആ സ്ഥലത്തേക്ക് പോയിവന്നു കൊണ്ടിരുന്നു.\n\n ഉയരമുള്ള കട്ടിലിലോ മറ്റോ മയ്യിത്തിനെ കിടത്തണം. തലയില്‍ നിന്ന് വേഗം വെള്ളം ഒഴിഞ്ഞുപോകാന്‍ തല അല്‍പം ഉയര്‍ത്തി വെക്കണം. ശരീരത്തിനു ബലം നല്‍കുന്നത് തണുത്ത വെള്ളമായതിനാല്‍ അതുകൊണ്ടാണ് കുളിപ്പിക്കേണ്ടത്. ചൂട് വെള്ളം ശരീരത്തെ തളര്‍ത്തുകയാണ് ചെയ്യുക. എന്നാല്‍ ചൂട് വെള്ളം ഉപയോഗിക്കേണ്ട നിര്‍ബന്ധ സാഹചര്യം വന്നാല്‍ (ഉദാ: മയ്യിത്തിന്‍റെ ശരീരത്തില്‍ പറ്റിയ അഴുക്ക് നീക്കം ചെയ്യല്‍) അത് ഉപയോഗിക്കാം. ഇറ്റി വീഴുന്ന വെള്ളം പതിക്കാത്തവിധം വെള്ളപ്പാത്രം ഉയരത്തിലോ അകലെയോ വെക്കാന്‍ പ്രത്യേകം ശ്രദ്ധിക്കണം.\n\n പിന്‍ഭാഗത്തേക്ക് ചെരിഞ്ഞ നിലയില്‍ വളരെ മയത്തോടു കൂടി മയ്യിത്തിനെ എണീപ്പി ച്ചിരുത്തണം. മയ്യിത്തിന്‍റെ തല ചായാതിരിക്കാന്‍ വലതു കൈ മയ്യിത്തിന്‍റെ ചുമലില്‍വച്ച് തള്ള വിരല്‍ പിരടിയിലെ കുഴിയില്‍ വെക്കണം. ശേഷം ഇടതു കൈ ഉപയോഗിച്ച്  മയ്യിത്തിന്‍റെ വയറ്റിന്മേല്‍ പല പ്രാവശ്യം തടവണം. മുന്‍പിന്‍ ദ്വാരങ്ങളില്‍ വിസര്‍ജ്യം തടഞ്ഞുനില്‍ക്കുന്നുണ്ടെങ്കില്‍ അത് പുറത്തുവരാന്‍ ഇത് സഹായിക്കും. അല്ലെങ്കില്‍ കുളിപ്പിച്ച ശേഷം അവ പുറത്തുവരാന്‍ സാധ്യതയുണ്ട്.\n\n നജസ് പുറത്തുവരുമ്പോള്‍ സഹായി വെള്ളം ഒഴിച്ചുകൊണ്ടിരിക്കണം. ദുര്‍ഗന്ധം അനുഭവപ്പെടാതിരിക്കാന്‍ ആദ്യാന്ത്യം സുഗന്ധം പുകയിപ്പിക്കണം. ശേഷം മയ്യിത്തിനെ മലര്‍ത്തി കിടത്തി ഇടതു കൈയില്‍ തുണി ചുറ്റിയോ ഗ്ലൗസ് ധരിച്ചോ ഗുഹ്യസ്ഥാനവും പരിസരവും വൃത്തിയാക്കി കൊടുക്കണം. മറയൊന്നും കൂടാതെ മയ്യിത്തിന്‍റെ ഔറത്ത് സ്പര്‍ശിക്കല്‍ ഹറാമാണ്. ശേഷം മയ്യിത്തിന്‍റെ ശരീരത്തിലുള്ള നജസോ അല്ലാ ത്തതോ ആയ മാലിന്യങ്ങള്‍ നീക്കം ചെയ്യണം. പിന്നെ ഇടതു കൈ വിരലില്‍ തുണിക്കഷ്ണമോ മറ്റോ ചുറ്റി ജീവിച്ചിരിക്കുന്നയാള്‍ മിസ്വാക്ക് ചെയ്യുന്നതു പോലെ വായ വൃത്തിയാക്കണം. ശേഷം ഇടതു കൈയ്യിന്‍റെ ചെറുവിരലില്‍ തുണി ചുറ്റി മൂക്കിന്‍റെ രണ്ട് ദ്വാരങ്ങളും വൃത്തിയാക്കുക.\n\n പിന്നെ മയ്യിത്തിന് പൂര്‍ണമായ വുളൂ ചെയ്തു കൊടുക്കണം. വായില്‍ വെള്ളം കൊപ്ലിക്കു മ്പോഴും മൂക്കില്‍ കയറ്റി ചീറ്റുമ്പോഴും അകത്തേക്ക് വെള്ളം കയറാതിരിക്കാന്‍ തല ചെരിച്ചു പിടിക്കണം. ശേഷം തലയും താടിയും സോപ്പോ താളിയോ ഉപയോഗിച്ച് കഴുകണം. ജടകുത്തിയ മുടിയാണെങ്കില്‍ മുടിക്കുറ്റികളിലുള്ളവ നീക്കം ചെയ്യാന്‍ ചീര്‍പ്പുപയോഗിച്ച് തലമുടി ചീകി കൊടുക്കണം. താടിയുള്ള പുരുഷനാണെങ്കില്‍ താടിയേക്കാള്‍ ആദ്യം ചീകേണ്ടത് തലമുടിയാണ്. ചീകുമ്പോള്‍ മുടി പിഴുതുപോരുന്നത് തടയാനോ കുറക്കാനോ വേണ്ടി പല്ലുകള്‍ക്കിടയില്‍ വിശാ ലതയുള്ള ചീര്‍പ്പു കൊണ്ട് സൗമ്യമായി ചീകുക. മുടി പറിഞ്ഞുപോന്നിട്ടുണ്ടെങ്കില്‍ അവ കഫന്‍ പുടവയില്‍ വച്ച് മറവ് ചെയ്യേണ്ടതാണ്. ഇത്രയും കഴിഞ്ഞാല്‍ മയ്യിത്തിന്‍റെ വലതു ഭാഗവും ശേഷം ഇടതു ഭാഗവും കഴുകണം. പിരടിയില്‍ നിന്ന് തുടങ്ങി കാല്‍പാദം വരെയാണ് കഴുകേണ്ടത്. പിന്നീട് മയ്യിത്തിനെ ഇടതു ഭാഗത്തിന്‍റെ മേല്‍ ചെരിച്ച് കിടത്തി വലതു ഭാഗം പിരടി തൊട്ട് കാല്‍പാദം വരെ കഴുകണം. പിന്നീട് വലതു ഭാഗത്തിന്‍റെ മേല്‍ ചെരിച്ച് കിടത്തി ഇടതു ഭാഗവും അതുപോലെ കഴുകണം. ഇത്രയുമായാല്‍ ഒരു പ്രാവശ്യം പൂര്‍ത്തിയായി. ഇപ്രകാരം രണ്ടു പ്രാവശ്യം കൂടി കഴുകല്‍ സുന്നത്താണ്. മൂന്നിലും എല്ലാ ആദ്യത്തേതിലും അഴുക്ക് നീക്കാന്‍ താളിയോ സോപ്പോ ഉപയോഗിക്കല്‍ സുന്നത്തുണ്ട്. രണ്ടാമത്തെ കഴുകല്‍ കൊണ്ട് താളിയും സോപ്പും നീക്കണം. മൂന്നാം പ്രാവശ്യം തലയുടെ ഭാഗത്ത് നിന്ന് ശുദ്ധജലം ഒഴിക്കണം. മൂന്നില്‍ ഒരോന്നിലും രണ്ടു പ്രാവശ്യം കഴുകിയതിനു ശേഷം ശുദ്ധജലം ഒഴിക്കണം. അല്ലെങ്കില്‍ ആറു തവണ മേല്‍പറഞ്ഞ പ്രകാരം തുടരെ കഴുകിയ ശേഷം തുടരെ മൂന്നു പ്രാവശ്യം ശുദ്ധജലമൊഴിക്കുക. ശുദ്ധജലം ഒഴിക്കുമ്പോഴും പ്രസ്തുത രൂപത്തില്‍ ചെരിച്ച് കിടത്തല്‍ സുന്നത്താണ്.\n\n മൂന്ന് പ്രാവശ്യം കൊണ്ട് ശുദ്ധിയായില്ലെങ്കില്‍ ശുദ്ധിയാകുന്നത് വരെ കഴുകണം. ഇരട്ട കൊണ്ടാണ് ശുദ്ധിയായതെങ്കില്‍ ഒന്നുകൂടി കഴുകി ഒറ്റയാക്കണം. മൂന്നു പ്രാവശ്യം ഉപയോഗിക്കുന്ന ശുദ്ധജലത്തില്‍ പകര്‍ച്ചവരാത്ത രൂപത്തില്‍ അല്‍പം കര്‍പ്പൂരം ചേര്‍ക്കല്‍ സുന്നത്താണ്. ശരീരത്തിനു ബലം നല്‍കാനും പ്രാണികളെ അകറ്റാനും അതുപകരിക്കും. അവസാന വട്ടത്തില്‍ കര്‍പ്പൂരം ഉപയോഗിക്കല്‍ ശക്തിയായ സുന്നത്തും ഉപേക്ഷിക്കല്‍ കറാഹത്തുമാണ്. കുളിപ്പിക്കുന്നതിനിടയിലും ശേഷവും സന്ധികള്‍ മയപ്പെടുത്തിക്കൊടുക്കണം. കുളി കഴിഞ്ഞാന്‍ കഫന്‍ പുടവ നനയാതിരിക്കാന്‍ നന്നായി തോര്‍ത്തണം. കുളിപ്പിക്കാന്‍ ഏറ്റവും ഉത്തമം കടല്‍ വെള്ളമാണ്.\n\n പോസ്റ്റുമോര്‍ട്ടം നടത്തിയ മയ്യിത്താണെങ്കില്‍ കുളിപ്പിക്കലിനു പുറമെ തയമ്മുമും വേണ്ടിവരും. ശരീരത്തിലെ പുറം ഭാഗങ്ങളില്‍ ചിലത് അകത്താക്കി തുന്നുന്നതിനാല്‍ ആ ഭാഗത്ത് വെള്ളം എത്തില്ല എന്നതാണ് കാരണം.\n\n മയ്യിത്തിന് അംഗശുദ്ധി വരുത്തുമ്പോഴും അതിനു ശേഷവും ചൊല്ലല്‍ സുന്നത്തുള്ള ദിക് റുകള്‍ കുളിപ്പിക്കുന്നവന്‍ ചൊല്ലണം. കുളി കഴിഞ്ഞ് കഫന്‍ ചെയ്യുന്നതിനു മുമ്പ് മയ്യിത്തില്‍ നിന്ന് വല്ല നജസും പുറത്തുവന്നാല്‍ കഴുകി വൃത്തിയാക്കല്‍ നിര്‍ബന്ധമാണ്. എന്നാല്‍ കുളി മടക്കേണ്ടതില്ല. കുളി കഴിഞ്ഞ ശേഷം മയ്യിത്തില്‍ നിന്ന് ഇന്ദ്രിയം പുറപ്പെട്ടാല്‍ അത് നീക്കലോ കുളിപ്പിക്കലോ വുളൂഅ് മാറ്റിയെടുത്തുകൊടുക്കലോ നിര്‍ബന്ധമില്ല. പുരുഷന്‍റെ മയ്യിത്ത് അന്യസ്ത്രീയോ സ്ത്രീയുടെ മയ്യിത്ത് അന്യപുരുഷനോ തൊട്ടാല്‍ മയ്യിത്തിന്‍റെ വുളൂഅ് മുറിയുകയില്ല. മയ്യിത്തില്‍ നിന്ന് ഒലിക്കുന്ന രക്തം കുളിയോടു കൂടി നില്‍ക്കുന്നില്ലെങ്കില്‍ പോലും കുളിയും അവന്‍റെ പേരിലുള്ള നിസ്കാരവും സാധുവാകുന്നതാണ്. ജീവിച്ചിരിക്കുന്ന നിത്യഅശുദ്ധിക്കാരനെ പോലെ വേണം ഇതിനെ കാണാന്‍. ഇതനുസരിച്ച് മൂത്രവാര്‍ച്ചക്കാരന്‍ ചെയ്യുന്നത് പോലെ കുളി കഴി ഞ്ഞയുടനെ രക്തം വരുന്ന ഭാഗം പഞ്ഞിവച്ച് കെട്ടി ഉടനെ നിസ്കരിക്കണം. നിസ്കാരവുമായി ബന്ധപ്പെട്ട ഗുണങ്ങള്‍ക്കല്ലാതെ നിസ്കാരം പിന്തിപ്പിച്ചാല്‍ മേല്‍പ്പറഞ്ഞ കാര്യങ്ങള്‍ മടക്കേണ്ടി വരും. നിസ്കരിക്കുന്നവരുടെ വര്‍ധനവ് നിസ് കാരവുമായി ബന്ധപ്പെട്ട ഗുണങ്ങളില്‍പെട്ടതാണ്.\n\n ഇഹ്റാം ചെയ്ത വ്യക്തിയെ കുളിപ്പിക്കുന്ന വെള്ളത്തില്‍ സുഗന്ധം ചേര്‍ക്കാനോ മുടി, നഖം എന്നിവ നീക്കാനോ പാടില്ല. അല്ലാത്തവരുടെ മുടി, നഖം എന്നിവ നീക്കല്‍ കറാഹത്താണ്. ഇദ്ദയിരിക്കുന്ന സ്ത്രീ മരണപ്പെട്ടാല്‍ അവളെ കുളിപ്പിക്കുന്ന വെള്ളത്തില്‍ സുഗന്ധം ചേര്‍ക്കാവുന്നതാണ്.',
    ),
    Deadboadyverbmodel(
      title: 'മയ്യിത്ത് കുളിപ്പിക്കേണ്ടതാര്?',
      description:
          'ആണിനെ ആണും പെണ്ണിനെ പെണ്ണുമാണ് കുളിപ്പിക്കേണ്ടത്. എന്നാല്‍ ഭാര്യക്ക് ഭര്‍ത്താ വിനെയും ഭര്‍ത്താവിന് ഭാര്യയെയും കുളിപ്പി ക്കാവുന്നതാണ്. പെണ്ണിനെ കുളിപ്പിക്കാന്‍ അന്യപുരുഷനും ആണിനെ കുളിപ്പിക്കാന്‍ അന്യ സ്ത്രീയുമല്ലാതെ മറ്റാരുമില്ലാതെ വന്നാല്‍ ആ മയ്യിത്തിനെ കുളിപ്പിക്കേണ്ടതില്ലെന്നാണ് പ്രബലാഭിപ്രായം. ആ മയ്യിത്തിന് തയമ്മും ചെയ്തു കൊടുക്കുകയാണ് വേണ്ടത്. എന്നാല്‍ മയ്യിത്ത് കുട്ടിയാണെങ്കില്‍ ഇരുവിഭാഗത്തില്‍ പെട്ടവര്‍ക്കും കുളിപ്പിക്കാം. പുരുഷനെ കുളിപ്പിക്കാന്‍ ഏറ്റവും ബന്ധപ്പെട്ടത് ക്രമപ്രകാരം പിതാവ്, പിതാമഹന്‍, മകന്‍, മകന്‍റെ മകന്‍, സഹോദരന്‍, സഹോദര പുത്ര ന്‍ എന്നിവരാണ്. സ്ത്രീയെ കുളിപ്പിക്കാന്‍ ഏറ്റവും ബന്ധപ്പെട്ടത് ക്രമപ്രകാരം മകള്‍, മകളുടെ മകള്‍, സഹോദരി, സഹോദരീ പുത്രി എന്നിവരും.',
      imagePath: 'assets/images/deadbody bathing.png',
      instructions: '',
    ),
    Deadboadyverbmodel(
      title: ' മയ്യിത്ത് കഫന്‍ ചെയ്യേണ്ടത്',
      description:
          'ജീവിതകാലത്ത് ധരിക്കാവുന്ന വസ്ത്രം കൊണ്ടാണ് മരണ ശേഷം കഫന്‍ ചെയ്യേണ്ടത്. കഫന്‍ തുണി മുന്‍കൂട്ടി തയ്യാറാക്കിവെക്കല്‍ സുന്നത്തില്ലെങ്കിലും ഹലാലാണെന്ന് ഉറപ്പുള്ളതോ സ്വാലിഹീങ്ങളില്‍ നിന്ന് ലഭിച്ചതോ ആയ വസ്ത്രം സൂക്ഷിച്ചുവെക്കാവുന്നതാണ്.\n\n കഫന്‍ തുണികള്‍ വലുപ്പത്തിലും മേന്മയിലും വ്യത്യാസമുള്ളവയാണെങ്കില്‍ മേന്മയും വലുപ്പവുമുള്ളത് ആദ്യം വിരിക്കണം. മൂന്നാം തുണി രണ്ടാമത്തേതിന്‍റെ മുകളിലും വിരിക്കണം. ഓരോ തുണിയും അതിന്‍റെ മുകളില്‍ മറ്റു തുണി വിരിക്കും മുമ്പ് കര്‍പ്പൂരമോ ഊദോ ഉപയോഗിച്ച് പുകയിപ്പിക്കലും പനനീരോ മറ്റു സുഗന്ധ ദ്രവ്യങ്ങളോ അവയില്‍ പൂശലും പ്രത്യേകം സുന്നത്താണ്. മയ്യിത്ത് ഇഹ്റാം ചെയ്തയാളാണെങ്കില്‍ ഇവിടെയും സുഗന്ധം പാടില്ല. മയ്യിത്തിനെ തുണിയില്‍ മലര്‍ത്തി കിടത്തി ഇരുചന്തികള്‍ക്കിടയില്‍ പഞ്ഞിവച്ച് ശേഷം ഒരു തുണിക്കഷ്ണം കൊണ്ട് അവ നന്നായി കെട്ടണം. മയ്യിത്തില്‍ നിന്ന് വല്ലതും പുറപ്പെടുന്നത് തടയും വിധമായിരിക്കണം ഈ കെട്ട്.\n\n കണ്ണ്, ചെവി, വായ, മൂക്കിന്‍റെ ദ്വാരങ്ങള്‍ തുട ങ്ങിയ തുറക്കപ്പെട്ട ദ്വാരങ്ങളിലും മൂക്ക്, നെറ്റിത്തടം, രണ്ട് മുട്ടുകാല്‍, മുന്‍കൈകളുടെ പള്ളകള്‍, കാല്‍വിരലുകള്‍ എന്നീ സുജൂദിന്‍റെ അവയവങ്ങളിലും പഞ്ഞി വെക്കണം. ശേഷം ഓരോ തുണിയും ഇരുഭാഗത്തു നിന്നും ചുറ്റണം. തുണികളുടെ രണ്ടറ്റങ്ങള്‍ തലഭാഗത്തും കാലുകളുടെ ഭാഗത്തും ചുരുട്ടിക്കെട്ടണം. കാലുകളുടെ ഭാഗത്തുള്ളതിനേക്കാള്‍ കൂടുതല്‍ നീളം തലഭാഗത്ത് വേണം. സ്ത്രീകളുടെ മാറിടം ചുമന്ന് പോകുമ്പോള്‍ പിടക്കാതിരിക്കാന്‍ തുണി ഉപയോഗിച്ച് പ്രത്യേകം കെട്ടണം. തലയുടെയും കാലുകളുടെയും ഭാഗത്തും നടുക്കുമായി മൂന്ന് കെട്ടുകളിടുകയും ഖബറിലേക്കിറക്കുമ്പോള്‍ അവ അഴിക്കുകയും വേണം. ഇഹ്റാമിലായി മരണപ്പെട്ടാല്‍ തുന്നപ്പെട്ട വസ്ത്രം ധരിപ്പിക്കുന്നതും പുരുഷന്‍റെ തലയും സ്ത്രീയുടെ മുഖവും മുന്‍കൈ കളും മറക്കുന്നതും സുഗന്ധം ഉപയോഗിക്കുന്നതും നിഷിദ്ധമാണ്.',
      imagePath: 'assets/images/deadbody covering.png',
      instructions: '',
    ),
  ];

  final PageController _pageController = PageController();
  int _currentIndex = 0;

  void _goToNextPage() {
    if (_currentIndex < _prayerSteps.length - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      setState(() {
        _currentIndex++;
      });
    }
  }

  void _goToPreviousPage() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      setState(() {
        _currentIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    MediaQuery.of(context).orientation == Orientation.portrait;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorClass.bottomsheet1,
            ColorClass.bottomsheet2,
          ],
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.close, color: ColorClass.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            'മയ്യിത്ത് കര്‍മ്മങ്ങള്‍',
            style: GoogleFonts.anekMalayalam(
              color: ColorClass.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            // Main content
            Column(
              children: [
                _buildPageIndicator(),
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: _prayerSteps.length,
                    itemBuilder: (context, index) {
                      return _buildPrayerStepPage(
                        _prayerSteps[index],
                        screenSize,
                        isPortrait,
                      );
                    },
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
              ],
            ),

            // Navigation buttons positioned at the bottom
            
          ],
        ),
      ),
    );
  }

  Widget _buildPrayerStepPage(
      Deadboadyverbmodel step, Size screenSize, bool isPortrait) {
    final imageHeight = isPortrait
        ? screenSize.height * 0.3 // 30% of screen height in portrait
        : screenSize.height * 0.5; // 50% of screen height in landscape

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Container with responsive height
          if (step.imagePath.isNotEmpty)
            Container(
              width: double.infinity,
              height: imageHeight,
              margin:
                  EdgeInsets.all(screenSize.width * 0.04), // Responsive margin
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  step.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),

          // Title with responsive padding and font size
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
            child: Text(
              step.title,
              style: GoogleFonts.anekMalayalam(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // Description with responsive padding and font size
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.04,
              vertical: screenSize.height * 0.02,
            ),
            child: Text(
              step.description,
              style: GoogleFonts.anekMalayalam(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // Instructions with responsive padding and font size
          if (step.instructions.isNotEmpty)
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.04,
                vertical: screenSize.height * 0.02,
              ),
              child: Text(
                step.instructions,
                style: GoogleFonts.anekMalayalam(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(_prayerSteps.length * 2 - 1, (index) {
          if (index % 2 == 0) {
            final stepIndex = index ~/ 2;
            final currentPage =
                (_pageController.hasClients ? _pageController.page ?? 0 : 0)
                    .round();
            final isActive = stepIndex == currentPage;
            final isCompleted = stepIndex < currentPage;

            return Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isCompleted
                    ? ColorClass.secondaryColor
                    : isActive
                        ? ColorClass.secondaryColor
                        : Colors.grey[700],
              ),
              child: Center(
                child: Text(
                  '${stepIndex + 1}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          } else {
            final lineIndex = index ~/ 2;
            final currentPage =
                (_pageController.hasClients ? _pageController.page ?? 0 : 0)
                    .round();
            return Container(
              width: 20,
              height: 2,
              color: lineIndex < currentPage
                  ? ColorClass.secondaryColor
                  : Colors.grey[700],
            );
          }
        }),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
