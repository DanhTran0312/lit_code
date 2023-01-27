import 'package:flutter/material.dart';

class WelcomText extends StatelessWidget {
  const WelcomText({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome to 🔥Code!',
      style: theme.textTheme.displayLarge,
      textAlign: TextAlign.center,
    );
  }
}
