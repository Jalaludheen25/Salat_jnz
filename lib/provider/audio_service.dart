import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

/// A service to handle audio playback for prayer steps
class AudioProvider extends ChangeNotifier {
  static final AudioProvider _instance = AudioProvider._internal();
  factory AudioProvider() => _instance;
  AudioProvider._internal();

  final AudioPlayer _audioPlayer = AudioPlayer();
  String? _currentAssetPath;
  bool _isPlaying = false;

  bool get isPlaying => _isPlaying;
  String? currentAssetPath;

  // Dispose audio resources
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
  /// Play or pause the audio based on the current state
  Future<void> playPauseAudio(String assetPath) async {
    currentAssetPath = assetPath;
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

  /// Resume playback from the current position
Future<void> resume() async {
  try {
    if (_currentAssetPath != null && !_isPlaying) {
      await _audioPlayer.play();
      _isPlaying = true;
      notifyListeners();
    }
  } catch (e) {
    debugPrint('Error resuming audio: $e');
    rethrow;
  }
}

  /// Stop the current audio playback
  Future<void> stop() async {
    try {
      await _audioPlayer.stop();
      _isPlaying = false;
      notifyListeners();
    } catch (e) {
      debugPrint('Error stopping audio: $e');
      rethrow;
    }
  }

  /// Replay the current audio from the beginning
  Future<void> replay() async {
    try {
      if (_currentAssetPath != null) {
        await _audioPlayer.stop();
        await _audioPlayer.setAsset(_currentAssetPath!);
        await _audioPlayer.play();
        _isPlaying = true;
        notifyListeners();
      }
    } catch (e) {
      debugPrint('Error replaying audio: $e');
      _isPlaying = false;
      notifyListeners();
      rethrow;
    }
  }


}