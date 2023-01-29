import 'package:flutter/material.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/theme/theme.dart';

class CustomElevatedButtonWithImage extends StatelessWidget {
  const CustomElevatedButtonWithImage({
    super.key,
    this.onPressed,
    required this.text,
    required this.image,
  });

  final Widget image;
  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              elevation: MaterialStateProperty.all(0),
              side: MaterialStateProperty.all(
                const BorderSide(
                  color: inputBorderColor,
                  width: inputBorderWidth,
                ),
              ),
            ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 32,
              height: 32,
              child: image,
            ),
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: elevatedButtonTextTheme.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
