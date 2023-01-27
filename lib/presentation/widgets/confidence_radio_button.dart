import 'package:flutter/material.dart';
import 'package:lit_code/constants/enums.dart';
import 'package:lit_code/data/models/models.dart';

class ConfidenceRadioButton extends StatelessWidget {
  const ConfidenceRadioButton({
    super.key,
    required this.question,
    required this.onChanged,
    required this.confidence,
  });

  final Confidence confidence;
  final Question question;
  final void Function(Enum?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Radio<Confidence?>(
          value: confidence,
          groupValue: question.confidence,
          onChanged: onChanged,
        ),
        Text(
          confidence.label,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
