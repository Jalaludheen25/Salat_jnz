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
  int? _expandedIndex;

  final List<Deadboadyverbmodel> _deadBodySteps = [
    Deadboadyverbmodel(
      title: 'കലിമ ചൊല്ലിക്കൊടുക്കല്‍',
      description: 'മരണാസന്നനായ വ്യക്തിയുടെ അടുത്ത് ഇരുന്ന് കലിമ ചൊല്ലിക്കൊടുക്കുക.',
      imagePath: 'assets/images/deadbody bathing.png',
      instructions: 'മരണാസന്നനായ വ്യക്തിയുടെ അടുത്ത് ഇരുന്ന് കലിമ ചൊല്ലിക്കൊടുക്കുക. അദ്ദേഹത്തിന്റെ അവസാന വാക്ക് ലാ ഇലാഹ ഇല്ലല്ലാഹ് ആയിരിക്കാനാണ് ഇത്.',
    ),
    Deadboadyverbmodel(
      title: 'മരണാസന്നനെ കിടത്തല്‍',
      description: 'മരണാസന്നനെ ഖിബ്‌ലയിലേക്ക് തിരിച്ച് കിടത്തുക.',
      imagePath: 'assets/images/deadbodylaydown.png',
      instructions: 'മരണാസന്നനെ വലതുവശം ഖിബ്‌ലയിലേക്ക് തിരിച്ച് കിടത്തുക. അത് സാധിക്കുന്നില്ലെങ്കിൽ മുഖം ഖിബ്‌ലയിലേക്ക് തിരിച്ച് മല്ലാക്കം കിടത്തുക.',
    ),
    Deadboadyverbmodel(
      title: 'ഖുര്‍ആന്‍ പാരായണം',
      description: 'മരണാസന്നന്റെ അടുത്തിരുന്ന് സൂറത്തു യാസീൻ ഓതുക.',
      imagePath: 'assets/images/deadbodylaydown.png',
      instructions: 'മരണാസന്നന്റെ അടുത്തിരുന്ന് സൂറത്തു യാസീൻ ഓതുക. നബി(സ) പറഞ്ഞു: നിങ്ങളുടെ മരണാസന്നരുടെ അടുത്ത് യാസീൻ ഓതുക.',
    ),
    Deadboadyverbmodel(
      title: 'കണ്ണുകള്‍ അടക്കല്‍',
      description: 'മരണം സംഭവിച്ചാൽ കണ്ണുകൾ അടച്ചുവെക്കുക.',
      imagePath: 'assets/images/deadbodylaydown.png',
      instructions: 'മരണം സംഭവിച്ചാൽ കണ്ണുകൾ അടച്ചുവെക്കുക. നബി(സ) അബൂസലമയുടെ കണ്ണുകൾ അടച്ചുവെച്ചു.',
    ),
    Deadboadyverbmodel(
      title: 'കഫന്‍ ചെയ്യല്‍',
      description: 'മൃതദേഹം വൃത്തിയായി കഫൻ ചെയ്യുക.',
      imagePath: 'assets/images/deadbodylaydown.png',
      instructions: 'മൃതദേഹം വൃത്തിയായി കഫൻ ചെയ്യുക. പുരുഷന് മൂന്നും സ്ത്രീക്ക് അഞ്ചും തുണി ഉപയോഗിക്കാം.',
    ),
    Deadboadyverbmodel(
      title: 'മയ്യിത്ത് സംസ്കരിക്കല്‍',
      description: 'ജനാസ നമസ്കാരത്തിന് ശേഷം മയ്യിത്ത് ഖബറിൽ സംസ്കരിക്കുക.',
      imagePath: 'assets/images/deadbodylaydown.png',
      instructions: 'ജനാസ നമസ്കാരത്തിന് ശേഷം മയ്യിത്ത് ഖബറിൽ സംസ്കരിക്കുക. ഖബർ വലതുവശത്തേക്ക് ചരിച്ച് കിടത്തി ഖിബ്‌ലയിലേക്ക് മുഖം തിരിച്ചുവെക്കുക.',
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
          'മയ്യിത്ത് സംസ്കരണം',
          style: GoogleFonts.anekMalayalam(
            fontSize: 22,
            color: ColorClass.primaryColor,
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
              'മരണാസന്നനുമായി ബന്ധപ്പെട്ട് ശ്രദ്ധിക്കേണ്ടത്',
              style: GoogleFonts.anekMalayalam(
                fontSize: 15,
                color: ColorClass.black.withOpacity(0.6),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _deadBodySteps.length,
              itemBuilder: (context, index) {
                final step = _deadBodySteps[index];
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
                                  color: ColorClass.primaryLight,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    '${index + 1}',
                                    style: TextStyle(
                                      color: ColorClass.primaryColor,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  step.title,
                                  style: GoogleFonts.anekMalayalam(
                                    fontSize: 18,
                                    color: ColorClass.black,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    step.description,
                                    style: GoogleFonts.anekMalayalam(
                                      fontSize: 18,
                                      color: ColorClass.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  if (step.instructions.isNotEmpty) ...[
                                    const SizedBox(height: 16),
                                    Text(
                                      step.instructions,
                                      style: GoogleFonts.anekMalayalam(
                                        fontSize: 18,
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
      ),
    );
  }
}
