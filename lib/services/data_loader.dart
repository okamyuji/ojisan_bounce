/// データローダーサービス
library;

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:ojisan_bounce/models/station.dart';

/// データローダーサービス
class DataLoader {
  static final DataLoader _instance = DataLoader._internal();
  factory DataLoader() => _instance;
  DataLoader._internal();

  List<Station>? _cachedStations;
  List<Map<String, dynamic>>? _cachedOjisanTypes;

  /// 駅データを読み込み
  Future<List<Station>> loadStations() async {
    if (_cachedStations != null) {
      return _cachedStations!;
    }

    try {
      final jsonString = await rootBundle.loadString(
        'assets/data/stations.json',
      );
      final data = json.decode(jsonString) as Map<String, dynamic>;
      final stationsJson = data['stations'] as List<dynamic>;

      _cachedStations = stationsJson
          .map((json) => Station.fromJson(json as Map<String, dynamic>))
          .toList();

      return _cachedStations!;
    } catch (e) {
      // フォールバック: デフォルトデータを使用
      return _getDefaultStations();
    }
  }

  /// おじさんタイプデータを読み込み
  Future<List<Map<String, dynamic>>> loadOjisanTypes() async {
    if (_cachedOjisanTypes != null) {
      return _cachedOjisanTypes!;
    }

    try {
      final jsonString = await rootBundle.loadString(
        'assets/data/stations.json',
      );
      final data = json.decode(jsonString) as Map<String, dynamic>;
      final ojisanTypesJson = data['ojisan_types'] as List<dynamic>;

      _cachedOjisanTypes = ojisanTypesJson
          .cast<Map<String, dynamic>>()
          .toList();

      return _cachedOjisanTypes!;
    } catch (e) {
      // フォールバック: デフォルトデータを使用
      return _getDefaultOjisanTypes();
    }
  }

  /// デフォルト駅データ
  List<Station> _getDefaultStations() {
    return [
      const Station(id: 0, name: '始発駅', x: 0.2, y: 0.8, emoji: '🚉'),
      const Station(id: 1, name: '商店街駅', x: 0.3, y: 0.6, emoji: '🏪'),
      const Station(id: 2, name: 'オフィス街駅', x: 0.5, y: 0.4, emoji: '🏢'),
      const Station(id: 3, name: '繁華街駅', x: 0.7, y: 0.3, emoji: '🌃'),
      const Station(id: 4, name: '公園前駅', x: 0.8, y: 0.5, emoji: '🌳'),
      const Station(id: 5, name: '住宅街駅', x: 0.6, y: 0.7, emoji: '🏠'),
      const Station(id: 6, name: '終点駅', x: 0.4, y: 0.9, emoji: '🏁'),
    ];
  }

  /// デフォルトおじさんタイプデータ
  List<Map<String, dynamic>> _getDefaultOjisanTypes() {
    return [
      {
        'id': 'mansplainer',
        'name': 'マンスプおじさん',
        'evilness': 1,
        'emoji': '🤓',
        'basePoints': 10,
      },
      {
        'id': 'stalker',
        'name': 'ストーカーおじさん',
        'evilness': 2,
        'emoji': '👀',
        'basePoints': 20,
      },
      {
        'id': 'smoker',
        'name': '路上喫煙おじさん',
        'evilness': 3,
        'emoji': '🚬',
        'basePoints': 30,
      },
      {
        'id': 'drunk',
        'name': '酔っ払いおじさん',
        'evilness': 4,
        'emoji': '🍺',
        'basePoints': 40,
      },
      {
        'id': 'harasser',
        'name': 'ハラスメントおじさん',
        'evilness': 5,
        'emoji': '😡',
        'basePoints': 50,
      },
    ];
  }

  /// キャッシュをクリア
  void clearCache() {
    _cachedStations = null;
    _cachedOjisanTypes = null;
  }
}
