import 'package:flutter_test/flutter_test.dart';
import 'package:ojisan_bounce/models/difficulty.dart';
import 'package:ojisan_bounce/models/ojisan.dart';
import 'package:ojisan_bounce/utils/game_logic.dart';

void main() {
  group('GameLogic', () {
    group('rollDice', () {
      test('1から6の範囲の値を返す', () {
        for (int i = 0; i < 100; i++) {
          final result = GameLogic.rollDice();
          expect(result, greaterThanOrEqualTo(1));
          expect(result, lessThanOrEqualTo(6));
        }
      });
    });

    group('calculateNextStation', () {
      test('通常の移動が正しく計算される', () {
        expect(GameLogic.calculateNextStation(0, 3, 10), 3);
        expect(GameLogic.calculateNextStation(5, 2, 10), 7);
      });

      test('最終駅を超える場合は折り返す', () {
        final result = GameLogic.calculateNextStation(8, 5, 10);
        expect(result, greaterThanOrEqualTo(0));
        expect(result, lessThan(10));
      });

      test('負の値を返さない', () {
        final result = GameLogic.calculateNextStation(0, 0, 10);
        expect(result, greaterThanOrEqualTo(0));
      });
    });

    group('shouldEncounterOjisan', () {
      test('出現率0.0では常にfalse', () {
        for (int i = 0; i < 50; i++) {
          expect(GameLogic.shouldEncounterOjisan(0.0), false);
        }
      });

      test('出現率1.0では常にtrue', () {
        for (int i = 0; i < 50; i++) {
          expect(GameLogic.shouldEncounterOjisan(1.0), true);
        }
      });

      test('出現率0.5では確率的に出現する', () {
        int encounterCount = 0;
        const trials = 1000;
        for (int i = 0; i < trials; i++) {
          if (GameLogic.shouldEncounterOjisan(0.5)) {
            encounterCount++;
          }
        }
        // 統計的に40%〜60%の範囲に収まるはず
        expect(encounterCount, greaterThan(trials * 0.4));
        expect(encounterCount, lessThan(trials * 0.6));
      });
    });

    group('generateRandomOjisan', () {
      test('デフォルトタイプからおじさんを生成できる', () {
        final ojisan = GameLogic.generateRandomOjisan();
        expect(ojisan.id, isNotEmpty);
        expect(ojisan.name, isNotEmpty);
        expect(ojisan.evilness, greaterThanOrEqualTo(1));
        expect(ojisan.evilness, lessThanOrEqualTo(5));
        expect(ojisan.emoji, isNotEmpty);
        expect(ojisan.basePoints, greaterThan(0));
      });

      test('カスタムタイプからおじさんを生成できる', () {
        final customTypes = [
          {
            'id': 'test_ojisan',
            'name': 'テストおじさん',
            'evilness': 3,
            'emoji': '🧪',
            'basePoints': 100,
          },
        ];
        final ojisan = GameLogic.generateRandomOjisan(customTypes);
        expect(ojisan.id, 'test_ojisan');
        expect(ojisan.name, 'テストおじさん');
        expect(ojisan.evilness, 3);
        expect(ojisan.emoji, '🧪');
        expect(ojisan.basePoints, 100);
      });
    });

    group('judgeTiming', () {
      final normalDifficulty = DifficultySettings.normal();

      test('Perfect判定が正しく動作する', () {
        expect(
          GameLogic.judgeTiming(0.10, normalDifficulty),
          TimingResult.perfect,
        );
        expect(
          GameLogic.judgeTiming(-0.10, normalDifficulty),
          TimingResult.perfect,
        );
      });

      test('Great判定が正しく動作する', () {
        expect(
          GameLogic.judgeTiming(0.20, normalDifficulty),
          TimingResult.great,
        );
        expect(
          GameLogic.judgeTiming(-0.25, normalDifficulty),
          TimingResult.great,
        );
      });

      test('Good判定が正しく動作する', () {
        expect(
          GameLogic.judgeTiming(0.40, normalDifficulty),
          TimingResult.good,
        );
        expect(
          GameLogic.judgeTiming(-0.45, normalDifficulty),
          TimingResult.good,
        );
      });

      test('Miss判定が正しく動作する', () {
        expect(
          GameLogic.judgeTiming(0.60, normalDifficulty),
          TimingResult.miss,
        );
        expect(
          GameLogic.judgeTiming(-0.70, normalDifficulty),
          TimingResult.miss,
        );
      });

      test('難易度による閾値の違いが反映される', () {
        final easyDifficulty = DifficultySettings.easy();
        final hardDifficulty = DifficultySettings.hard();

        // Easy: ±300ms = Perfect
        expect(
          GameLogic.judgeTiming(0.25, easyDifficulty),
          TimingResult.perfect,
        );

        // Hard: ±50ms = Perfect
        expect(
          GameLogic.judgeTiming(0.25, hardDifficulty),
          isNot(TimingResult.perfect),
        );
      });
    });

    group('calculateOptimalTiming', () {
      final normalDifficulty = DifficultySettings.normal();

      test('悪辣度1のおじさんは最も遅いタイミング', () {
        final timing = GameLogic.calculateOptimalTiming(normalDifficulty, 1);
        expect(timing, 2000);
      });

      test('悪辣度5のおじさんは最も速いタイミング', () {
        final timing = GameLogic.calculateOptimalTiming(normalDifficulty, 5);
        expect(timing, 1600);
      });

      test('悪辣度が高いほどタイミングが速くなる', () {
        final timing1 = GameLogic.calculateOptimalTiming(normalDifficulty, 1);
        final timing3 = GameLogic.calculateOptimalTiming(normalDifficulty, 3);
        final timing5 = GameLogic.calculateOptimalTiming(normalDifficulty, 5);

        expect(timing1, greaterThan(timing3));
        expect(timing3, greaterThan(timing5));
      });

      test('難易度によってベースタイミングが変わる', () {
        final easyTiming = GameLogic.calculateOptimalTiming(
          DifficultySettings.easy(),
          3,
        );
        final hardTiming = GameLogic.calculateOptimalTiming(
          DifficultySettings.hard(),
          3,
        );

        expect(easyTiming, greaterThan(hardTiming));
      });
    });

    group('calculatePoints', () {
      test('Perfect判定で3倍ポイントを獲得', () {
        expect(GameLogic.calculatePoints(50, TimingResult.perfect), 150);
      });

      test('Great判定で2倍ポイントを獲得', () {
        expect(GameLogic.calculatePoints(50, TimingResult.great), 100);
      });

      test('Good判定で1倍ポイントを獲得', () {
        expect(GameLogic.calculatePoints(50, TimingResult.good), 50);
      });

      test('Miss判定で0ポイント', () {
        expect(GameLogic.calculatePoints(50, TimingResult.miss), 0);
      });

      test('basePointsが0の場合も正しく計算される', () {
        expect(GameLogic.calculatePoints(0, TimingResult.perfect), 0);
        expect(GameLogic.calculatePoints(0, TimingResult.great), 0);
      });
    });
  });
}
