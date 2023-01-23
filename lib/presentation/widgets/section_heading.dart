import 'package:flutter/material.dart';
import 'package:lit_code/constants/constants.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      title,
      style: theme.textTheme.headline4!.copyWith(
        fontWeight: FontWeight.w700,
        color: darkPrimaryColor,
      ),
    );
  }
}
