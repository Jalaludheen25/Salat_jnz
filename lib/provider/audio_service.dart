import 'package:flutter/material.dart';

import 'package:just_audio/just_audio.dart';

class AudioProvider with ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  String? _currentAssetPath;
  double _progress = 0.0;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  bool get isPlaying => _isPlaying;
  String? get currentAssetPath => _currentAssetPath;
  double get progress => _progress;
  Duration get duration => _duration;
  Duration get position => _position;

  AudioProvider() {
    _setupAudioPlayer();
  }

  void _setupAudioPlayer() {
    _audioPlayer.playerStateStream.listen((PlayerState state) {
      _isPlaying = state.playing;
      notifyListeners();
    });

    _audioPlayer.positionStream.listen((Duration p) {
      _position = p;
      if (_duration.inMilliseconds > 0) {
        _progress = p.inMilliseconds / _duration.inMilliseconds;
      }
      notifyListeners();
    });

    _audioPlayer.durationStream.listen((Duration? d) {
      _duration = d ?? Duration.zero;
      notifyListeners();
    });

    _audioPlayer.playerStateStream.listen((PlayerState state) {
      if (state.processingState == ProcessingState.completed) {
        _isPlaying = false;
        _position = Duration.zero;
        _progress = 0.0;
        notifyListeners();
      }
    });
  }

  Future<void> loadAudio(String assetPath) async {
    if (_currentAssetPath != assetPath) {
      await stop();
      _currentAssetPath = assetPath;
      await _audioPlayer.setAsset(assetPath);
      notifyListeners();
    }
  }

  Future<void> playPauseAudio(String assetPath) async {
    try {
      if (_currentAssetPath != assetPath) {
        // Load new audio
        await loadAudio(assetPath);
        await play();
      } else {
        // Toggle play/pause for current audio
        if (_isPlaying) {
          await pause();
        } else {
          await play();
        }
      }
    } catch (e) {
      print('Error in playPauseAudio: $e');
      rethrow;
    }
  }

  Future<void> play() async {
    try {
      await _audioPlayer.play();
      _isPlaying = true;
      notifyListeners();
    } catch (e) {
      print('Error playing audio: $e');
      rethrow;
    }
  }

  Future<void> pause() async {
    try {
      await _audioPlayer.pause();
      _isPlaying = false;
      notifyListeners();
    } catch (e) {
      print('Error pausing audio: $e');
      rethrow;
    }
  }

  Future<void> stop() async {
    try {
      await _audioPlayer.stop();
      _isPlaying = false;
      _position = Duration.zero;
      _progress = 0.0;
      notifyListeners();
    } catch (e) {
      print('Error stopping audio: $e');
      rethrow;
    }
  }
}