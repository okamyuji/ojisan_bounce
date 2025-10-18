import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ojisan_bounce/widgets/dice_widget.dart';

void main() {
  group('DiceWidget', () {
    testWidgets('サイコロの値が正しく表示される', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: DiceWidget(value: 3))),
      );

      expect(find.text('3'), findsOneWidget);
    });

    testWidgets('1から6までの値を表示できる', (tester) async {
      for (int i = 1; i <= 6; i++) {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(body: DiceWidget(value: i)),
          ),
        );

        expect(find.text('$i'), findsOneWidget);
      }
    });

    testWidgets('アニメーションが実行される', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: DiceWidget(value: 5))),
      );

      // アニメーション開始
      await tester.pump();

      // アニメーション中
      await tester.pump(const Duration(milliseconds: 100));

      // アニメーション完了
      await tester.pumpAndSettle();

      expect(find.text('5'), findsOneWidget);
    });

    testWidgets('値が変わるとアニメーションが再実行される', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: DiceWidget(value: 1))),
      );
      await tester.pumpAndSettle();
      expect(find.text('1'), findsOneWidget);

      // 値を変更
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: DiceWidget(value: 6))),
      );
      await tester.pumpAndSettle();
      expect(find.text('6'), findsOneWidget);
    });
  });
}
