import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/provider/genderprovider.dart';

import 'package:janaza_guide/screen/home_screen.dart';

class GenderSelectionScreen extends StatefulWidget {
  const GenderSelectionScreen({super.key});

  @override
  State<GenderSelectionScreen> createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  Widget _buildGenderCard({
    required String label,
    required String value,
    required IconData icon,
    required bool isSelected,
    required Function(String) onSelect,
  }) {
    return InkWell(
      onTap: () => onSelect(value),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected
              ? ColorClass.primaryColor.withOpacity(0.1)
              : ColorClass.grey.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected
                ? ColorClass.primaryColor
                : ColorClass.grey.withOpacity(0.3),
            width: 1.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? ColorClass.primaryColor : ColorClass.grey,
              size: 48,
            ),
            const SizedBox(height: 16),
            Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                color:
                    isSelected ? ColorClass.primaryColor : ColorClass.black87,
              ),
            ),
            if (isSelected) ...[
              const SizedBox(height: 8),
              const Icon(
                Icons.check_circle,
                color: ColorClass.primaryColor,
                size: 24,
              ),
            ],
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.white,
      appBar: AppBar(
        backgroundColor: ColorClass.white,
        title: Center(
          child: Text(
            'Select Gender',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: ColorClass.black,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Consumer<GenderProvider>(
          builder: (context, genderProvider, child) {
            final genderOptions = [
              {
                'label': 'Male',
                'value': 'male',
                'icon': Icons.man,
              },
              {
                'label': 'Female',
                'value': 'female',
                'icon': Icons.woman,
              },
            ];

            // Check if gender is selected
            bool isGenderSelected = genderProvider.selectedGender != null &&
                genderProvider.selectedGender!.isNotEmpty;

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/icons/men.png',
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/icons/women.png',
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 1,
                      ),
                      itemCount: genderOptions.length,
                      itemBuilder: (context, index) {
                        final option = genderOptions[index];
                        final isSelected =
                            genderProvider.selectedGender == option['value'];

                        return _buildGenderCard(
                          label: option['label'] as String,
                          value: option['value'] as String,
                          icon: option['icon'] as IconData,
                          isSelected: isSelected,
                          onSelect: genderProvider.saveGender,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: isGenderSelected
                          ? ColorClass.primaryColor
                          : ColorClass.grey,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: ColorClass.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Material(
                      color: ColorClass.transparent,
                      child: InkWell(
                        onTap: isGenderSelected
                            ? () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                              }
                            : null,
                        borderRadius: BorderRadius.circular(12),
                        child: Center(
                          child: Text(
                            'Next',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: ColorClass.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
