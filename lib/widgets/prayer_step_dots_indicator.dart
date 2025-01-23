// import 'package:flutter/material.dart';
// import 'package:dots_indicator/dots_indicator.dart';

// class PrayerStepDotsIndicator extends StatefulWidget {
//   final int currentIndex;
//   final Function(int) onDotTapped;

//   const PrayerStepDotsIndicator({
//     Key? key,
//     required this.currentIndex,
//     required this.onDotTapped,
//   }) : super(key: key);

//   @override
//   State<PrayerStepDotsIndicator> createState() => _PrayerStepDotsIndicatorState();
// }

// class _PrayerStepDotsIndicatorState extends State<PrayerStepDotsIndicator> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16),
//       child: DotsIndicator(
//         dotsCount: 7,
//         position: widget.currentIndex,
//         onTap: widget.onDotTapped,
//         decorator: DotsDecorator(
//           activeColor: Colors.blue,
//           color: Colors.grey[800]!,
//           size: const Size(8.0, 8.0),
//           activeSize: const Size(24.0, 8.0),
//           activeShape: const CircleBorder(),
//         ),
//       ),
//     );
//   }
// } 