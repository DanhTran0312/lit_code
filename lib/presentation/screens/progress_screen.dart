import 'package:flutter/material.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: PersistedBottomNavBar(),
      body: Center(
        child: Text('Progress Screen'),
      ),
    );
  }
}
