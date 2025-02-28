import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salat_al_janaza/constants/colorclass.dart';
import 'package:salat_al_janaza/constants/iconclass.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.secondaryColor,
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
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: const Color(0xFF009688),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    IconClass.applogo,
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
                  color: ColorClass.white,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Text(
                ' Janaza Guide is a dedicated app designed to provide guidance on performing Janaza (funeral) prayers in accordance with Islamic traditions. It offers step-by-step instructions, supplications, and essential rulings related to the funeral prayer, ensuring that users can fulfill their religious duties with clarity and confidence. Whether you\'re attending a Janaza for the first time or seeking to deepen your understanding, this app serves as a reliable companion for all essential aspects of the prayer.\n\nThe app also includes information on the significance of Janaza prayer, etiquette to follow, and the proper way to offer condolences. With a simple and user-friendly interface, Mayyith Namaskaram ensures accessibility for users of all backgrounds. Designed for both learning and reference, it aims to help Muslims perform this important act of worship with ease and correctness.',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: ColorClass.white,
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