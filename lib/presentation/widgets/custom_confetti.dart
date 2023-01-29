import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class CustomConfetti extends StatelessWidget {
  const CustomConfetti({
    super.key,
    required this.blastDirection,
    required this.confettiController,
  });

  final double blastDirection;
  final ConfettiController confettiController;

  @override
  Widget build(BuildContext context) {
    return ConfettiWidget(
      key: key,
      confettiController: confettiController,
      blastDirection: blastDirection,
      minBlastForce: 400,
      maxBlastForce: 420,
      maximumSize: const Size(18, 18),
      minimumSize: const Size(8, 8),
      emissionFrequency: 0.03,
      numberOfParticles: 12,
      gravity: 0.3,
    );
  }
}
