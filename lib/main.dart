/// おじさんバウンスゲーム
library;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ojisan_bounce/screens/title_screen.dart';
import 'package:ojisan_bounce/utils/constants.dart';

void main() {
  runApp(const ProviderScope(child: OjisanBounceApp()));
}

/// アプリケーションルート
class OjisanBounceApp extends StatelessWidget {
  const OjisanBounceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'おじさんバウンス',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
        fontFamily: 'NotoSansJP',
      ),
      home: const TitleScreen(),
    );
  }
}
