import 'package:flutter_test/flutter_test.dart';
import 'package:ojisan_bounce/models/difficulty.dart';
import 'package:ojisan_bounce/models/game_state.dart';
import 'package:ojisan_bounce/models/player.dart';
import 'package:ojisan_bounce/models/station.dart';

void main() {
  group('GameState', () {
    final testStations = [
      const Station(
        id: 0,
        name: '始発駅',
        x: 0.1,
        y: 0.1,
        emoji: '🏠',
        visited: false,
      ),
      const Station(
        id: 1,
        name: '公園',
        x: 0.3,
        y: 0.2,
        emoji: '🌳',
        visited: false,
      ),
      const Station(
        id: 2,
        name: '商店街',
        x: 0.5,
        y: 0.1,
        emoji: '🛍️',
        visited: false,
      ),
    ];

    test('初期状態が正しく生成される', () {
      final state = GameState.initial(testStations);

      expect(state.player.currentStationId, 0);
      expect(state.player.justicePoints, 0);
      expect(state.stations.length, 3);
      expect(state.phase, GamePhase.idle);
      expect(state.difficulty.level, DifficultyLevel.normal);
      expect(state.currentDiceValue, null);
      expect(state.currentEncounter, null);
      expect(state.encounterHistory, isEmpty);
      expect(state.isGameWon, false);
    });

    test('難易度を指定して初期状態を生成できる', () {
      final easyState = GameState.initial(
        testStations,
        difficultyLevel: DifficultyLevel.easy,
      );
      expect(easyState.difficulty.level, DifficultyLevel.easy);

      final hardState = GameState.initial(
        testStations,
        difficultyLevel: DifficultyLevel.hard,
      );
      expect(hardState.difficulty.level, DifficultyLevel.hard);
    });

    test('copyWithで状態を更新できる', () {
      final state = GameState.initial(testStations);
      final updated = state.copyWith(
        phase: GamePhase.rollingDice,
        currentDiceValue: 5,
      );

      expect(updated.phase, GamePhase.rollingDice);
      expect(updated.currentDiceValue, 5);
      expect(updated.player, state.player);
    });
  });

  group('GameStateExtension', () {
    final testStations = [
      const Station(
        id: 0,
        name: '始発駅',
        x: 0.1,
        y: 0.1,
        emoji: '🏠',
        visited: false,
      ),
      const Station(
        id: 1,
        name: '公園',
        x: 0.3,
        y: 0.2,
        emoji: '🌳',
        visited: false,
      ),
      const Station(
        id: 2,
        name: '商店街',
        x: 0.5,
        y: 0.1,
        emoji: '🛍️',
        visited: false,
      ),
    ];

    group('isGameOver', () {
      test('全駅訪問＋目標達成でゲーム終了', () {
        final state = GameState.initial(testStations).copyWith(
          player: const Player(
            visitedStations: [0, 1, 2],
            justicePoints: 150,
            ojisanDefeated: 15,
            turnCount: 10,
          ),
        );

        expect(state.isGameOver, true);
      });

      test('最大ターン到達でゲーム終了', () {
        final state = GameState.initial(testStations).copyWith(
          player: const Player(
            turnCount: 30,
            justicePoints: 50,
            ojisanDefeated: 5,
          ),
        );

        expect(state.isGameOver, true);
      });

      test('条件未達成ならゲーム継続', () {
        final state = GameState.initial(testStations).copyWith(
          player: const Player(
            visitedStations: [0, 1],
            justicePoints: 50,
            ojisanDefeated: 5,
            turnCount: 10,
          ),
        );

        expect(state.isGameOver, false);
      });
    });

    group('isWon', () {
      test('全条件達成で勝利', () {
        final state = GameState.initial(testStations).copyWith(
          player: const Player(
            visitedStations: [0, 1, 2],
            justicePoints: 150,
            ojisanDefeated: 15,
          ),
        );

        expect(state.isWon, true);
      });

      test('駅訪問が不足なら敗北', () {
        final state = GameState.initial(testStations).copyWith(
          player: const Player(
            visitedStations: [0, 1],
            justicePoints: 150,
            ojisanDefeated: 15,
          ),
        );

        expect(state.isWon, false);
      });

      test('ポイント不足なら敗北', () {
        final state = GameState.initial(testStations).copyWith(
          player: const Player(
            visitedStations: [0, 1, 2],
            justicePoints: 100,
            ojisanDefeated: 15,
          ),
        );

        expect(state.isWon, false);
      });

      test('撃退数不足なら敗北', () {
        final state = GameState.initial(testStations).copyWith(
          player: const Player(
            visitedStations: [0, 1, 2],
            justicePoints: 150,
            ojisanDefeated: 10,
          ),
        );

        expect(state.isWon, false);
      });
    });

    group('nextStationId', () {
      test('サイコロの目で次の駅IDを計算できる', () {
        final state = GameState.initial(testStations).copyWith(
          player: const Player(currentStationId: 0),
          currentDiceValue: 2,
        );

        expect(state.currentDiceValue, 2);
        expect(state.player.currentStationId, 0);
      });

      test('最終駅を超える場合の計算', () {
        final state = GameState.initial(testStations).copyWith(
          player: const Player(currentStationId: 1),
          currentDiceValue: 6,
        );

        expect(state.currentDiceValue, 6);
        expect(state.player.currentStationId, 1);
      });

      test('サイコロ未振りならnull', () {
        final state = GameState.initial(testStations);

        expect(state.currentDiceValue, null);
      });
    });
  });
}
