import 'package:flutter/material.dart';

class CustomDateChip extends StatelessWidget {
  const CustomDateChip({
    super.key,
    required this.date,
  });

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final day = date.day;
    final month = date.month;
    final year = date.year;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Chip(label: Text('$month')),
        const Text(' / '),
        Chip(label: Text('$day')),
        const Text(' / '),
        Chip(label: Text('$year')),
      ],
    );
  }
}
