import 'package:flutter/material.dart';
import 'package:lit_code/theme/theme.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: elevatedButtonTextTheme,
        ),
      ),
    );
  }
}
