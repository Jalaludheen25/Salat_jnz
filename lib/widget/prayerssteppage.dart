// import 'package:flutter/material.dart';
// import 'package:janaza_guide/constants/textstyleclass.dart';
// import 'package:janaza_guide/model/prayerstepmodel.dart';
// import 'package:janaza_guide/services/audio_service.dart';

// class PrayerStepPage extends StatefulWidget {
//   final PrayerStepModel step;
//   final double imageHeight;
//   final double titleFontSize;
//   final double descriptionFontSize;
//   final double arabicFontSize;
//   final double instructionsFontSize;

//   const PrayerStepPage({
//     Key? key,
//     required this.step,
//     required this.imageHeight,
//     required this.titleFontSize,
//     required this.descriptionFontSize,
//     required this.arabicFontSize,
//     required this.instructionsFontSize,
//   }) : super(key: key);

//   @override
//   State<PrayerStepPage> createState() => _PrayerStepPageState();
// }

// class _PrayerStepPageState extends State<PrayerStepPage> {
//   Widget _buildAudioButton({
//     required IconData icon,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.all(8),
//         decoration: BoxDecoration(
//           color: Colors.black.withOpacity(0.5),
//           borderRadius: BorderRadius.circular(30),
//         ),
//         child: Icon(
//           icon,
//           color: Colors.white,
//           size: 24,
//         ),
//       ),
//     );
//   }

//   Widget _prayerLine(String text, double fontSize) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Text(
//         text,
//         style: TextStyle(
//           fontSize: fontSize,
//           color: Colors.white,
//           fontFamily: 'Arabic',
//         ),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Image Container with responsive height
//           Container(
//             width: double.infinity,
//             height: widget.imageHeight,
//             margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
//             decoration: BoxDecoration(
//               color: Colors.grey[900],
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Stack(
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Image.asset(
//                     widget.step.imagePath,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 // Play Button
//                 Positioned(
//                   bottom: 20,
//                   right: 20,
//                   child: Row(
//                     children: [
//                       _buildAudioButton(
//                         icon: Icons.replay,
//                         onTap: () async {
//                           try {
//                             final audioService = AudioService();
//                             await audioService.replay();
//                             setState(() {});
//                           } catch (e) {
//                             if (mounted) {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 SnackBar(content: Text('Error replaying: ${e.toString()}')),
//                               );
//                             }
//                           }
//                         },
//                       ),
//                       const SizedBox(width: 8),
//                       _buildAudioButton(
//                         icon: AudioService().isPlaying ? Icons.pause : Icons.play_arrow,
//                         onTap: () async {
//                           try {
//                             final audioService = AudioService();
//                             await audioService.playPauseAudio(widget.step.audioPath);
//                             setState(() {});
//                           } catch (e) {
//                             if (mounted) {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 SnackBar(content: Text('Audio error: ${e.toString()}')),
//                               );
//                             }
//                           }
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
          
//           // Title with responsive font size
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: MediaQuery.of(context).size.width * 0.04,
//             ),
//             child: Text(
//               widget.step.title,
//               style: TextStyleClass.primaryFontMalayalam(
//                 widget.titleFontSize,
//                 Colors.white,
//                 FontWeight.w500,
//                 TextAlign.start
//               ),
//             ),
//           ),
          
//           // Description with responsive font size
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: MediaQuery.of(context).size.width * 0.04,
//               vertical: MediaQuery.of(context).size.height * 0.02,
//             ),
//             child: Text(
//               widget.step.description,
//               style: TextStyleClass.primaryFontMalayalam(
//                 widget.descriptionFontSize,
//                 Colors.grey,
//                 FontWeight.w500,
//                 TextAlign.start
//               ),
//             ),
//           ),
          
//           // Arabic Texts with responsive font size
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: MediaQuery.of(context).size.width * 0.04,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: widget.step.arabicTexts.map(
//                 (text) => _prayerLine(text, widget.arabicFontSize),
//               ).toList(),
//             ),
//           ),
          
//           // Instructions with responsive font size
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: MediaQuery.of(context).size.width * 0.04,
//             ),
//             child: Text(
//               widget.step.instructions,
//               style: TextStyleClass.primaryFontMalayalam(
//                 widget.instructionsFontSize,
//                 Colors.white,
//                 FontWeight.w300,
//                 TextAlign.center,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }