/// メインゲーム画面
library;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ojisan_bounce/models/difficulty.dart';
import 'package:ojisan_bounce/models/game_state.dart';
import 'package:ojisan_bounce/models/ojisan.dart';
import 'package:ojisan_bounce/providers/game_provider.dart';
import 'package:ojisan_bounce/screens/result_screen.dart';
import 'package:ojisan_bounce/utils/constants.dart';
import 'package:ojisan_bounce/utils/game_logic.dart';
import 'package:ojisan_bounce/widgets/action_button.dart';
import 'package:ojisan_bounce/widgets/dice_widget.dart';
import 'package:ojisan_bounce/widgets/ojisan_widget.dart';
import 'package:ojisan_bounce/widgets/station_map.dart';
import 'package:ojisan_bounce/widgets/timing_indicator.dart';

/// メインゲーム画面
class GameScreen extends ConsumerStatefulWidget {
  final DifficultyLevel difficulty;

  const GameScreen({super.key, this.difficulty = DifficultyLevel.normal});

  @override
  ConsumerState<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends ConsumerState<GameScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(gameProvider.notifier).setDifficulty(widget.difficulty);
    });
  }

  @override
  Widget build(BuildContext context) {
    final gameState = ref.watch(gameProvider);

    // ゲームオーバー時の遷移
    if (gameState.phase == GamePhase.gameOver) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const ResultScreen()),
        );
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('おじさんバウンス'),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // ステータスバー
          _buildStatusBar(gameState),

          // 路線図
          Container(
            color: AppColors.background,
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
            height: MediaQuery.of(context).size.height * 0.30,
            child: StationMap(
              stations: gameState.stations,
              currentStationId: gameState.player.currentStationId,
            ),
          ),

          // ゲームエリア
          Expanded(
            child: Container(
              color: Colors.white,
              child: _buildGameArea(context, ref, gameState),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusBar(GameState gameState) {
    return Container(
      color: AppColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatusItem(
            '🏛️',
            '駅',
            '${gameState.player.visitedStations.toSet().length}/${gameState.stations.length}',
          ),
          _buildStatusItem(
            '⚖️',
            'ポイント',
            '${gameState.player.justicePoints}/${gameState.difficulty.targetJusticePoints}',
          ),
          _buildStatusItem(
            '👊',
            '撃退',
            '${gameState.player.ojisanDefeated}/${gameState.difficulty.minOjisanDefeated}',
          ),
          _buildStatusItem(
            '🎲',
            'ターン',
            '${gameState.player.turnCount}/${gameState.difficulty.maxTurns}',
          ),
        ],
      ),
    );
  }

  Widget _buildStatusItem(String emoji, String label, String value) {
    return Column(
      children: [
        Text(emoji, style: const TextStyle(fontSize: 20)),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            shadows: [
              Shadow(
                color: Colors.black26,
                offset: Offset(0, 1),
                blurRadius: 2,
              ),
            ],
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(
                color: Colors.black38,
                offset: Offset(0, 1),
                blurRadius: 3,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildGameArea(
    BuildContext context,
    WidgetRef ref,
    GameState gameState,
  ) {
    switch (gameState.phase) {
      case GamePhase.idle:
        return _buildIdlePhase(ref, gameState);

      case GamePhase.rollingDice:
        return _buildRollingDicePhase(gameState);

      case GamePhase.moving:
        return _buildMovingPhase(gameState);

      case GamePhase.encounter:
        return _buildEncounterPhase(gameState);

      case GamePhase.action:
        return _buildActionPhase(ref, gameState);

      case GamePhase.result:
        return _buildResultPhase(gameState);

      case GamePhase.gameOver:
        return _buildGameOverPhase();
    }
  }

  Widget _buildIdlePhase(WidgetRef ref, GameState gameState) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text('🎲', style: TextStyle(fontSize: 60)),
          const SizedBox(height: 16),
          const Text(
            'サイコロを振って移動しよう！',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              ref.read(gameProvider.notifier).rollDice();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 8,
            ),
            child: const Text(
              'サイコロを振る',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '現在地: ${gameState.currentStation.name}',
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRollingDicePhase(GameState gameState) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          DiceWidget(value: gameState.currentDiceValue, isRolling: true),
          const SizedBox(height: 24),
          const Text(
            'サイコロを振っています...',
            style: TextStyle(fontSize: 18, color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }

  Widget _buildMovingPhase(GameState gameState) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Text('🧑💨', style: TextStyle(fontSize: 80)),
          const SizedBox(height: 24),
          Text(
            '${gameState.currentDiceValue}マス移動中...',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEncounterPhase(GameState gameState) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text('⚠️', style: TextStyle(fontSize: 48)),
          const SizedBox(height: 12),
          const Text(
            '悪質おじさん出現！',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.danger,
            ),
          ),
          if (gameState.currentEncounter != null) ...[
            const SizedBox(height: 16),
            OjisanWidget(
              ojisan: gameState.currentEncounter!.ojisan,
              isAppearing: true,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildActionPhase(WidgetRef ref, GameState gameState) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (gameState.currentEncounter != null) ...[
            OjisanWidget(ojisan: gameState.currentEncounter!.ojisan),
            const SizedBox(height: 16),
          ],
          const Text(
            'タイミングよくタップ！',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 12),
          if (gameState.currentEncounter?.actionStartTime != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TimingIndicatorWidget(
                startTime: gameState.currentEncounter!.actionStartTime!,
                optimalTimingMs: GameLogic.calculateOptimalTiming(
                  gameState.difficulty,
                  gameState.currentEncounter!.ojisan.evilness,
                ),
              ),
            ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.accent.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: AppColors.accent.withValues(alpha: 0.3),
                width: 2,
              ),
            ),
            child: Column(
              children: [
                if (gameState.currentEncounter != null)
                  Text(
                    '🎯 ベストタイミング: ${(GameLogic.calculateOptimalTiming(gameState.difficulty, gameState.currentEncounter!.ojisan.evilness) / 1000).toStringAsFixed(1)}秒後',
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                const SizedBox(height: 4),
                Text(
                  'Perfect: ±${(gameState.difficulty.perfectThreshold * 1000).toStringAsFixed(0)}ms / Great: ±${(gameState.difficulty.greatThreshold * 1000).toStringAsFixed(0)}ms / Good: ±${(gameState.difficulty.goodThreshold * 1000).toStringAsFixed(0)}ms',
                  style: const TextStyle(
                    fontSize: 11,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          ActionButton(
            onTap: () {
              ref.read(gameProvider.notifier).performAction(DateTime.now());
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildResultPhase(GameState gameState) {
    final encounter = gameState.currentEncounter;
    if (encounter == null || encounter.result == null) {
      return const Center(child: CircularProgressIndicator());
    }

    final result = encounter.result!;
    final points = encounter.pointsEarned ?? 0;
    final ojisan = encounter.ojisan;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 判定結果絵文字
          Text(_getResultEmoji(result), style: const TextStyle(fontSize: 64)),
          const SizedBox(height: 12),
          // 判定テキスト
          Text(
            result.displayName,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: _getResultColor(result),
            ),
          ),
          const SizedBox(height: 16),
          // おじさん情報
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: AppColors.evilnessColors[ojisan.evilness - 1],
                width: 2,
              ),
            ),
            child: Column(
              children: [
                Text(ojisan.emoji, style: const TextStyle(fontSize: 40)),
                const SizedBox(height: 6),
                Text(
                  points > 0 ? '${ojisan.name}を撃退！' : '${ojisan.name}に逃げられた...',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: points > 0
                        ? AppColors.success
                        : AppColors.textSecondary,
                  ),
                ),
                if (encounter.elapsedSeconds != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    'タイミング: ${encounter.elapsedSeconds!.toStringAsFixed(2)}秒',
                    style: const TextStyle(
                      fontSize: 11,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: 16),
          // ポイント表示
          if (points > 0) ...[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.primary,
                    AppColors.primary.withValues(alpha: 0.8),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary.withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Text(
                '⚖️ +$points ポイント獲得！',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ] else ...[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                '💦 ポイント獲得なし',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildGameOverPhase() {
    // 遷移はbuildメソッドで既に処理済み
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 16),
          Text(
            '結果画面へ移動中...',
            style: TextStyle(fontSize: 16, color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }

  String _getResultEmoji(TimingResult result) {
    switch (result) {
      case TimingResult.perfect:
        return '🌟';
      case TimingResult.great:
        return '✨';
      case TimingResult.good:
        return '👍';
      case TimingResult.miss:
        return '💦';
    }
  }

  Color _getResultColor(TimingResult result) {
    switch (result) {
      case TimingResult.perfect:
        return AppColors.accent;
      case TimingResult.great:
        return AppColors.primary;
      case TimingResult.good:
        return AppColors.success;
      case TimingResult.miss:
        return AppColors.textSecondary;
    }
  }
}
