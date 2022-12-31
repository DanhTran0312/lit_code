import 'package:flutter/material.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: PersistedBottomNavBar(),
      body: Center(
        child: Text('Setting Screen'),
      ),
    );
  }
}
