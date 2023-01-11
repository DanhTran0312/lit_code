import 'package:flutter/material.dart';
import 'package:lit_code/theme/theme_utils.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.size,
    required this.child,
    this.padding,
    required this.lightBackgroundImage,
    required this.darkBackgroundImage,
    required this.theme,
  });

  final Size size;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final String lightBackgroundImage;
  final String darkBackgroundImage;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      padding: padding,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ThemeUtils.getBackgroundUrlFromTheme(
              theme,
              lightBackgroundImage,
              darkBackgroundImage,
            ),
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
