import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:lit_code/business_logic/cubits/cubit/confetti_cubit.dart';

class ConfettiBuilder extends StatelessWidget {
  const ConfettiBuilder({
    super.key,
    required this.confettiCubit,
  });

  final ConfettiCubit confettiCubit;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          child: ConfettiWidget(
            confettiController: confettiCubit.confettiController,
            blastDirectionality: BlastDirectionality.explosive,
            minBlastForce: 8,
            maxBlastForce: 25,
            emissionFrequency: 0.07,
            minimumSize: const Size(7, 7),
            maximumSize: const Size(12, 12),
            numberOfParticles: 15,
            gravity: 0.1,
          ),
        ),
      ],
    );
  }
}
