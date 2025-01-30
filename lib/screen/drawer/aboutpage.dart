import 'package:flutter/material.dart';
import 'package:salat_al_janaza/constants/colorclass.dart';
import 'package:salat_al_janaza/constants/iconclass.dart';
import 'package:salat_al_janaza/constants/textstyleclass.dart';


class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () => Navigator.pop(context),
        ),
        title:  Text(
          'About ',
          style: TextStyleClass.primaryFont600(16, Colors.white,),
        ),
        
        backgroundColor: ColorClass.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            const SizedBox(height: 20),
            // Logo
            Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: const Color(0xFF009688), // Teal color for the logo
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(IconClass.applogo, // You'll need to add this asset
              width: 100,
              height: 100,
            ),
              ),
            ),
            const SizedBox(height: 20),
            // Malayalam Text (You might need to use a custom font)
             Text(
              'Mayyith Namaskaram',
              style: TextStyleClass.primaryFont600(18, Colors.blue,),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            // Address
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'Mayyith Namaskaram is a dedicated app designed to provide guidance on performing Janaza (funeral) prayers in accordance with Islamic traditions. It offers step-by-step instructions, supplications, and essential rulings related to the funeral prayer, ensuring that users can fulfill their religious duties with clarity and confidence. Whether you’re attending a Janaza for the first time or seeking to deepen your understanding, this app serves as a reliable companion for all essential aspects of the prayer.The app also includes information on the significance of Janaza prayer, etiquette to follow, and the proper way to offer condolences. With a simple and user-friendly interface, Mayyith Namaskaram ensures accessibility for users of all backgrounds. Designed for both learning and reference, it aims to help Muslims perform this important act of worship with ease and correctness.',
                    style: TextStyleClass.primaryFont600(16, Colors.white,),
                    textAlign: TextAlign.justify, 
                  ),
                 
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Web and Email
           
            // Privacy Policy
            
            const SizedBox(height: 20),
              Text(
              'Privacy Policy',
              style: TextStyleClass.primaryFont600(16, ColorClass.grey,),
            ),
            
            const SizedBox(height: 5),
            // D4DX logo
            Image.asset(
              'assets/images/D4DX.png', // You'll need to add this asset
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}