import 'package:flutter/material.dart';
import 'package:salat_al_janaza/constants/textstyleclass.dart';
import 'package:salat_al_janaza/screen/SalatAlJanazaScreen.dart';

// Import your settings screen

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'സലാത്തുൽ ജനാസ',
          style: TextStyleClass.primaryFontMalayalam(24, Colors.white, FontWeight.bold),
        ),
        centerTitle: true,
      
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hero Image
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/janza image.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Main Menu Card
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SalatAlJanazaScreen()),
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 47, 47, 48),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.book, color: Colors.blue, size: 32),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ജനാസ നമസ്കാരം',
                              style: TextStyleClass.primaryFontMalayalam(
                                20,
                                Colors.white,
                                FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'നമസ്കാര രീതികൾ പഠിക്കാം',
                              style: TextStyleClass.primaryFontMalayalam(
                                14,
                                Colors.grey,
                                FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios, color: Colors.blue),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Description
              Text(
                'ജനാസ നമസ്കാരത്തിൻ്റെ പ്രാധാന്യം',
                style: TextStyleClass.primaryFontMalayalam(18, Colors.white, FontWeight.w500),
              ),
              const SizedBox(height: 8),
              Text(
                'ജനാസ നമസ്കാരം ഫർദ് കിഫായ ആണ്. അതായത് ഒരു പ്രദേശത്തെ കുറച്ച് മുസ്ലിംകൾ നിർവഹിച്ചാൽ മറ്റുള്ളവരിൽ നിന്ന് ആ ബാധ്യത നീങ്ങുന്നു. എന്നാൽ ആരും നിർവഹിക്കാതിരുന്നാൽ ആ പ്രദേശത്തെ മുഴുവൻ മുസ്ലിംകളും കുറ്റക്കാരാവുന്നു.',
                style: TextStyleClass.primaryFontMalayalam(16, Colors.grey, FontWeight.w300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}