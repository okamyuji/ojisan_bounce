/// 路線図ウィジェット
library;

import 'package:flutter/material.dart';
import 'package:ojisan_bounce/models/station.dart';
import 'package:ojisan_bounce/utils/constants.dart';

/// 路線図ウィジェット
class StationMap extends StatelessWidget {
  final List<Station> stations;
  final int currentStationId;

  const StationMap({
    super.key,
    required this.stations,
    required this.currentStationId,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return CustomPaint(
          size: Size(constraints.maxWidth, constraints.maxHeight),
          painter: _StationMapPainter(
            stations: stations,
            currentStationId: currentStationId,
          ),
        );
      },
    );
  }
}

/// 路線図カスタムペインター
class _StationMapPainter extends CustomPainter {
  final List<Station> stations;
  final int currentStationId;

  _StationMapPainter({required this.stations, required this.currentStationId});

  @override
  void paint(Canvas canvas, Size size) {
    // 路線（線）を描画
    _drawRailwayLine(canvas, size);

    // 駅を描画
    for (final station in stations) {
      _drawStation(canvas, size, station);
    }

    // 現在位置を強調表示
    final currentStation = stations.firstWhere((s) => s.id == currentStationId);
    _drawCurrentPosition(canvas, size, currentStation);
  }

  void _drawRailwayLine(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.textSecondary.withValues(alpha: 0.3)
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;

    final path = Path();
    for (int i = 0; i < stations.length; i++) {
      final station = stations[i];
      final x = station.x * size.width;
      final y = station.y * size.height * 0.85;

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }

    canvas.drawPath(path, paint);
  }

  void _drawStation(Canvas canvas, Size size, Station station) {
    final x = station.x * size.width;
    final y = station.y * size.height * 0.85;

    // 駅の円
    final circlePaint = Paint()
      ..color = station.visited ? AppColors.primary : Colors.grey.shade300
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = station.visited ? AppColors.primary : Colors.grey.shade400
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(Offset(x, y), 16, circlePaint);
    canvas.drawCircle(Offset(x, y), 16, borderPaint);

    // 絵文字（円の上）
    final emojiPainter = TextPainter(
      text: TextSpan(text: station.emoji, style: const TextStyle(fontSize: 20)),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    emojiPainter.layout();
    emojiPainter.paint(canvas, Offset(x - emojiPainter.width / 2, y - 32));

    // 駅名テキスト（円の下、背景付き）
    final namePainter = TextPainter(
      text: TextSpan(
        text: station.name,
        style: const TextStyle(
          fontSize: 10,
          color: AppColors.textPrimary,
          fontWeight: FontWeight.bold,
        ),
      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    namePainter.layout();

    final textOffset = Offset(x - namePainter.width / 2, y + 20);
    final bgRect = Rect.fromLTWH(
      textOffset.dx - 3,
      textOffset.dy - 1,
      namePainter.width + 6,
      namePainter.height + 2,
    );
    final bgPaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.95)
      ..style = PaintingStyle.fill;
    canvas.drawRRect(
      RRect.fromRectAndRadius(bgRect, const Radius.circular(3)),
      bgPaint,
    );

    namePainter.paint(canvas, textOffset);
  }

  void _drawCurrentPosition(Canvas canvas, Size size, Station station) {
    final x = station.x * size.width;
    final y = station.y * size.height * 0.85;

    // パルスアニメーション用の円
    final pulsePaint = Paint()
      ..color = AppColors.accent.withValues(alpha: 0.3)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(x, y), 28, pulsePaint);

    // プレイヤーアイコン
    final textPainter = TextPainter(
      text: const TextSpan(text: '🧑', style: TextStyle(fontSize: 28)),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset(x - textPainter.width / 2, y - textPainter.height / 2),
    );
  }

  @override
  bool shouldRepaint(covariant _StationMapPainter oldDelegate) {
    return oldDelegate.currentStationId != currentStationId ||
        oldDelegate.stations != stations;
  }
}
