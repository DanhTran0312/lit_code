import 'package:flutter/material.dart';
import 'package:lit_code/data/models/models.dart';

class TextRadioButton extends StatelessWidget {
  const TextRadioButton({
    super.key,
    required this.question,
    required this.onChanged,
    required this.label,
    required this.value,
  });

  final Enum? value;
  final Question question;
  final String label;
  final void Function(Enum?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Radio<Enum?>(
          value: value,
          groupValue: question.confidence,
          onChanged: onChanged,
        ),
        Text(label, style: Theme.of(context).textTheme.subtitle2),
      ],
    );
  }
}
