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
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, // Fixed height for the entire widget
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CarouselSlider.builder(
            itemCount: 6,
            options: CarouselOptions(
              height: 20.0,
              initialPage: widget.currentIndex,
              enableInfiniteScroll: false,
              viewportFraction: 0.3,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                widget.onPageChanged(index);
              },
            ),
            itemBuilder: (context, index, realIndex) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.25,
                 margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: index == widget.currentIndex ? Colors.blue : Colors.grey[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                // child: Center(
                //   child: Text(
                //     '${index + 1}',
                //     style: TextStyle(
                //       fontSize: 16.0,
                //       color: index == widget.currentIndex ? Colors.white : Colors.grey,
                //     ),
                //   ),
                // ),
              );
            },
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(6, (index) {
              return Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  color: index == widget.currentIndex ? Colors.blue : Colors.grey[800],
                  shape: BoxShape.circle,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
} 