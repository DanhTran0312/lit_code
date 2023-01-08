import 'package:flutter/material.dart';

class CategorizedQuestionListCard extends StatelessWidget {
  const CategorizedQuestionListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          const Text('CategorizedQuestionListCard'),
        ],
      ),
    );
  }
}
