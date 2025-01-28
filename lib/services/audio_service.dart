import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';


class AudioService extends ChangeNotifier {
  static final AudioService _instance = AudioService._internal();
  factory AudioService() => _instance;
  
  AudioService._internal() {
    _initAudioPlayer();
  }

  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  bool get isPlaying => _isPlaying;
  String? _currentAssetPath;

  Future<void> _initAudioPlayer() async {
    _audioPlayer.playerStateStream.listen((state) {
      _isPlaying = state.playing;
      notifyListeners();
    });
  }

  Future<void> playPauseAudio(String assetPath) async {
    try {
      if (_isPlaying) {
        await _audioPlayer.pause();
        _isPlaying = false;
      } else {
        // If it's a different audio file or no audio is loaded
        if (_currentAssetPath != assetPath) {
          await _audioPlayer.stop();
          await _audioPlayer.setAsset(assetPath);
          _currentAssetPath = assetPath;
        }
        await _audioPlayer.play();
        _isPlaying = true;
      }
      notifyListeners();
    } catch (e) {
      debugPrint('Error playing/pausing audio: $e');
      _isPlaying = false;
      notifyListeners();
      rethrow;
    }
  }

  Future<void> stop() async {
    try {
      await _audioPlayer.stop();
      _isPlaying = false;
      notifyListeners();
    } catch (e) {
      debugPrint('Error stopping audio: $e');
    }
  }

  Future<void> replay() async {
    try {
      if (_currentAssetPath != null) {
        await _audioPlayer.seek(Duration.zero);
        await _audioPlayer.play();
        _isPlaying = true;
        notifyListeners();
      }
    } catch (e) {
      debugPrint('Error replaying audio: $e');
      rethrow;
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
} 