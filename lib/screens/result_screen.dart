/// リザルト画面
library;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ojisan_bounce/models/difficulty.dart';
import 'package:ojisan_bounce/providers/game_provider.dart';
import 'package:ojisan_bounce/screens/game_screen.dart';
import 'package:ojisan_bounce/screens/title_screen.dart';
import 'package:ojisan_bounce/services/sound_service.dart';
import 'package:ojisan_bounce/utils/constants.dart';

/// リザルト画面
class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameState = ref.watch(gameProvider);
    final isWon = gameState.isGameWon;
    final player = gameState.player;

    // サウンド再生
    Future.microtask(() {
      final soundService = SoundService();
      if (isWon) {
        soundService.playWin();
      } else {
        soundService.playLose();
      }
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              isWon ? AppColors.success : AppColors.danger,
              isWon
                  ? AppColors.success.withValues(alpha: 0.7)
                  : AppColors.danger.withValues(alpha: 0.7),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 結果表示
                  Text(
                    isWon ? '🎉' : '😢',
                    style: const TextStyle(fontSize: 100),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    isWon ? 'ゲームクリア！' : 'ゲームオーバー',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withValues(alpha: 0.3),
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    isWon ? 'あなたは弱者の味方です！' : 'もう一度チャレンジしよう！',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white.withValues(alpha: 0.9),
                    ),
                  ),
                  const SizedBox(height: 48),

                  // スコア表示
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          'リザルト',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 24),
                        _buildScoreRow(
                          '訪問した駅',
                          '${player.visitedStations.toSet().length}',
                          '/ ${GameConfig.totalStations}',
                          player.visitedStations.toSet().length >=
                              GameConfig.totalStations,
                        ),
                        _buildScoreRow(
                          'ポイント',
                          '${player.justicePoints}',
                          '/ ${gameState.difficulty.targetJusticePoints}',
                          player.justicePoints >=
                              gameState.difficulty.targetJusticePoints,
                        ),
                        _buildScoreRow(
                          '撃退数',
                          '${player.ojisanDefeated}',
                          '/ ${gameState.difficulty.minOjisanDefeated}人',
                          player.ojisanDefeated >=
                              gameState.difficulty.minOjisanDefeated,
                        ),
                        _buildScoreRow(
                          'ターン数',
                          '${player.turnCount}',
                          '/ ${gameState.difficulty.maxTurns}',
                          false,
                        ),
                        const SizedBox(height: 8),
                        const Divider(),
                        const SizedBox(height: 8),
                        Text(
                          '難易度: ${gameState.difficulty.level.displayName}',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 48),

                  // ボタン
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          ref.read(gameProvider.notifier).resetGame();
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const TitleScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: isWon
                              ? AppColors.success
                              : AppColors.danger,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 8,
                        ),
                        child: const Text(
                          'タイトルに戻る',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {
                          ref.read(gameProvider.notifier).resetGame();
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const GameScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: isWon
                              ? AppColors.success
                              : AppColors.danger,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 8,
                        ),
                        child: const Text(
                          'もう一度',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildScoreRow(
    String label,
    String value,
    String target,
    bool isAchieved,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.textSecondary,
            ),
          ),
          Row(
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: isAchieved ? AppColors.success : AppColors.textPrimary,
                ),
              ),
              Text(
                ' $target',
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.textSecondary,
                ),
              ),
              if (isAchieved) ...[
                const SizedBox(width: 8),
                const Icon(
                  Icons.check_circle,
                  color: AppColors.success,
                  size: 24,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
