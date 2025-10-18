/// おじさんウィジェット
library;

import 'package:flutter/material.dart';
import 'package:ojisan_bounce/models/ojisan.dart';
import 'package:ojisan_bounce/utils/constants.dart';

/// おじさんウィジェット
class OjisanWidget extends StatefulWidget {
  final Ojisan ojisan;
  final bool isAppearing;

  const OjisanWidget({
    super.key,
    required this.ojisan,
    this.isAppearing = false,
  });

  @override
  State<OjisanWidget> createState() => _OjisanWidgetState();
}

class _OjisanWidgetState extends State<OjisanWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: AnimationDurations.ojisanAppear),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 0.3,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));

    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    if (widget.isAppearing) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(OjisanWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isAppearing && !oldWidget.isAppearing) {
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          opacity: _opacityAnimation.value,
          child: Transform.scale(
            scale: _scaleAnimation.value,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.evilnessColors[widget.ojisan.evilness - 1]
                    .withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.evilnessColors[widget.ojisan.evilness - 1],
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // おじさん絵文字
                  Text(
                    widget.ojisan.emoji,
                    style: const TextStyle(fontSize: 40),
                  ),
                  const SizedBox(width: 12),
                  // 情報カラム
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // おじさん名前
                      Text(
                        widget.ojisan.name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 2),
                      // 悪辣度表示
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '悪辣度: ',
                            style: TextStyle(
                              fontSize: 10,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          ...List.generate(
                            widget.ojisan.evilness,
                            (index) => Icon(
                              Icons.star,
                              size: 12,
                              color: AppColors
                                  .evilnessColors[widget.ojisan.evilness - 1],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      // 基本ポイント
                      Text(
                        'ポイント: ${widget.ojisan.basePoints}',
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
