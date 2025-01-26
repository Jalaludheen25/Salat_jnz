import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PrayerStepCarousel extends StatefulWidget {
  final int currentIndex;
  final Function(int) onPageChanged;

  const PrayerStepCarousel({
    Key? key,
    required this.currentIndex,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  State<PrayerStepCarousel> createState() => _PrayerStepCarouselState();
}

class _PrayerStepCarouselState extends State<PrayerStepCarousel> {
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(5, (index) {
          return GestureDetector(
            onTap: () => widget.onPageChanged(index),
            child: Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: index == widget.currentIndex ? Colors.blue : Colors.grey[800],
                shape: BoxShape.circle,
              ),
              // child: Center(
              //   child: Text(
              //     '${index + 1}',
              //     style: TextStyle(
              //       color: index == widget.currentIndex ? Colors.white : Colors.grey[400],
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              
            ),
          );
        }),
      ),
    );
  }
}

extension on CarouselController {
  void animateToPage(int index) {}
} 