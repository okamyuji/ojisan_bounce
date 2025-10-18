import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ojisan_bounce/models/ojisan.dart';
import 'package:ojisan_bounce/widgets/ojisan_widget.dart';

void main() {
  group('OjisanWidget', () {
    const testOjisan = Ojisan(
      id: 'test',
      name: 'テストおじさん',
      evilness: 3,
      emoji: '🧪',
      basePoints: 30,
    );

    testWidgets('おじさんの絵文字が表示される', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: OjisanWidget(ojisan: testOjisan)),
        ),
      );

      expect(find.text('🧪'), findsOneWidget);
    });

    testWidgets('おじさんの名前が表示される', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: OjisanWidget(ojisan: testOjisan)),
        ),
      );

      expect(find.text('テストおじさん'), findsOneWidget);
    });

    testWidgets('悪辣度が星アイコンで表示される', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: OjisanWidget(ojisan: testOjisan)),
        ),
      );

      // 悪辣度3なので星アイコン3つ
      expect(find.byIcon(Icons.star), findsNWidgets(3));
    });

    testWidgets('基本ポイントが表示される', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: OjisanWidget(ojisan: testOjisan)),
        ),
      );

      expect(find.textContaining('30'), findsOneWidget);
    });

    testWidgets('アニメーションが実行される', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: OjisanWidget(ojisan: testOjisan)),
        ),
      );

      // アニメーション開始
      await tester.pump();

      // アニメーション中
      await tester.pump(const Duration(milliseconds: 100));

      // アニメーション完了
      await tester.pumpAndSettle();

      expect(find.text('🧪'), findsOneWidget);
    });

    testWidgets('異なる悪辣度のおじさんを表示できる', (tester) async {
      for (int evilness = 1; evilness <= 5; evilness++) {
        final ojisan = Ojisan(
          id: 'test_$evilness',
          name: 'おじさん$evilness',
          evilness: evilness,
          emoji: '👴',
          basePoints: evilness * 10,
        );

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(body: OjisanWidget(ojisan: ojisan)),
          ),
        );
        await tester.pumpAndSettle();

        expect(find.text('👴'), findsOneWidget);
        expect(find.byIcon(Icons.star), findsNWidgets(evilness));
      }
    });
  });
}
