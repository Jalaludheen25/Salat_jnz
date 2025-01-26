import 'package:flutter/material.dart';
import 'package:your_project/services/audio_service.dart';

class PrayerStepScreen extends StatefulWidget {
  // ... (existing code)
}

class _PrayerStepScreenState extends State<PrayerStepScreen> {
  // ... (existing code)

  @override
  Widget build(BuildContext context) {
    // ... (existing code)

    return Scaffold(
      // ... (existing code)

      body: Column(
        // ... (existing code)
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            final audioService = AudioService();
            await audioService.playAudio(step.audioPath);
            setState(() {});
          } catch (e) {
            // Show error to user
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error playing audio: $e'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
} 