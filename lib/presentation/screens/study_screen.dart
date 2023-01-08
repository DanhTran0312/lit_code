import 'package:flutter/material.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/presentation/widgets/difficulty_chip.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class StudyScreen extends StatelessWidget {
  const StudyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const PersistedBottomNavBar(),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DifficultyChip(difficulty: Difficulty.easy),
              DifficultyChip(difficulty: Difficulty.medium),
              DifficultyChip(difficulty: Difficulty.hard),
            ],
          ),
        ),
      ),
    );
  }
}
