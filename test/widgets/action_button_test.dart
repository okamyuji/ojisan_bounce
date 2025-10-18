import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ojisan_bounce/widgets/action_button.dart';

void main() {
  group('ActionButton', () {
    testWidgets('TAP!テキストが表示される', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: ActionButton(onTap: () {})),
        ),
      );

      expect(find.text('TAP!'), findsOneWidget);
    });

    testWidgets('タップイベントが発火する', (tester) async {
      bool tapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ActionButton(
              onTap: () {
                tapped = true;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text('TAP!'));
      await tester.pump();

      expect(tapped, true);
    });

    testWidgets('アニメーションが実行される', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: ActionButton(onTap: () {})),
        ),
      );

      // アニメーション開始
      await tester.pump();

      // アニメーション中
      await tester.pump(const Duration(milliseconds: 100));

      // アニメーション進行中
      await tester.pump(const Duration(milliseconds: 500));

      expect(find.text('TAP!'), findsOneWidget);
    });

    testWidgets('複数回タップできる', (tester) async {
      int tapCount = 0;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ActionButton(
              onTap: () {
                tapCount++;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text('TAP!'));
      await tester.pump();
      expect(tapCount, 1);

      await tester.tap(find.text('TAP!'));
      await tester.pump();
      expect(tapCount, 2);

      await tester.tap(find.text('TAP!'));
      await tester.pump();
      expect(tapCount, 3);
    });
  });
}
