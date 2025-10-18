/// サウンド管理サービス
library;

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

/// サウンド管理サービス
class SoundService {
  static final SoundService _instance = SoundService._internal();
  factory SoundService() => _instance;
  SoundService._internal();

  final Map<String, AudioPlayer> _players = {};
  bool _isMuted = false;

  /// 初期化
  Future<void> initialize() async {
    _players['perfect'] = AudioPlayer();
    _players['great'] = AudioPlayer();
    _players['good'] = AudioPlayer();
    _players['miss'] = AudioPlayer();
    _players['dice'] = AudioPlayer();
    _players['appear'] = AudioPlayer();
    _players['win'] = AudioPlayer();
    _players['lose'] = AudioPlayer();

    for (final player in _players.values) {
      await player.setVolume(0.7);
    }
  }

  /// ミュート設定
  void setMuted(bool muted) {
    _isMuted = muted;
  }

  /// 音声再生ヘルパー
  Future<void> _playSound(String name, String asset) async {
    if (_isMuted) return;

    final player = _players[name];
    if (player != null) {
      try {
        await player.stop();
        await player.play(AssetSource(asset));
      } catch (e) {
        // 音声再生失敗時はバイブレーションのみ
      }
    }

    // バイブレーション
    switch (name) {
      case 'perfect':
        HapticFeedback.mediumImpact();
        break;
      case 'great':
        HapticFeedback.lightImpact();
        break;
      case 'good':
        HapticFeedback.selectionClick();
        break;
      case 'miss':
        HapticFeedback.heavyImpact();
        break;
      case 'dice':
        HapticFeedback.selectionClick();
        break;
      case 'appear':
        HapticFeedback.mediumImpact();
        break;
      case 'win':
        HapticFeedback.heavyImpact();
        break;
      case 'lose':
        HapticFeedback.heavyImpact();
        break;
    }
  }

  /// Perfect音
  Future<void> playPerfect() async {
    await _playSound('perfect', 'sounds/perfect.wav');
  }

  /// Great音
  Future<void> playGreat() async {
    await _playSound('great', 'sounds/great.wav');
  }

  /// Good音
  Future<void> playGood() async {
    await _playSound('good', 'sounds/good.wav');
  }

  /// Miss音
  Future<void> playMiss() async {
    await _playSound('miss', 'sounds/miss.wav');
  }

  /// サイコロ音
  Future<void> playDiceRoll() async {
    await _playSound('dice', 'sounds/dice.wav');
  }

  /// おじさん出現音
  Future<void> playOjisanAppear() async {
    await _playSound('appear', 'sounds/appear.wav');
  }

  /// ゲーム勝利音
  Future<void> playWin() async {
    await _playSound('win', 'sounds/win.wav');
  }

  /// ゲーム敗北音
  Future<void> playLose() async {
    await _playSound('lose', 'sounds/lose.wav');
  }

  /// リソース解放
  Future<void> dispose() async {
    for (final player in _players.values) {
      await player.dispose();
    }
    _players.clear();
  }
}
