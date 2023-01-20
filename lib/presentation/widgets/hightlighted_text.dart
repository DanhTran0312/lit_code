import 'package:flutter/material.dart';

class HighlightedText extends Text {
  const HighlightedText(
    super.data, {
    super.key,
    super.style,
    super.textAlign,
    super.textDirection,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.locale,
    super.strutStyle,
    super.textWidthBasis,
    super.textHeightBehavior,
    Color? highlightColor,
  }) : _highlightColor = highlightColor;

  final Color? _highlightColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RichText(
      text: TextSpan(
        text: data,
        style: style?.copyWith(
          color: _highlightColor ?? theme.primaryColor,
        ),
      ),
    );
  }
}
