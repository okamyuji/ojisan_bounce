/// サイコロウィジェット
library;

import 'package:flutter/material.dart';
import 'package:ojisan_bounce/utils/constants.dart';

/// サイコロウィジェット
class DiceWidget extends StatefulWidget {
  final int? value;
  final bool isRolling;

  const DiceWidget({super.key, this.value, this.isRolling = false});

  @override
  State<DiceWidget> createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: AnimationDurations.diceRoll),
      vsync: this,
    );

    _rotationAnimation = Tween<double>(
      begin: 0,
      end: 4 * 3.14159, // 2回転
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));
  }

  @override
  void didUpdateWidget(DiceWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isRolling && !oldWidget.isRolling) {
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
      animation: _rotationAnimation,
      builder: (context, child) {
        return Transform.rotate(
          angle: widget.isRolling ? _rotationAnimation.value : 0,
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Center(
              child: widget.value != null
                  ? _buildDiceFace(widget.value!)
                  : const Icon(
                      Icons.help_outline,
                      size: 40,
                      color: AppColors.textSecondary,
                    ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildDiceFace(int value) {
    return Text(
      value.toString(),
      style: const TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      ),
    );
  }
}
