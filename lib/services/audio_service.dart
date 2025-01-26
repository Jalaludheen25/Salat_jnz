import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:flutter/services.dart';

class AudioService {
  static final AudioService _instance = AudioService._internal();
  factory AudioService() => _instance;
  AudioService._internal() {
    _init();
  }

  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;

  Future<void> _init() async {
    try {
      await _audioPlayer.setAsset('assets/audio/Allah_Hu_Akbar_voice.mp3');
      _audioPlayer.playerStateStream.listen((state) {
        isPlaying = state.playing;
      });
    } catch (e) {
      debugPrint('Error initializing audio: $e');
    }
  }

  Future<void> playAudio(String assetPath) async {
    try {
      print('Attempting to play audio: $assetPath');
      
      // Dispose previous audio if any
      await _audioPlayer.stop();
      
      // Load and play the audio
      await _audioPlayer.setAsset(assetPath);
      await _audioPlayer.play();
      
      print('Audio started playing successfully');
    } catch (e) {
      print('Error playing audio: $e');
      rethrow;
    }
  }

  Future<void> stopAudio() async {
    try {
      debugPrint('Stopping audio...');
      await _audioPlayer.stop();
      debugPrint('Audio stopped successfully');
    } catch (e) {
      debugPrint('Error stopping audio: $e');
    }
  }

  Future<void> dispose() async {
    await _audioPlayer.dispose();
  }
} 