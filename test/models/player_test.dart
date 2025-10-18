import 'package:flutter_test/flutter_test.dart';
import 'package:ojisan_bounce/models/player.dart';

void main() {
  group('Player', () {
    test('初期状態が正しい', () {
      const player = Player();

      expect(player.currentStationId, 0);
      expect(player.justicePoints, 0);
      expect(player.ojisanDefeated, 0);
      expect(player.turnCount, 0);
      expect(player.visitedStations, [0]);
    });

    test('copyWithで値を更新できる', () {
      const player = Player();
      final updated = player.copyWith(
        currentStationId: 5,
        justicePoints: 100,
        ojisanDefeated: 3,
        turnCount: 10,
      );

      expect(updated.currentStationId, 5);
      expect(updated.justicePoints, 100);
      expect(updated.ojisanDefeated, 3);
      expect(updated.turnCount, 10);
    });

    test('visitedStationsを更新できる', () {
      const player = Player();
      final updated = player.copyWith(visitedStations: [0, 1, 2]);

      expect(updated.visitedStations, [0, 1, 2]);
    });
  });

  group('PlayerExtension', () {
    test('hasVisitedAllStationsが正しく動作する', () {
      const player1 = Player(visitedStations: [0, 1, 2, 3, 4]);
      expect(player1.hasVisitedAllStations(5), true);

      const player2 = Player(visitedStations: [0, 1, 2]);
      expect(player2.hasVisitedAllStations(5), false);

      const player3 = Player(visitedStations: [0, 1, 2, 3, 4, 5, 6]);
      expect(player3.hasVisitedAllStations(5), true);
    });

    test('visitedStationsに駅が含まれているか確認できる', () {
      const player = Player(visitedStations: [0, 2, 4]);

      expect(player.visitedStations.contains(0), true);
      expect(player.visitedStations.contains(1), false);
      expect(player.visitedStations.contains(2), true);
      expect(player.visitedStations.contains(3), false);
      expect(player.visitedStations.contains(4), true);
    });

    test('デフォルトでは駅0が訪問済み', () {
      const player = Player();

      expect(player.visitedStations.contains(0), true);
      expect(player.visitedStations.contains(5), false);
    });
  });
}
