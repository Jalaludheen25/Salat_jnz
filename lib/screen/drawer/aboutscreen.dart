import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'About',
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: ColorClass.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: ColorClass.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Logo
              Center(
               child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/icons/appicon.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
              ),
              const SizedBox(height: 20),
              Text(
                'Janaza Guide',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: ColorClass.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Text(
                ' When someone dies, it is the responsibility of the living to give them a proper burial according to Islamic law. It is one of the Fard Kifayah, or social obligations.\n\nThis is a simple yet comprehensive guide that describes the rules, methods, and etiquettes to be followed at various stages of funeral rites, from visiting the deceased to burying the deceased. We welcome your comments and suggestions.',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: ColorClass.black,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 40),
              Text(
                'Powerd By',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: ColorClass.white,
                  fontWeight: FontWeight.w500,
                ),
              ),

              Image.asset(
                'assets/images/D4DX.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
