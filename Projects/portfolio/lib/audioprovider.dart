import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';

class AudioProvider with ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;

  final String _assetPath = 'u-said-it-v13-1167(high bitrate).mp3';

  AudioProvider() {
    // Keep internal state in sync with the player's state
    _audioPlayer.onPlayerStateChanged.listen((state) {
      _isPlaying = state == PlayerState.playing;
      notifyListeners();
    });
  }

  bool get isPlaying => _isPlaying;

  void togglePlayPause() {
    if (_isPlaying) {
      _audioPlayer.pause();
    } else {
      // Ensure we play the asset (play starts from the beginning if not already set)
      _audioPlayer.play(AssetSource(_assetPath));
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}
