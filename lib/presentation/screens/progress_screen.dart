import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Progress Screen',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
