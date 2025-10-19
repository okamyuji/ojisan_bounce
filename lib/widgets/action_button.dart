/// アクションボタンウィジェット
library;

import 'package:flutter/material.dart';
import 'package:ojisan_bounce/utils/constants.dart';

/// アクションボタンウィジェット
class ActionButton extends StatefulWidget {
  final VoidCallback onTap;
  final bool isActive;

  const ActionButton({super.key, required this.onTap, this.isActive = true});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(
      begin: 1.0,
      end: 1.1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isActive) {
      return Opacity(opacity: 0.5, child: _buildButton());
    }

    return AnimatedBuilder(
      animation: _pulseAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _pulseAnimation.value,
          child: _buildButton(),
        );
      },
    );
  }

  Widget _buildButton() {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: widget.isActive ? widget.onTap : null,
        customBorder: const CircleBorder(),
        splashColor: Colors.white.withValues(alpha: 0.3),
        highlightColor: Colors.white.withValues(alpha: 0.1),
        child: Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: widget.isActive
                  ? [AppColors.accent, AppColors.accent.withValues(alpha: 0.8)]
                  : [Colors.grey, Colors.grey.shade400],
            ),
            boxShadow: [
              BoxShadow(
                color: widget.isActive
                    ? AppColors.accent.withValues(alpha: 0.4)
                    : Colors.grey.withValues(alpha: 0.4),
                blurRadius: 20,
                spreadRadius: 2,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.touch_app, size: 52, color: Colors.white),
                SizedBox(height: 6),
                Text(
                  'TAP!',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
