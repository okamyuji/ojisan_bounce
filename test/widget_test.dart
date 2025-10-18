/// ウィジェットテスト
library;

import 'package:flutter_test/flutter_test.dart';
import 'package:ojisan_bounce/main.dart';

void main() {
  testWidgets('アプリが起動する', (WidgetTester tester) async {
    // アプリをビルド
    await tester.pumpWidget(const OjisanBounceApp());

    // タイトルが表示されることを確認
    expect(find.text('おじさんバウンス'), findsOneWidget);
  });
}
