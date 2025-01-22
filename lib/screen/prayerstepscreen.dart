import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salat_al_janaza/screen/provider/prayerstepsprovider.dart';

class PrayerStepsScreen extends StatelessWidget {
  const PrayerStepsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Prayer Steps',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Prayer Image Container
                  Container(
                    width: double.infinity,
                    height: 350,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        // Prayer Image
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'assets/muslim takbir.jpg', // Make sure to add this image to your assets
                            fit: BoxFit.contain,
                          ),
                        ),
                        // Play Button
                        Positioned(
                          bottom: 20,
                          right: 20,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.play_arrow,
                              color: Colors.blue,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Takbeer Title
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'തക്ബീർ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'തക്ബീർ പറയുക:',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Arabic Text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'അല്ലാഹു അക്ബർ',
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Meaning
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'അല്ലാഹു ഏറ്റവും വലിയവനാണ്.',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Instructions
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'പുരുഷന്മാർ കൈകൾ ചെവികളോളം ഉയർത്തണം. സ്ത്രീകൾ തോളോളം ഉയർത്തിയാൽ മതി.',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Bottom Dots Indicator
          Consumer<PrayerStepsProvider>(
            builder: (context, provider, child) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    7,
                    (index) => GestureDetector(
                      onTap: () => provider.setCurrentPage(index),
                      child: Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == provider.currentPage ? Colors.blue : Colors.grey[800],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}