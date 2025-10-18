import 'package:flutter_test/flutter_test.dart';
import 'package:ojisan_bounce/models/difficulty.dart';

void main() {
  group('DifficultySettings', () {
    test('Easy設定が正しい値を持つ', () {
      final settings = DifficultySettings.easy();

      expect(settings.level, DifficultyLevel.easy);
      expect(settings.perfectThreshold, 0.30);
      expect(settings.greatThreshold, 0.60);
      expect(settings.goodThreshold, 1.00);
      expect(settings.ojisanSpawnRate, 0.5);
      expect(settings.maxTurns, 25);
      expect(settings.targetJusticePoints, 80);
      expect(settings.minOjisanDefeated, 8);
      expect(settings.optimalTimingBase, 2500);
    });

    test('Normal設定が正しい値を持つ', () {
      final settings = DifficultySettings.normal();

      expect(settings.level, DifficultyLevel.normal);
      expect(settings.perfectThreshold, 0.15);
      expect(settings.greatThreshold, 0.30);
      expect(settings.goodThreshold, 0.50);
      expect(settings.ojisanSpawnRate, 0.7);
      expect(settings.maxTurns, 30);
      expect(settings.targetJusticePoints, 150);
      expect(settings.minOjisanDefeated, 15);
      expect(settings.optimalTimingBase, 2000);
    });

    test('Hard設定が正しい値を持つ', () {
      final settings = DifficultySettings.hard();

      expect(settings.level, DifficultyLevel.hard);
      expect(settings.perfectThreshold, 0.05);
      expect(settings.greatThreshold, 0.10);
      expect(settings.goodThreshold, 0.20);
      expect(settings.ojisanSpawnRate, 0.8);
      expect(settings.maxTurns, 35);
      expect(settings.targetJusticePoints, 200);
      expect(settings.minOjisanDefeated, 20);
      expect(settings.optimalTimingBase, 1500);
    });

    test('fromLevelで正しい設定を取得できる', () {
      expect(
        DifficultySettings.fromLevel(DifficultyLevel.easy).level,
        DifficultyLevel.easy,
      );
      expect(
        DifficultySettings.fromLevel(DifficultyLevel.normal).level,
        DifficultyLevel.normal,
      );
      expect(
        DifficultySettings.fromLevel(DifficultyLevel.hard).level,
        DifficultyLevel.hard,
      );
    });
  });

  group('DifficultyLevelExtension', () {
    test('displayNameが正しい', () {
      expect(DifficultyLevel.easy.displayName, 'かんたん');
      expect(DifficultyLevel.normal.displayName, 'ふつう');
      expect(DifficultyLevel.hard.displayName, 'むずかしい');
    });

    test('descriptionが正しい', () {
      expect(DifficultyLevel.easy.description, '初心者向け - タイミングに余裕があります');
      expect(DifficultyLevel.normal.description, '標準 - ほどよい難しさです');
      expect(DifficultyLevel.hard.description, '上級者向け - タイミングがシビアです');
    });

    test('emojiが正しい', () {
      expect(DifficultyLevel.easy.emoji, '😊');
      expect(DifficultyLevel.normal.emoji, '😐');
      expect(DifficultyLevel.hard.emoji, '😤');
    });
  });
}
