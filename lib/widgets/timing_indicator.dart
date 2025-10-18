/// タイミングインジケーターウィジェット
library;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ojisan_bounce/utils/constants.dart';

/// タイミングインジケーター
class TimingIndicatorWidget extends StatefulWidget {
  final DateTime startTime;
  final int optimalTimingMs;

  const TimingIndicatorWidget({
    super.key,
    required this.startTime,
    required this.optimalTimingMs,
  });

  @override
  State<TimingIndicatorWidget> createState() => _TimingIndicatorState();
}

class _TimingIndicatorState extends State<TimingIndicatorWidget> {
  Timer? _timer;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 16), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }

      final elapsed = DateTime.now()
          .difference(widget.startTime)
          .inMilliseconds;
      final progress = (elapsed / widget.optimalTimingMs).clamp(0.0, 1.5);

      setState(() {
        _progress = progress;
      });

      if (progress >= 1.5) {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // プログレスバー
        Container(
          height: 8,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(4),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: _progress.clamp(0.0, 1.0),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    _getProgressColor(),
                    _getProgressColor().withValues(alpha: 0.7),
                  ],
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        // 最適タイミングマーカー
        Row(
          children: [
            const Spacer(),
            Container(
              width: 4,
              height: 16,
              decoration: BoxDecoration(
                color: AppColors.accent,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }

  Color _getProgressColor() {
    if (_progress < 0.8) {
      return Colors.orange;
    } else if (_progress < 0.95) {
      return AppColors.success;
    } else if (_progress < 1.05) {
      return AppColors.accent;
    } else if (_progress < 1.2) {
      return AppColors.success;
    } else {
      return Colors.orange;
    }
  }
}
