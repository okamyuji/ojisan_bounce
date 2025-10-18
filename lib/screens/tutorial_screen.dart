/// チュートリアル画面
library;

import 'package:flutter/material.dart';
import 'package:ojisan_bounce/models/difficulty.dart';
import 'package:ojisan_bounce/screens/game_screen.dart';
import 'package:ojisan_bounce/utils/constants.dart';

/// チュートリアル画面
class TutorialScreen extends StatefulWidget {
  final DifficultyLevel difficulty;

  const TutorialScreen({super.key, this.difficulty = DifficultyLevel.normal});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  int _currentStep = 0;

  final List<TutorialStep> _steps = [
    TutorialStep(
      emoji: '🎲',
      title: 'サイコロで駅を移動',
      description: 'サイコロを振って、出た目の数だけ駅を移動します。\n全ての駅を訪れることが目標の一つです。',
    ),
    TutorialStep(
      emoji: '😠',
      title: '悪質おじさんと遭遇',
      description: '駅で悪質おじさんに遭遇することがあります。\n悪辣度（★の数）が高いほど強敵です。',
    ),
    TutorialStep(
      emoji: '👊',
      title: 'タイミングよくタップ',
      description: 'おじさんが現れたら、最適なタイミングでタップ！\nタイミングが良いほど高得点です。',
    ),
    TutorialStep(
      emoji: '⚖️',
      title: 'ポイントを獲得',
      description: 'Perfect/Great/Goodでポイントを獲得。\n目標ポイントに到達しよう！',
    ),
    TutorialStep(
      emoji: '🏆',
      title: '勝利条件',
      description: '①全駅訪問\n②目標ポイント達成\n③規定数撃退\n\n全てクリアで勝利！',
    ),
  ];

  void _next() {
    if (_currentStep < _steps.length - 1) {
      setState(() {
        _currentStep++;
      });
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => GameScreen(difficulty: widget.difficulty),
        ),
      );
    }
  }

  void _skip() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => GameScreen(difficulty: widget.difficulty),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final step = _steps[_currentStep];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.primary, AppColors.secondary],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // スキップボタン
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'チュートリアル ${_currentStep + 1}/${_steps.length}',
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    TextButton(
                      onPressed: _skip,
                      child: const Text(
                        'スキップ',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // コンテンツ
              Padding(
                padding: const EdgeInsets.all(32),
                child: Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.2),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(step.emoji, style: const TextStyle(fontSize: 80)),
                      const SizedBox(height: 24),
                      Text(
                        step.title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        step.description,
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.textSecondary,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),

              const Spacer(),

              // インジケーター
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _steps.length,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: index == _currentStep ? 12 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: index == _currentStep
                          ? Colors.white
                          : Colors.white.withValues(alpha: 0.4),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // 次へボタン
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: ElevatedButton(
                  onPressed: _next,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 48,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 8,
                    minimumSize: const Size(double.infinity, 56),
                  ),
                  child: Text(
                    _currentStep < _steps.length - 1 ? '次へ' : 'ゲームスタート',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

class TutorialStep {
  final String emoji;
  final String title;
  final String description;

  TutorialStep({
    required this.emoji,
    required this.title,
    required this.description,
  });
}
